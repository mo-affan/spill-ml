"""Robustness checks for the first-visit study (no LLVM needed).

Run from anywhere:  python scripts/robustness.py
Writes results/robustness.txt next to the other results.

1) Leave-one-project-out repeated over model seeds (spread instead of a single run)
2) Repeated program-grouped 5-fold CV with reshuffled folds
3) Model comparison on the same folds (is the random forest needed? how good is a tiny tree?)
4) Permutation importance on the gated (hard) intervals
5) The spills the gate misses: can anything be predicted for intervals that had a free register?
"""
import os, sys, numpy as np, pandas as pd
from sklearn.model_selection import GroupKFold
from sklearn.ensemble import RandomForestClassifier, HistGradientBoostingClassifier
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeClassifier
from sklearn.preprocessing import StandardScaler
from sklearn.pipeline import make_pipeline
from sklearn.inspection import permutation_importance
from sklearn.metrics import average_precision_score

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = open(os.path.join(ROOT, "results", "robustness.txt"), "w")
def say(s=""):
    print(s); OUT.write(s + "\n"); OUT.flush()

# ---- same preparation as first_eval.py ----
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
     "loop_frac", "crosses_mask", "total_regs"] + cls
X, y, g = d[F].astype(float), d.spilled.values, d.group.values
proj = d.project.values
hard = (d.free_regs == 0).values
base = -d.log_weight.values
SEEDS = list(range(10))
ap = average_precision_score

def rf(seed=0):
    return RandomForestClassifier(n_estimators=300, min_samples_leaf=3,
                                  class_weight="balanced", random_state=seed, n_jobs=-1)

say(f"spillable intervals={len(d)} spilled={y.sum()} program groups={len(set(g))} "
    f"(program names incl. _unroll copies={d.program.nunique()})")
say(f"hard at first visit={hard.sum()} spilled among them={y[hard].sum()}\n")

# ---- 1) leave one project out, 10 model seeds ----
say("1) Leave-one-project-out on hard intervals, 10 random-forest seeds")
say(f"   {'test':10s} {'model PR-AUC mean':>18s} {'sd':>6s} {'min':>6s} {'max':>6s} | {'weight':>6s} | wins")
for p in ["polybench", "zlib", "lua"]:
    te, tr = (proj == p) & hard, (proj != p) & hard
    b = ap(y[te], base[te])
    s = np.array([ap(y[te], rf(k).fit(X[tr], y[tr]).predict_proba(X[te])[:, 1]) for k in SEEDS])
    say(f"   {p:10s} {s.mean():18.3f} {s.std(ddof=1):6.3f} {s.min():6.3f} {s.max():6.3f} | {b:6.3f} | {(s > b).sum()}/{len(s)}")

# ---- 2) + 3) repeated grouped CV, several models on identical folds ----
MODELS = {
    "Spill weight (baseline)": None,
    "Logistic regression": lambda k: make_pipeline(StandardScaler(), LogisticRegression(class_weight="balanced", max_iter=5000)),
    "Decision tree depth 3": lambda k: DecisionTreeClassifier(max_depth=3, class_weight="balanced", random_state=k),
    "Decision tree depth 5": lambda k: DecisionTreeClassifier(max_depth=5, class_weight="balanced", random_state=k),
    "Random forest (300)": rf,
    "Hist gradient boosting": lambda k: HistGradientBoostingClassifier(class_weight="balanced", random_state=k),
}
idx = np.where(hard)[0]
Xh, yh, gh, bh = X.iloc[idx], y[idx], g[idx], base[idx]
scores = {m: [] for m in MODELS}
for k in SEEDS:
    for tr, te in GroupKFold(n_splits=5, shuffle=True, random_state=k).split(Xh, yh, gh):
        for name, mk in MODELS.items():
            p = bh[te] if mk is None else mk(k).fit(Xh.iloc[tr], yh[tr]).predict_proba(Xh.iloc[te])[:, 1]
            scores[name].append(ap(yh[te], p))
