import os, pandas as pd
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # project folder, wherever it is
H = os.path.join(ROOT, "data")
d = pd.read_csv(f"{H}/dataset2.csv")
cols = ["func","vreg","reg_class","segments","live_size","weight","uses","defs",
        "max_depth","loop_refs","crosses_mask","free_regs","total_regs","spillable","spilled"]
def sig(g):
    return pd.util.hash_pandas_object(
        g[cols].sort_values(["func","vreg"]).reset_index(drop=True), index=False).sum()
sigs = {p: sig(g) for p, g in d.groupby("program")}
drop = [p for p in sigs if p.endswith("_unroll") and p[:-7] in sigs and sigs[p] == sigs[p[:-7]]]
out = d[~d.program.isin(drop)]
out.to_csv(f"{H}/dataset2_dedup.csv", index=False)
print("dropped", len(drop), "identical copies;", len(d), "->", len(out), "rows;",
      "programs:", out.program.nunique(), "; spilled:", int(out.spilled.sum()))
