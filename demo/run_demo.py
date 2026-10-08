#!/usr/bin/env python3
"""Live demo: LLVM's register allocator predicting its own spills while it compiles.

Run inside Linux or WSL (Ubuntu 24.04) from the spill-ml folder:
    python3 demo/run_demo.py                  # default program: zlib_inflate
    python3 demo/run_demo.py demo/ir/gemm.ll  # any .ll file

Uses demo/llc (LLVM 19.1.7 built with patches/spill_dump.patch + spill_predict.patch).
Set LLC=/path/to/llc to use another build. Needs only Python 3, no extra packages.
"""
import os, sys, subprocess, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
LLC = os.environ.get("LLC", os.path.join(HERE, "llc"))
IR = sys.argv[1] if len(sys.argv) > 1 else os.path.join(HERE, "ir", "zlib_inflate.ll")
NAME = os.path.basename(IR)[:-3]

def run_llc(extra_env, out):
    env = dict(os.environ)
    for k in ("SPILL_DUMP", "SPILL_PREDICT", "SPILL_EARLY"):
        env.pop(k, None)
    env.update(extra_env)
    r = subprocess.run([LLC, "-O2", "-regalloc=greedy", IR, "-o", out],
                       capture_output=True, text=True, env=env)
    if r.returncode != 0:
        sys.exit("llc failed:\n" + r.stderr[-2000:])
    return r.stderr

def count_spill_code(asm):
    sp = rl = 0
    for line in open(asm):
        if "#" in line:
            c = line.split("#", 1)[1]
            if "Spill" in c:
                sp += 1
            elif "Reload" in c:
                rl += 1
    return sp, rl

def bar(title):
    print("\n" + title + "\n" + "-" * len(title))

tmp = tempfile.mkdtemp()
print(f"Program: {NAME}   compiler: {LLC}")

# ---- Part 1: predictions made inside llc ----
log = run_llc({"SPILL_DUMP": "1", "SPILL_PREDICT": "1"}, os.path.join(tmp, "a.s"))
first, prob, spilled = {}, {}, set()
for line in log.splitlines():
    if not line.startswith("SPILLDATA,"):
        continue
    p = line.split(",")
    key = (p[2], int(p[3]))
    if p[1] == "F" and len(p) == 16 and key not in first:
        # F line: func, vreg, class, segments, size, weight, uses, defs, depth,
        #         loop refs, crosses call, free regs, total regs, spillable
        first[key] = dict(func=p[2], vreg=key[1], uses=int(p[8]), free=int(p[13]),
                          total=int(p[14]), spillable=int(p[15]))
    elif p[1] == "P" and key not in prob:
        prob[key] = float(p[4])
    elif p[1] == "S":
        spilled.add(key)

rows = [dict(r, prob=prob[k], spilled=k in spilled) for k, r in first.items() if r["spillable"] == 1 and k in prob]
n, n_sp = len(rows), sum(r["spilled"] for r in rows)
bar("Part 1: the model inside LLVM predicts which variables will be spilled")
print(f"Live ranges LLVM had to place: {n}.  LLVM actually spilled: {n_sp}.")
print("The model gives each one a spill probability at the moment LLVM first looks at it,")
print("before LLVM has made its decision. Highest-probability live ranges:\n")
print(f"  {'function':22s} {'vreg':>5s} {'uses':>4s} {'free regs':>9s} | {'model says':>10s} | LLVM did")
for r in sorted(rows, key=lambda r: -r["prob"])[:12]:
    print(f"  {r['func'][:22]:22s} {r['vreg']:5d} {r['uses']:4d} {r['free']:4d}/{r['total']:<4d} | "
          f"{100*r['prob']:9.0f}% | {'SPILLED' if r['spilled'] else 'kept in register'}")

tp = sum(1 for r in rows if r["prob"] >= 0.5 and r["spilled"])
fp = sum(1 for r in rows if r["prob"] >= 0.5 and not r["spilled"])
fn = sum(1 for r in rows if r["prob"] < 0.5 and r["spilled"])
tn = n - tp - fp - fn
print(f"\nPredicted spill (probability >= 50%) vs what LLVM did, all {n} live ranges:")
print(f"                      LLVM spilled   LLVM kept")
print(f"  model: spill        {tp:12d} {fp:11d}")
print(f"  model: keep         {fn:12d} {tn:11d}")
print(f"  -> caught {tp} of {n_sp} spills; {tp}/{tp + fp} of its spill predictions were right")

# ---- Part 2: acting on the prediction ----
bar("Part 2: letting the prediction change LLVM's decision (SPILL_EARLY=0.95)")
run_llc({}, os.path.join(tmp, "stock.s"))
s_sp, s_rl = count_spill_code(os.path.join(tmp, "stock.s"))
log = run_llc({"SPILL_EARLY": "0.95", "SPILL_PREDICT": "1"}, os.path.join(tmp, "early.s"))
early = sum(1 for l in log.splitlines() if l.startswith("SPILLDATA,E,"))
e_sp, e_rl = count_spill_code(os.path.join(tmp, "early.s"))
print("When the model is at least 95% sure, LLVM spills the variable at once instead of")
print(f"first trying to evict or split. It did this for {early} live ranges.\n")
print(f"  {'':20s} {'spill instr.':>12s} {'reload instr.':>13s}")
print(f"  {'normal LLVM':20s} {s_sp:12d} {s_rl:13d}")
print(f"  {'early spill':20s} {e_sp:12d} {e_rl:13d}")
print(f"\nSpill + reload instructions together: {s_sp + s_rl} with normal LLVM, {e_sp + e_rl} with early spilling.")
if e_sp + e_rl > s_sp + s_rl:
    print("More memory traffic means slower code, so acting on the prediction early does not help.")
else:
    print("No increase for this program; over all 76 programs early spilling more than doubled the reloads.")
print("Full experiment: results/early_spill_experiment.txt")
