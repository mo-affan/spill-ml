"""Run-time follow-up to early_spill_experiment.py on the LARGE PolyBench dataset.

The MEDIUM runs there finish in milliseconds, which is too short to time on a shared machine.
This times the 8 PolyBench kernels whose spill + reload count rose most under early@0.95,
at the LARGE size, stock vs early@0.95, plus stock against itself to show the noise.

Run:  LLC=/path/to/llc POLYBENCH_DIR=/path/to/PolyBenchC-4.2.1 python scripts/early_spill_runtime_large.py
Writes results/early_spill_runtime_large.txt.
"""
import os, glob, subprocess, statistics, tempfile, shutil
import numpy as np

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
LLC = os.environ.get("LLC", os.path.expanduser("~/llvm-project/build/bin/llc"))
CLANG = os.environ.get("CLANG", "clang")
PB = os.environ["POLYBENCH_DIR"]
RUNS = int(os.environ.get("RUNS", "5"))
KERNELS = ["gemver", "ludcmp", "fdtd-2d", "gramschmidt", "deriche", "lu", "3mm", "cholesky"]
SETTINGS = [("stock", None), ("early@0.95", "0.95")]
TMP = tempfile.mkdtemp(prefix="early_large_")
util = os.path.join(PB, "utilities")

pobj = os.path.join(TMP, "polybench.o")
subprocess.run([CLANG, "-O2", "-c", "-I", util, os.path.join(util, "polybench.c"), "-DPOLYBENCH_TIME", "-o", pobj], check=True)
out = open(os.path.join(ROOT, "results", "early_spill_runtime_large.txt"), "w")
def say(x=""):
    print(x, flush=True); out.write(x + "\n"); out.flush()
say(f"PolyBench LARGE dataset, median of {RUNS} interleaved runs (seconds)")
say(f"  {'kernel':12s} {'stock':>9s} {'stock again':>12s} {'early@0.95':>11s} | {'noise':>6s} {'early/stock':>11s}")
noise, ratio = [], []
for k in KERNELS:
    src = [f for f in glob.glob(PB + f"/**/{k}/{k}.c", recursive=True)][0]
    ll = os.path.join(TMP, k + ".ll")
    subprocess.run([CLANG, "-O2", "-S", "-emit-llvm", "-I", util, "-I", os.path.dirname(src),
                    "-DPOLYBENCH_TIME", "-DLARGE_DATASET", src, "-o", ll], check=True)
    exes = {}
    for name, p in SETTINGS:
        e = dict(os.environ); e.pop("SPILL_EARLY", None); e.pop("SPILL_DUMP", None); e.pop("SPILL_PREDICT", None)
        if p: e["SPILL_EARLY"] = p
        o = os.path.join(TMP, f"{k}_{name}.o")
        subprocess.run([LLC, "-O2", "-regalloc=greedy", "-filetype=obj", "-relocation-model=pic", ll, "-o", o], check=True, env=e)
        exes[name] = os.path.join(TMP, f"{k}_{name}")
        subprocess.run([CLANG, o, pobj, "-lm", "-o", exes[name]], check=True)
    exes["stock again"] = exes["stock"]
    t = {n: [] for n in exes}
    for _ in range(RUNS):
        for n, x in exes.items():
            t[n].append(float(subprocess.run([x], capture_output=True, text=True).stdout.strip()))
    m = {n: statistics.median(v) for n, v in t.items()}
    noise.append(m["stock again"] / m["stock"]); ratio.append(m["early@0.95"] / m["stock"])
    say(f"  {k:12s} {m['stock']:9.3f} {m['stock again']:12.3f} {m['early@0.95']:11.3f} | {noise[-1]:6.3f} {ratio[-1]:11.3f}")
say(f"  geometric mean                                     | {np.exp(np.mean(np.log(noise))):6.3f} {np.exp(np.mean(np.log(ratio))):11.3f}")
say("  noise = stock against itself; early/stock above 1 means early spilling made the program slower")
out.close()
shutil.rmtree(TMP, ignore_errors=True)