S = {m: np.array(v) for m, v in scores.items()}
say("\n2-3) Hard intervals, program-grouped 5-fold CV repeated 10 times with reshuffled folds (50 folds)")
say(f"   {'model':26s} {'PR-AUC mean':>11s} {'sd':>6s} {'min':>6s} | beats weight | beats/ties RF")
for m, v in S.items():
    say(f"   {m:26s} {v.mean():11.3f} {v.std(ddof=1):6.3f} {v.min():6.3f} | "
        f"{(v > S['Spill weight (baseline)']).sum():>5d}/50     | {(v >= S['Random forest (300)']).sum():>5d}/50")

# ---- 4) permutation importance, hard intervals, out of fold ----
say("\n4) Permutation importance on hard intervals (mean drop in PR-AUC on held-out folds, 5 folds x 10 shuffles)")
imp = np.zeros(len(F)); n = 0
for tr, te in GroupKFold(n_splits=5).split(Xh, yh, gh):
    m = rf(0).fit(Xh.iloc[tr], yh[tr])
    r = permutation_importance(m, Xh.iloc[te], yh[te], scoring="average_precision",
                               n_repeats=10, random_state=0, n_jobs=-1)
    imp += r.importances_mean; n += 1
imp /= n
reg_total = sum(v for f, v in zip(F, imp) if f.startswith("reg_class_"))
rows = [(f, v) for f, v in zip(F, imp) if not f.startswith("reg_class_")] + [("reg_class (all columns summed)", reg_total)]
for f, v in sorted(rows, key=lambda t: -t[1]):
    say(f"   {f:32s} {v:7.4f}")

# ---- 5) the spills the gate misses ----
easy = ~hard
ie = np.where(easy)[0]
Xe, ye, ge, be = X.iloc[ie].copy(), y[ie], g[ie], base[ie]
Xe2 = Xe.copy(); Xe2["free_regs"] = d.free_regs.values[ie]; Xe2["free_frac"] = d.free_frac.values[ie]
say(f"\n5) Intervals that HAD a free register at first visit: {easy.sum()}, later spilled: {ye.sum()} "
    f"({100*ye.mean():.2f}%, so random-guess PR-AUC {ye.mean():.3f})")
pw, pm = [], []
for tr, te in GroupKFold(n_splits=5).split(Xe2, ye, ge):
    if ye[te].sum() == 0: continue
    pm.append(ap(ye[te], rf(0).fit(Xe2.iloc[tr], ye[tr]).predict_proba(Xe2.iloc[te])[:, 1]))
    pw.append(ap(ye[te], be[te]))
say(f"   within this group, PR-AUC  model {np.round(pm,3)} mean {np.mean(pm):.3f}")
say(f"                              weight {np.round(pw,3)} mean {np.mean(pw):.3f}")

say("\n   End to end over ALL spillable intervals, same grouped 5 folds as first_eval.py")
Xall = X.copy(); Xall["free_regs"] = d.free_regs.values; Xall["free_frac"] = d.free_frac.values
res = {"weight only": [], "gate + weight": [], "gate + model (current)": [],
       "one model, free_regs as a feature": [], "two models (hard + not hard)": []}
for tr, te in GroupKFold(n_splits=5).split(X, y, g):
    if y[te].sum() == 0: continue
    ht, hr = hard[te], hard[tr]
    res["weight only"].append(ap(y[te], base[te]))
    # rank-normalise weight inside the fold so gated intervals always outrank the rest
    s = np.zeros(len(te)); r = base[te][ht]
    if ht.sum(): s[ht] = 1 + (r.argsort().argsort() + 1) / len(r)
    res["gate + weight"].append(ap(y[te], s))
    s = np.zeros(len(te))
    ph = rf(0).fit(X.iloc[tr[hr]], y[tr[hr]]).predict_proba(X.iloc[te[ht]])[:, 1]
    s[ht] = ph
    res["gate + model (current)"].append(ap(y[te], s))
    res["one model, free_regs as a feature"].append(
        ap(y[te], rf(0).fit(Xall.iloc[tr], y[tr]).predict_proba(Xall.iloc[te])[:, 1]))
    s2 = np.zeros(len(te)); s2[ht] = ph
    s2[~ht] = rf(0).fit(Xall.iloc[tr[~hr]], y[tr[~hr]]).predict_proba(Xall.iloc[te[~ht]])[:, 1]
    res["two models (hard + not hard)"].append(ap(y[te], s2))
for k, v in res.items():
    say(f"   {k:34s} per fold {np.round(v,3)}  mean {np.mean(v):.3f}")
OUT.close()
