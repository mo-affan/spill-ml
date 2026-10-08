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
Current pipeline: parse_features.py -> dedupe_v2.py -> parse_first.py -> single_model_eval.py (main result), with first_eval.py, end_to_end_fair.py and robustness.py for the gate design and supporting checks.

fair_eval.py, leave_project_out.py and ablation.py read data/dataset2_dedup.csv, whose features are taken at each interval's last examination. For a spilled interval that is the moment it was spilled, when it never has a free register, so those numbers describe an easier question. The first-visit dataset (data/dataset3_first.csv) avoids this and gives the results below.

The early scripts (parse_log.py, train.py, dedupe.py, eval_threshold.py, importance_check.py, train_v2.py's first run) were an initial prototype built on a log parser that wrote duplicate rows. They are kept for history, and their numbers should not be used.

| Result file | Script | Dataset |
| --- | --- | --- |
| results/single_model_eval.txt | single_model_eval.py | dataset3_first.csv (main result) |
| results/first_eval.txt | first_eval.py | dataset3_first.csv (gate design) |
| results/end_to_end_fair.txt | end_to_end_fair.py | dataset3_first.csv (gate design) |
| results/robustness.txt | robustness.py | dataset3_first.csv |
| results/fair_eval_v2.txt | fair_eval.py | dataset2_dedup.csv |
| results/leave_project_out.txt | leave_project_out.py | dataset2_dedup.csv |
| results/ablation.txt | ablation.py | dataset2_dedup.csv |
| results/fair_eval.txt, train_v2.txt, model_comparison.csv | earlier runs | prototype data, do not cite |

## Results (first-visit features, 74 program groups, 961 spills)
All scores are PR-AUC over every spillable interval unless stated. Random guessing scores 0.052. Evaluation is always grouped by program.

### Main result: one model over all intervals
A random forest (300 trees) sees every spillable interval, with the number of free registers at first visit (free_regs, free_frac) as ordinary features. It is compared with LLVM's spill weight and with the earlier gate design on identical folds (results/single_model_eval.txt).

| Design | 5-fold CV repeated 10x (50 folds) | PolyBench unseen | zlib unseen | Lua unseen |
| --- | --- | --- | --- | --- |
| Spill weight only | 0.110 ± 0.034 | 0.295 | 0.174 | 0.070 |
| Gate + spill weight | 0.554 ± 0.052 | 0.567 | 0.555 | 0.589 |
| Gate + model | 0.718 ± 0.042 | 0.631 | 0.740 | 0.655 |
| **Single model** | **0.855 ± 0.036** | **0.801** | **0.810** | **0.729** |

- The single model beats gate + model in all 50 CV folds (mean +0.137) and in all 30 leave-one-project-out runs (10 seeds per project).
- Flagging as many intervals as there are real spills, it finds 748 of 961 (77.8%), against 702 for gate + model, 593 for gate + weight and 158 for spill weight alone.
- It can rank intervals the gate always misses: spills of intervals that had a free register at first visit and were evicted later (215 of 961).
- Most important features (permutation, drop in PR-AUC): free_frac 0.172, log_size 0.161, uses 0.149, free_regs 0.139, log_weight 0.081, defs 0.064.

### The gate design (earlier headline)
- A first-visit gate (no free register) reaches 746 of 961 spills (77.6%). The other 215 were assigned a register first and spilled after a later re-examination (consistent with eviction).
- Among gated intervals, 5-fold program-grouped CV: model mean 0.91 vs 0.71 for ranking by spill weight; model better in 5/5 folds (results/first_eval.txt). Repeated 10 times with reshuffled folds: 0.912 ± 0.043 vs 0.702 ± 0.057, forest better in 50/50 folds (results/robustness.txt).
- Leave-one-project-out on gated intervals, 10 seeds: PolyBench 0.875 ± 0.003 vs 0.784, zlib 0.887 ± 0.004 vs 0.663, lua 0.781 ± 0.003 vs 0.703 for spill weight.
- These gated scores are higher than the end-to-end ones because about half of gated intervals are spilled, so the task inside the gate is easier. They are not comparable with the main table.

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

## Limits
- Prediction only: the model is not used inside LLVM, so there is no evidence that generated code gets faster or smaller.
- The model predicts LLVM's own decisions. Copying them into LLVM would not by itself improve code; that needs a different use for the prediction or a different label.
- One target (x86-64), one LLVM version (19.1.7), three source projects.
- Seeds vary the forest; leave-one-project-out splits are fixed by project, so their spread reflects the model only.
