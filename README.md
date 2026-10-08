# ML-guided spill prediction for LLVM register allocation

Predicts whether LLVM's Greedy register allocator (LLVM 19.1.7, x86-64) spills a live interval, using features recorded at the allocator's decision point.

## Pipeline
C source -> LLVM IR -> patched llc (-regalloc=greedy, SPILL_DUMP=1) -> SPILLDATA lines -> CSV -> scikit-learn models -> comparison with a spill-weight baseline

## Layout
- patches/spill_dump.patch : instrumentation for llvm/lib/CodeGen/RegAllocGreedy.cpp (LLVM 19.1.7)
- patches/spill_predict.patch : applied after spill_dump.patch; adds the decision tree inside the allocator and the SPILL_PREDICT / SPILL_EARLY switches
- patches/spill_tree.inc, spill_tree.json : the tree as generated C++ (already inside spill_predict.patch) and as JSON
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

## Live demo (Linux or WSL)
demo/run_demo.py compiles one program with the patched llc and shows, in under a second, the model's spill probability for each live range next to what LLVM actually did, then the effect of SPILL_EARLY=0.95 on spill and reload instructions.

    cd spill-ml
    xz -dk demo/llc.xz && chmod +x demo/llc     # prebuilt llc, Linux x86-64 (Ubuntu 24.04)
    python3 demo/run_demo.py                     # zlib_inflate
    python3 demo/run_demo.py demo/ir/gemm.ll     # also lu.ll, lua_lvm.ll

demo/llc and demo/llc.xz are not in git; rebuild llc as described below or set LLC to your own build.

## Regenerate the data (needs LLVM)
1. Get LLVM 19.1.7 and apply both patches (spill_dump.patch first):

       git clone --depth 1 --branch llvmorg-19.1.7 https://github.com/llvm/llvm-project
       cd llvm-project
       git apply <spill-ml>/patches/spill_dump.patch
       git apply <spill-ml>/patches/spill_predict.patch

2. Build only llc, X86 only, Release with assertions. This takes about 1.8 GB (1.2 GB source, 0.6 GB build) and about 1 hour on 2 cores:

       cmake -S llvm -B build -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_TARGETS_TO_BUILD=X86 \
             -DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_USE_LINKER=lld -DLLVM_INCLUDE_TESTS=OFF \
             -DLLVM_INCLUDE_BENCHMARKS=OFF -DLLVM_INCLUDE_EXAMPLES=OFF
       ninja -C build llc

   With no SPILL_* variables set, the patched llc allocates exactly like stock LLVM.
3. Compile PolyBench/C 4.2.1, zlib and lua to LLVM IR (clang -O2 -S -emit-llvm) into data/ir/.
4. Run scripts/parse_features.py, then scripts/dedupe_v2.py, then scripts/parse_first.py.

The parsers look for llc at ~/llvm-project/build/bin/llc. Set the LLC environment variable to use a different path.

A rebuild on 2026-10-08 with clang 18.1.3, zlib 1.3.1 and Lua 5.4.7 gave 874 spills over 73 programs against 893 in data/dataset3_first.csv, with identical interval and spill counts for 27 of 74 programs (most PolyBench kernels). The gap is mostly in Lua and points to different Lua or clang versions from the original run, which were not recorded. data/dataset3_first.csv is still the dataset used for training.

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
Current pipeline: parse_features.py -> dedupe_v2.py -> parse_first.py -> single_model_eval.py (main result), with first_eval.py, end_to_end_fair.py and robustness.py for the gate design and supporting checks. In-compiler work: export_tree.py -> (rebuild llc) -> in_compiler_eval.py, early_spill_experiment.py, early_spill_runtime_large.py.

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

## Inside LLVM: the tree in the allocator and an early-spill experiment
scripts/export_tree.py trains a depth-6 decision tree (44 leaves, min 20 samples per leaf) on the single-model features and writes it as C++ if-statements. spill_predict.patch puts it in RegAllocGreedy.cpp, computed from the same features at each live range's first examination. Grouped CV of this tree: PR-AUC 0.699 end to end, against 0.718 for gate + forest and 0.855 for the full single forest (results/tree_model.txt).

Switches (environment variables read by llc):
- SPILL_PREDICT=1 prints the tree's spill probability for every examination (SPILLDATA,P).
- SPILL_EARLY=p: on a live range's first round, if no register could be assigned and the tree's probability is at least p, spill it at once instead of trying eviction and splitting.

### The tree runs correctly inside llc (results/in_compiler_eval.txt)
On the rebuilt IR (73 programs, 16,967 spillable live ranges, 874 spills), the probability printed by llc equals the Python tree for 16,967 of 16,967 live ranges. Against LLVM's real decisions it scores PR-AUC 0.737, against 0.101 for spill weight (random 0.052). The tree was trained on the same three projects, so this checks the compiled-in model, not its accuracy on new code.

### Early spilling does not pay off (results/early_spill_experiment.txt, early_spill_runtime_large.txt)
All 76 IR files compiled with each setting; every setting passed -verify-machineinstrs, and every PolyBench kernel printed the same output as stock.

| Setting | Early spills | Spill instr. | Reload instr. | .text bytes | Allocator time |
| --- | --- | --- | --- | --- | --- |
| stock | 0 | 690 | 1205 | 288,841 | 0.207 s |
| early@0.98 | 281 | 713 (+3.3%) | 1189 (-1.3%) | 288,449 (-0.1%) | 0.243 s |
| early@0.95 | 602 | 694 (+0.6%) | 2813 (+133%) | 293,205 (+1.5%) | 0.208 s |
| early@0.90 | 630 | 695 (+0.7%) | 2815 (+134%) | 293,061 (+1.5%) | 0.199 s |

- At 0.95 and below, reload instructions more than double. About 29% of the live ranges spilled early at 0.95 are ones stock LLVM keeps in a register, and they tend to have more uses, so each costs several reloads. Skipping splitting also loses the chance to keep part of a range in a register.
- The allocator takes about 0.2 s of the 5.3 s spent in llc over all files, and the changes in it are within run-to-run noise. Skipping work for a few hundred live ranges saves nothing measurable.
- Run time: at the LARGE size, for the 8 PolyBench kernels whose spill code grew most at 0.95, early spilling changes run time by +0.8% (geometric mean), while stock timed against itself already differs by 2.7%. No measurable effect. MEDIUM-size runs are too short to time on this machine.

Conclusion: predicting LLVM's spill decisions works, including inside the compiler, but acting on the prediction to skip allocator work adds spill code, saves no compile time and does not change run time measurably. A useful in-compiler model would need a different label, such as which choice gives cheaper code, rather than imitating LLVM's own choice.

## Limits
- The forest is evaluated offline. Only the smaller tree runs inside LLVM, and the one use tested (early spilling) made code worse.
- The model predicts LLVM's own decisions. Copying them into LLVM would not by itself improve code; that needs a different use for the prediction or a different label.
- One target (x86-64), one LLVM version (19.1.7), three source projects.
- Seeds vary the forest; leave-one-project-out splits are fixed by project, so their spread reflects the model only.
