"""Check the decision tree running INSIDE llc against the real spill decisions.

Needs llc built with patches/spill_dump.patch + patches/spill_predict.patch.
Run:  LLC=/path/to/llc python scripts/in_compiler_eval.py
Reads every .ll file in data/ir/, writes results/in_compiler_eval.txt.

For each live range's first examination it records the tree's probability as printed by
llc (SPILLDATA,P) and whether LLVM later spilled it (SPILLDATA,S). No early spilling is
switched on, so the allocation is stock Greedy and the label is LLVM's own decision.
It also recomputes the tree in Python from the printed features to check that the
C++ and Python versions agree.
"""
import os, glob, subprocess, numpy as np, pandas as pd
from sklearn.metrics import average_precision_score as ap

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
LLC = os.environ.get("LLC", os.path.expanduser("~/llvm-project/build/bin/llc"))
IR = os.path.join(ROOT, "data", "ir")
NUM = ["segments", "live_size", "weight", "uses", "defs", "max_depth",
       "loop_refs", "crosses_mask", "free_regs", "total_regs", "spillable"]

rows = []
env = dict(os.environ, SPILL_DUMP="1", SPILL_PREDICT="1")
env.pop("SPILL_EARLY", None)
for ir in sorted(glob.glob(IR + "/*.ll")):
    prog = os.path.basename(ir)[:-3]
    log = subprocess.run([LLC, "-O2", "-regalloc=greedy", ir, "-o", os.devnull],
                         capture_output=True, text=True, env=env).stderr
    first, prob, spilled = {}, {}, set()
    for line in log.splitlines():
        if not line.startswith("SPILLDATA,"):
            continue
        p = line.split(",")
        key = (p[2], int(p[3]))
        if p[1] == "F" and len(p) == 16 and key not in first:
            r = dict(program=prog, func=p[2], vreg=key[1])
            r.update({n: float(v) for n, v in zip(NUM, p[5:])})
            first[key] = r
        elif p[1] == "P" and key not in prob:
            prob[key] = float(p[4])
        elif p[1] == "S":
            spilled.add(key)
    for key, r in first.items():
        r["p_llc"] = prob.get(key, np.nan)
        r["spilled"] = int(key in spilled)
        rows.append(r)

d = pd.DataFrame(rows)
d.to_csv(os.path.join(ROOT, "data", "in_compiler_predictions.csv"), index=False)
s = d[(d.spillable == 1) & np.isfinite(d.weight)].copy()
s["project"] = np.where(s.program.str.startswith("zlib_"), "zlib",
               np.where(s.program.str.startswith("lua_"), "lua", "polybench"))

# Python re-computation of the same tree (patches/spill_tree.json) from the printed features
import json
T = json.load(open(os.path.join(ROOT, "patches", "spill_tree.json")))["nodes"]
def tree(r):
    i = 0
    while T[i]["left"] != -1:
        i = T[i]["left"] if float(np.float32(r[T[i]["feature"]])) <= T[i]["threshold"] else T[i]["right"]
    return T[i]["prob"]
s["log_weight"] = np.log10(s.weight.clip(lower=1e-12))
s["log_size"] = np.log10(s.live_size.clip(lower=1))
s["loop_frac"] = s.loop_refs / (s.uses + s.defs).clip(lower=1)
s["free_frac"] = s.free_regs / s.total_regs.clip(lower=1)
s["p_py"] = [tree(r) for r in s.to_dict("records")]
agree = np.isclose(s.p_llc, s.p_py, atol=1e-9)

out = open(os.path.join(ROOT, "results", "in_compiler_eval.txt"), "w")
def say(x=""):
    print(x); out.write(x + "\n")
say(f"llc: {LLC}")
say(f"IR files with live ranges: {d.program.nunique()}, spillable first-visit live ranges: {len(s)}, spilled: {int(s.spilled.sum())}")
say(f"Tree probability printed by llc equals the Python tree on the printed features: "
    f"{agree.sum()} of {len(s)} ({100*agree.mean():.2f}%)")
if not agree.all():
    say("  (differences come from features printed with rounding, e.g. the spill weight)")
say()
say("PR-AUC of the in-compiler tree against LLVM's real decisions (random guess = spill rate)")
say(f"  {'set':10s} {'ranges':>7s} {'spills':>6s} | {'tree':>6s} {'weight':>7s} {'random':>7s}")
for name, g in [("all", s)] + list(s.groupby("project")):
    say(f"  {name:10s} {len(g):7d} {int(g.spilled.sum()):6d} | {ap(g.spilled, g.p_llc):6.3f} "
        f"{ap(g.spilled, -np.log10(g.weight.clip(lower=1e-12))):7.3f} {g.spilled.mean():7.3f}")
say("\nNote: the tree was trained on data/dataset3_first.csv, which came from the same three projects,")
say("so this is a check that the compiled-in model works, not a test on unseen code.")
out.close()
