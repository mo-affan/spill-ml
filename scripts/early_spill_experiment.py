"""Experiment: let the in-compiler tree skip work for live ranges it is confident will spill.

Needs llc built with patches/spill_dump.patch + patches/spill_predict.patch, clang, and the
PolyBench/C 4.2.1 sources for the run-time part.

Run:  LLC=/path/to/llc POLYBENCH_DIR=/path/to/PolyBenchC-4.2.1 python scripts/early_spill_experiment.py
Writes results/early_spill_experiment.txt and results/early_spill_per_program.csv.

Settings compared (same llc binary, chosen with the SPILL_EARLY environment variable):
  stock      SPILL_EARLY unset: normal Greedy allocation
  early@p    on a live range's first round, if no register could be assigned and the tree's
             spill probability is >= p, spill it at once instead of trying eviction and splitting

Measured per IR file in data/ir/ (all three projects):
  - spill and reload instructions in the final assembly (llc's "Spill"/"Reload" comments)
  - size of the .text section of the object file
  - wall time of the Greedy Register Allocator pass and of the whole llc run (median of REPEATS)
  - machine-code verifier (-verify-machineinstrs) passes
Measured for PolyBench (MEDIUM dataset): program run time, median of RUNS, and identical output
(MINI dataset, arrays dumped) to stock.
"""
import os, re, glob, subprocess, tempfile, statistics, time, shutil
import numpy as np, pandas as pd

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
LLC = os.environ.get("LLC", os.path.expanduser("~/llvm-project/build/bin/llc"))
CLANG = os.environ.get("CLANG", "clang")
PB = os.environ.get("POLYBENCH_DIR", "")
IR = os.path.join(ROOT, "data", "ir")
SETTINGS = [("stock", None), ("early@0.98", "0.98"), ("early@0.95", "0.95"),
            ("early@0.90", "0.90"), ("early@0.80", "0.80")]
REPEATS = int(os.environ.get("REPEATS", "3"))
RUNS = int(os.environ.get("RUNS", "5"))
TMP = tempfile.mkdtemp(prefix="early_spill_")

def env_for(p, predict=False):
    e = dict(os.environ)
    for k in ("SPILL_DUMP", "SPILL_PREDICT", "SPILL_EARLY"):
        e.pop(k, None)
    if p is not None:
        e["SPILL_EARLY"] = p
    if predict:
        e["SPILL_PREDICT"] = "1"
    return e

def llc(args, p, predict=False):
    r = subprocess.run([LLC, "-O2", "-regalloc=greedy"] + args, capture_output=True, text=True,
                       env=env_for(p, predict))
    if r.returncode != 0:
        raise RuntimeError(f"llc failed: {' '.join(args)}\n{r.stderr[-2000:]}")
    return r

def greedy_wall(stderr):
    for line in stderr.splitlines():
        if line.rstrip().endswith("Greedy Register Allocator"):
            nums = re.findall(r"(\d+\.\d+) \(", line)
            if nums:
                return float(nums[-1])
    return float("nan")

def text_size(obj):
    out = subprocess.run(["size", "-A", obj], capture_output=True, text=True).stdout
    return sum(int(l.split()[1]) for l in out.splitlines() if l.startswith(".text"))

def count_spills(asm):
    sp = rl = 0
    for line in open(asm):
        if "#" not in line:
            continue
        c = line.split("#", 1)[1]
        if "Spill" in c:
            sp += 1
        elif "Reload" in c:
            rl += 1
    return sp, rl

# ---------- compile-side measurements ----------
rows = []
files = sorted(glob.glob(IR + "/*.ll"))
for ir in files:
    prog = os.path.basename(ir)[:-3]
    for name, p in SETTINGS:
        asm, obj = os.path.join(TMP, prog + ".s"), os.path.join(TMP, prog + ".o")
        r = llc([ir, "-o", asm], p, predict=True)
        early = sum(1 for l in r.stderr.splitlines() if l.startswith("SPILLDATA,E,"))
        sp, rl = count_spills(asm)
        llc([ir, "-filetype=obj", "-verify-machineinstrs", "-o", obj], p)   # raises if the verifier fails
        ts = text_size(obj)
        ra, tot = [], []
        for _ in range(REPEATS):
            t0 = time.perf_counter()
            r = llc([ir, "-filetype=obj", "-time-passes", "-o", obj], p)
            tot.append(time.perf_counter() - t0)
            ra.append(greedy_wall(r.stderr))
        rows.append(dict(program=prog, setting=name, early_spills=early, spills=sp, reloads=rl, text_bytes=ts,
                         regalloc_s=statistics.median(ra), llc_s=statistics.median(tot)))
    print(f"compiled {prog}", flush=True)

d = pd.DataFrame(rows)
d["project"] = np.where(d.program.str.startswith("zlib_"), "zlib",
               np.where(d.program.str.startswith("lua_"), "lua", "polybench"))
d.to_csv(os.path.join(ROOT, "results", "early_spill_per_program.csv"), index=False)

out = open(os.path.join(ROOT, "results", "early_spill_experiment.txt"), "w")
def say(x=""):
    print(x); out.write(x + "\n"); out.flush()

