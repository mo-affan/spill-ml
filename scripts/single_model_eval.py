"""One model over ALL spillable intervals, with free registers as features instead of a hard gate.

Compared with the gate design of first_eval.py / end_to_end_fair.py on identical folds.
Run from anywhere:  python scripts/single_model_eval.py
Writes results/single_model_eval.txt.
"""
import os, numpy as np, pandas as pd
from sklearn.model_selection import GroupKFold
from sklearn.ensemble import RandomForestClassifier
from sklearn.inspection import permutation_importance
from sklearn.metrics import average_precision_score as ap, precision_score, recall_score

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = open(os.path.join(ROOT, "results", "single_model_eval.txt"), "w")
def say(s=""):
    print(s); OUT.write(s + "\n"); OUT.flush()

d = pd.read_csv(os.path.join(ROOT, "data", "dataset3_first.csv"))
d = d[(d.spillable == 1) & np.isfinite(d.weight)].reset_index(drop=True)
d["group"] = d.program.str.replace("_unroll", "", regex=False)
d["project"] = np.where(d.program.str.startswith("zlib_"), "zlib",
               np.where(d.program.str.startswith("lua_"), "lua", "polybench"))
d["log_weight"] = np.log10(d.weight.clip(lower=1e-12))
d["log_size"] = np.log10(d.live_size.clip(lower=1))
d["loop_frac"] = d.loop_refs / (d.uses + d.defs).clip(lower=1)
d["free_frac"] = d.free_regs / d.total_regs.clip(lower=1)
d = pd.get_dummies(d, columns=["reg_class"])
cls = [c for c in d.columns if c.startswith("reg_class_")]
F = ["log_weight", "segments", "log_size", "uses", "defs", "max_depth",
     "loop_frac", "crosses_mask", "total_regs"] + cls          # gate design (first_eval.py)
F2 = F + ["free_regs", "free_frac"]                             # single model
X, X2 = d[F].astype(float), d[F2].astype(float)
y, g, proj = d.spilled.values, d.group.values, d.project.values
hard = (d.free_regs == 0).values
base = -d.log_weight.values

def rf(seed=0):
    return RandomForestClassifier(n_estimators=300, min_samples_leaf=3,
                                  class_weight="balanced", random_state=seed, n_jobs=-1)

def scores(tr, te, seed):
    """Scores for the test rows under each design, trained only on the training rows."""
    out = {"weight only": base[te]}
    ht, hr = hard[te], hard[tr]
    s = np.zeros(len(te)); r = base[te][ht]
    if ht.sum(): s[ht] = 1 + (r.argsort().argsort() + 1) / len(r)
    out["gate + weight"] = s
    s = np.zeros(len(te))
    if ht.sum(): s[ht] = rf(seed).fit(X.iloc[tr[hr]], y[tr[hr]]).predict_proba(X.iloc[te[ht]])[:, 1]
    out["gate + model"] = s
    out["single model"] = rf(seed).fit(X2.iloc[tr], y[tr]).predict_proba(X2.iloc[te])[:, 1]
    return out

NAMES = ["weight only", "gate + weight", "gate + model", "single model"]
say(f"spillable intervals={len(d)} spilled={y.sum()} program groups={len(set(g))} (random-guess PR-AUC {y.mean():.3f})\n")

# 1) repeated grouped CV
res = {n: [] for n in NAMES}
for k in range(10):
    for tr, te in GroupKFold(n_splits=5, shuffle=True, random_state=k).split(X, y, g):
        if y[te].sum() == 0: continue
        for n, s in scores(tr, te, k).items():
            res[n].append(ap(y[te], s))
R = {n: np.array(v) for n, v in res.items()}
say(f"1) End to end, program-grouped 5-fold CV repeated 10 times ({len(R['single model'])} folds)")
say(f"   {'design':16s} {'PR-AUC mean':>11s} {'sd':>6s} {'min':>6s} {'max':>6s}")
for n in NAMES:
    v = R[n]; say(f"   {n:16s} {v.mean():11.3f} {v.std(ddof=1):6.3f} {v.min():6.3f} {v.max():6.3f}")
diff = R["single model"] - R["gate + model"]
say(f"   single model minus gate + model: mean {diff.mean():+.3f}, better in {(diff > 0).sum()} of {len(diff)} folds\n")

# 2) leave one project out, 10 seeds
say("2) End to end, leave one project out (train on two projects, test on the third), 10 seeds")
say(f"   {'test':10s} {'spills':>6s} | " + " | ".join(f"{n:>13s}" for n in NAMES) + " | single better")
for p in ["polybench", "zlib", "lua"]:
    te, tr = np.where(proj == p)[0], np.where(proj != p)[0]
    runs = [scores(tr, te, k) for k in range(10)]
    m = {n: np.array([ap(y[te], r[n]) for r in runs]) for n in NAMES}
    cells = " | ".join(f"{m[n].mean():6.3f} ± {m[n].std(ddof=1):.3f}" if n in ("gate + model", "single model")
                       else f"{m[n].mean():13.3f}" for n in NAMES)
    say(f"   {p:10s} {y[te].sum():6d} | {cells} | {(m['single model'] > m['gate + model']).sum()}/10")

# 3) what it means in practice: flag as many intervals as there are true spills
say("\n3) Flag the top-N intervals, N = number of real spills in the fold (grouped 5-fold, seed 0)")
cnt = {n: [0, 0] for n in NAMES}
for tr, te in GroupKFold(n_splits=5).split(X, y, g):
    n_sp = int(y[te].sum())
    if n_sp == 0: continue
    for n, s in scores(tr, te, 0).items():
        top = np.argsort(-s, kind="stable")[:n_sp]
        cnt[n][0] += int(y[te][top].sum()); cnt[n][1] += n_sp
for n in NAMES:
    c, t = cnt[n]; say(f"   {n:16s} finds {c:4d} of {t} spills ({100*c/t:.1f}%)")

# 4) importance in the single model
say("\n4) Permutation importance in the single model (drop in PR-AUC, grouped 5-fold, 5 shuffles)")
imp = np.zeros(len(F2)); n = 0
for tr, te in GroupKFold(n_splits=5).split(X2, y, g):
    m = rf(0).fit(X2.iloc[tr], y[tr])
    imp += permutation_importance(m, X2.iloc[te], y[te], scoring="average_precision",
                                  n_repeats=5, random_state=0, n_jobs=-1).importances_mean; n += 1
imp /= n
rows = [(f, v) for f, v in zip(F2, imp) if not f.startswith("reg_class_")]
rows.append(("reg_class (all columns summed)", sum(v for f, v in zip(F2, imp) if f.startswith("reg_class_"))))
for f, v in sorted(rows, key=lambda t: -t[1]):
    say(f"   {f:32s} {v:7.4f}")
OUT.close()
