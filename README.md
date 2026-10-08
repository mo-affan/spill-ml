# ML-guided spill prediction for LLVM register allocation

Predicts whether LLVM's Greedy register allocator (LLVM 19.1.7, x86-64) spills a live interval, using features recorded at the allocator's decision point.

## Pipeline
C source -> LLVM IR -> patched llc (-regalloc=greedy, SPILL_DUMP=1) -> SPILLDATA lines -> CSV -> scikit-learn models -> comparison with a spill-weight baseline

## Layout
- patches/spill_dump.patch : instrumentation for llvm/lib/CodeGen/RegAllocGreedy.cpp (LLVM 19.1.7)
- scripts/ : parsers, training and evaluation scripts
- data/ : generated datasets (CSV)
- results/ : saved outputs and plots

## Run the analysis only (no LLVM needed)
The scripts find the project folder from their own location, so the repo can be cloned anywhere.

Linux / macOS / WSL:

    git clone <repo-url> spill-ml
    cd spill-ml
    python3 -m venv venv && source venv/bin/activate
    pip install -r requirements.txt
    python3 scripts/first_eval.py
    python3 scripts/robustness.py

Windows (PowerShell):

    git clone <repo-url> spill-ml
    cd spill-ml
    python -m venv venv; venv\Scripts\Activate.ps1
    pip install -r requirements.txt
    python scripts\first_eval.py
    python scripts\robustness.py

robustness.py takes a few minutes. The other evaluation scripts run in under a minute.

## Regenerate the data (needs LLVM)
1. Build LLVM 19.1.7 (X86 only, assertions on). From the llvm-project root run: git apply <path to spill-ml>/patches/spill_dump.patch, then rebuild llc.
2. Compile PolyBench/C 4.2.1, zlib and lua to LLVM IR (clang -O2 -S -emit-llvm) into data/ir/.
3. Run scripts/parse_features.py, then scripts/dedupe_v2.py, then scripts/parse_first.py.

The parsers look for llc at ~/llvm-project/build/bin/llc. Set the LLC environment variable to use a different path.

## What the patch records
One SPILLDATA,F line each time the allocator examines a live interval (in selectOrSplitImpl, before tryAssign), and one SPILLDATA,S line when it hands the interval to the spiller.

| Column | Meaning |
| --- | --- |
| segments, live_size | number of segments and total length of the live interval |
| weight | LLVM's spill weight |
| uses, defs | non-debug reads and writes of the register |
| max_depth | deepest loop nesting of any read or write |
| loop_refs | reads and writes inside a loop (loop_frac = loop_refs / (uses + defs)) |
| crosses_mask | 1 if the interval overlaps a register mask, usually a call that clobbers registers |
| free_regs, total_regs | registers in the allocation order that are free / in total |
| spillable | LLVM's isSpillable() |
| spilled (label) | 1 if an S line was seen for this interval |

## Notes
This is an offline prediction study. It does not measure generated-code quality. Evaluation is grouped by program so files from one program are never split between training and test. A program and its _unroll copy count as one group: the data has 80 program names forming 74 groups (PolyBench 30 groups from 36 names, Lua 32, zlib 12).

## Which scripts matter
Current pipeline: parse_features.py -> dedupe_v2.py -> parse_first.py -> first_eval.py, end_to_end_fair.py, robustness.py.

fair_eval.py, leave_project_out.py and ablation.py read data/dataset2_dedup.csv, whose features are taken at each interval's last examination. For a spilled interval that is the moment it was spilled, when it never has a free register, so those numbers describe an easier question. The first-visit dataset (data/dataset3_first.csv) avoids this and gives the headline results below.

The early scripts (parse_log.py, train.py, dedupe.py, eval_threshold.py, importance_check.py, train_v2.py's first run) were an initial prototype built on a log parser that wrote duplicate rows. They are kept for history, and their numbers should not be used.

| Result file | Script | Dataset |
| --- | --- | --- |
| results/first_eval.txt | first_eval.py | dataset3_first.csv (headline results) |
| results/end_to_end_fair.txt | end_to_end_fair.py | dataset3_first.csv |
| results/robustness.txt | robustness.py | dataset3_first.csv |
| results/fair_eval_v2.txt | fair_eval.py | dataset2_dedup.csv |
| results/leave_project_out.txt | leave_project_out.py | dataset2_dedup.csv |
| results/ablation.txt | ablation.py | dataset2_dedup.csv |
| results/fair_eval.txt, train_v2.txt, model_comparison.csv | earlier runs | prototype data, do not cite |

## Results summary (first-visit features, 74 program groups, 961 spills)
All scores are PR-AUC.

- A first-visit gate (no free register) reaches 746 of 961 spills (77.6%). The other 215 were assigned a register first and spilled after a later re-examination (consistent with eviction).
- Among gated intervals, 5-fold program-grouped CV: model mean 0.91 vs 0.71 for ranking by spill weight; model better in 5/5 folds (results/first_eval.txt).
- Repeating that CV 10 times with reshuffled folds (50 folds): random forest 0.912 ± 0.043, spill weight 0.702 ± 0.057; the forest wins all 50 folds (results/robustness.txt).
- Leave-one-project-out, 10 random-forest seeds: PolyBench 0.875 ± 0.003 vs 0.784, zlib 0.887 ± 0.004 vs 0.663, lua 0.781 ± 0.003 vs 0.703. The model wins in all 30 runs. The seed only changes the forest; the train/test split is fixed by project.
- End to end over all spillable intervals: gate+model 0.719 vs gate+weight 0.564 vs weight only 0.112 (random 0.052); model better in 5/5 folds (results/end_to_end_fair.txt). Most of the gain over the plain weight ranking comes from the gate, and the model adds about +0.155 on top.
- These are offline prediction results. They do not measure generated-code quality.

### Model comparison (gated intervals, same 50 folds)
| Model | PR-AUC |
| --- | --- |
| Spill weight (baseline) | 0.702 |
| Logistic regression | 0.751 |
| Decision tree, depth 3 | 0.774 |
| Decision tree, depth 5 | 0.800 |
| Histogram gradient boosting | 0.899 |
| Random forest, 300 trees | 0.912 |

A depth-5 tree keeps a clear lead over spill weight and is small enough to write as if-statements inside the allocator, which matters if the model is ever moved into LLVM.

### Feature importance (gated intervals, permutation, drop in PR-AUC)
uses 0.145, log_weight 0.061, log_size 0.048, defs 0.039, loop_frac 0.025, reg_class 0.024, max_depth 0.014, segments 0.011, crosses_mask 0.006, total_regs 0.004.

### Under review: free registers as a feature instead of a gate
Among intervals that had a free register at first visit (17,030 intervals, 215 later spilled, random 0.013), a forest that also sees free_regs reaches PR-AUC 0.629 against 0.028 for spill weight. End to end, a single forest over all intervals with free_regs as a feature scores 0.851 (5/5 folds better than gate+model's 0.719); two separate forests, one per group, score 0.795. This is one 5-fold run and has not yet replaced the headline design.

## Limits
- Prediction only: the model is not used inside LLVM, so there is no evidence that generated code gets faster or smaller.
- One target (x86-64), one LLVM version (19.1.7), three source projects.
- The gate misses 22% of spills; see the section under review above.