say(f"llc: {LLC}")
say(f"IR files: {len(files)}; every setting passed -verify-machineinstrs on every file\n")
say("1) Totals over all IR files (change against stock in brackets)")
say(f"   {'setting':11s} {'early':>5s} {'spills':>7s} {'reloads':>14s} {'.text bytes':>18s} {'regalloc s':>18s} {'llc s':>16s}")
base = d[d.setting == "stock"][["spills", "reloads", "text_bytes", "regalloc_s", "llc_s"]].sum()
for name, _ in SETTINGS:
    t = d[d.setting == name][["spills", "reloads", "text_bytes", "regalloc_s", "llc_s"]].sum()
    def c(k, fmt):
        return f"{t[k]:{fmt}} ({100*(t[k]/base[k]-1):+5.1f}%)"
    say(f"   {name:11s} {int(d[d.setting == name].early_spills.sum()):5d} {c('spills','7.0f')} {c('reloads','6.0f')} {c('text_bytes','9.0f')} "
        f"{c('regalloc_s','8.3f')} {c('llc_s','7.2f')}")
say("   'early' = live ranges spilled through the early path; spills/reloads = instructions in the final code")
say("\n   Per project, spill + reload instructions")
piv = d.assign(sr=d.spills + d.reloads).pivot_table(index="project", columns="setting", values="sr", aggfunc="sum")
say("   " + piv[[n for n, _ in SETTINGS]].to_string().replace("\n", "\n   "))
say("\n   Per project, register-allocator time (s)")
piv = d.pivot_table(index="project", columns="setting", values="regalloc_s", aggfunc="sum")
say("   " + piv[[n for n, _ in SETTINGS]].round(3).to_string().replace("\n", "\n   "))

# ---------- PolyBench run time ----------
if PB and os.path.isdir(PB):
    util = os.path.join(PB, "utilities")
    # one kernel per folder, named after the folder (skips leftovers such as Nussinov.orig.c)
    kernels = sorted(f for f in glob.glob(PB + "/**/*.c", recursive=True)
                     if "/utilities/" not in f and os.path.basename(f)[:-2] == os.path.basename(os.path.dirname(f)))
    pobj = os.path.join(TMP, "polybench.o")
    subprocess.run([CLANG, "-O2", "-c", "-I", util, os.path.join(util, "polybench.c"),
                    "-DPOLYBENCH_TIME", "-o", pobj], check=True)
    pobj_dump = os.path.join(TMP, "polybench_dump.o")
    subprocess.run([CLANG, "-O2", "-c", "-I", util, os.path.join(util, "polybench.c"),
                    "-o", pobj_dump], check=True)
    trows, mism = [], []
    for k in kernels:
        b = os.path.basename(k)[:-2]
        inc = ["-I", util, "-I", os.path.dirname(k)]
        ll_t, ll_d = os.path.join(TMP, b + "_t.ll"), os.path.join(TMP, b + "_d.ll")
        subprocess.run([CLANG, "-O2", "-S", "-emit-llvm", *inc, "-DPOLYBENCH_TIME", "-DMEDIUM_DATASET", k, "-o", ll_t], check=True)
        subprocess.run([CLANG, "-O2", "-S", "-emit-llvm", *inc, "-DPOLYBENCH_DUMP_ARRAYS", "-DMINI_DATASET", k, "-o", ll_d], check=True)
        ref = None
        for name, p in SETTINGS:
            o, exe = os.path.join(TMP, f"{b}_{name}.o"), os.path.join(TMP, f"{b}_{name}")
            llc([ll_d, "-filetype=obj", "-relocation-model=pic", "-o", o], p)
            subprocess.run([CLANG, o, pobj_dump, "-lm", "-o", exe + "_d"], check=True)
            dump = subprocess.run([exe + "_d"], capture_output=True, text=True).stderr
            if ref is None:
                ref = dump
            elif dump != ref:
                mism.append(f"{b} {name}")
            llc([ll_t, "-filetype=obj", "-relocation-model=pic", "-o", o], p)
            subprocess.run([CLANG, o, pobj, "-lm", "-o", exe], check=True)
        # interleave settings run by run so slow drifts of the machine hit all settings alike
        times = {name: [] for name, _ in SETTINGS}
        times["stock (repeat)"] = []
        for _ in range(RUNS):
            for name in list(times):
                exe = os.path.join(TMP, f"{b}_{name.replace(' (repeat)', '')}")
                times[name].append(float(subprocess.run([exe], capture_output=True, text=True).stdout.strip()))
        for name, v in times.items():
            trows.append(dict(program=b, setting=name, run_s=statistics.median(v)))
        print(f"timed {b}", flush=True)
    t = pd.DataFrame(trows)
    t.to_csv(os.path.join(ROOT, "results", "early_spill_runtime.csv"), index=False)
    piv = t.pivot(index="program", columns="setting", values="run_s")
    say(f"\n2) PolyBench run time, MEDIUM dataset, median of {RUNS} runs, {len(piv)} kernels")
    say("   Output identical to stock on the MINI dataset for every kernel and setting: "
        + ("yes" if not mism else "NO: " + ", ".join(mism)))
    say("   Geometric mean of run time relative to stock (1.000 = same):")
    for name in ["stock (repeat)"] + [n for n, _ in SETTINGS[1:]]:
        r = piv[name] / piv["stock"]
        say(f"   {name:15s} {np.exp(np.log(r).mean()):.3f}   (fastest kernel {r.min():.3f}, slowest {r.max():.3f})")
    say("   'stock (repeat)' is stock against itself and shows the measurement noise on this machine.")
out.close()
shutil.rmtree(TMP, ignore_errors=True)
