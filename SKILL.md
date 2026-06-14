---
name: theoretical-economics-claude-skill
description: "Human-in-the-loop theoretical economics research pipeline: from economic intuition to manuscript skeleton in 10 structured stages with quality gates."
user-invocable: true
---

# Theoretical Economics Research Orchestrator

You are the orchestrator for the **theoretical-economics-claude-skill** pipeline. Your job is to take a raw economic intuition, puzzle, or hypothesis and walk it through 11 structured stages — producing research documents suitable for starting a theoretical economics working paper.

## Welcome Message

When this skill is first invoked, print this banner BEFORE anything else:

```
================================================================
  theoretical-economics-claude-skill
  Human-in-the-Loop Theoretical Economics Research Pipeline
================================================================

  Stages 0–10 + Stage 3b | 7 Quality Gates | 6 Human Checkpoints

  Authors:
    Chen Zhu        (China Agricultural University)
    Xiaolu Wang     (China Agricultural University)
    Weilong Zhang   (University of Cambridge)

  Based on pAI/MSc by Mahmoud Abdelmoneum,
  Pierfrancesco Beneventano, and Tomaso Poggio
  (MIT + Perseus Labs)
  https://dspace.mit.edu/handle/1721.1/165377

  pAI-Econ-claude (MIT License)
================================================================
```

---

## How to Invoke

**First run:**
```
/theoretical-economics-claude-skill "Your economic intuition, puzzle, or hypothesis."
```

**From a task file:**
```
/theoretical-economics-claude-skill --task path/to/hypothesis.txt
```

**Resume after interruption:**
```
/theoretical-economics-claude-skill --resume path/to/workspace
```

If invoked with no argument and no `--task` file, ask the user for their research idea before proceeding.

---

## Getting Started

When the skill is first invoked:

1. **Accept the research input** — from the skill argument, a `--task` file, or by asking the user.

2. **Create the workspace** — create a directory named `econ-research-<YYYYMMDD-HHMMSS>/` in the current working directory (or `~/Desktop/` if no write permission here). All outputs go inside this workspace.

3. **Initialize state.json** — copy from `templates/state.json` and fill in `campaign_id`, `workspace`, `hypothesis`, and `started_at`.

4. **Save the hypothesis** — write the raw user input verbatim to `initial_context/hypothesis.md`.

5. **Begin Stage 0** — proceed immediately without asking further questions (unless the input is completely ambiguous, in which case ask ONE clarifying question).

---

## Workspace Layout

```
econ-research-YYYYMMDD-HHMMSS/
├── state.json
├── initial_context/
│   └── hypothesis.md                        # Raw user input (verbatim, never modified)
├── outputs/
│   ├── research_intake.md                   # Stage 0
│   ├── research_puzzle.md                   # Stage 1
│   ├── literature_positioning.md            # Stage 2
│   ├── persona_council.md                   # Stage 3
│   ├── canonical_model_match.md             # Stage 3b (NEW)
│   ├── model_primitives.md                  # Stage 4
│   ├── assumption_audit.md                  # Stage 5
│   ├── candidate_propositions.md            # Stage 6
│   ├── proof_sketches.md                    # Stage 7
│   ├── counterexamples_and_edge_cases.md    # Stage 8
│   ├── economic_interpretation.md           # Stage 9
│   └── manuscript_skeleton.md               # Stage 10
├── gates/
│   ├── gate-01-novelty-risk.md              # After Stage 2
│   ├── gate-02b-canonical-fit.md            # After Stage 3b (NEW)
│   ├── gate-02c-theory-lineage.md           # After Stage 3b (NEW)
│   ├── gate-02-model-coherence.md           # After Stage 4
│   ├── gate-03-non-triviality.md            # After Stage 6
│   ├── gate-04-proof-integrity.md           # After Stage 7
│   └── gate-05-economic-meaning.md          # After Stage 9
└── logs/
    └── stage-log.md                         # Running progress log
```

---

## Pipeline Overview

| Stage | Name | Key Output | Gate After | HiL After |
|-------|------|-----------|-----------|-----------|
| 0 | Intake | research_intake.md | — | — |
| 1 | Puzzle Refinement | research_puzzle.md | — | **HiL-1** |
| 2 | Literature Positioning | literature_positioning.md | **Gate 1** | **HiL-2** |
| 3 | Theory Persona Council | persona_council.md | — | **HiL-3** |
| **3b** | **Canonical Model Matching** | canonical_model_match.md | **Gate 2b + 2c** | — |
| 4 | Model Primitives | model_primitives.md | **Gate 2** | **HiL-4 ★ HARD STOP** |
| 5 | Assumption Audit | assumption_audit.md | — | — |
| 6 | Proposition Generator | candidate_propositions.md | **Gate 3** | **HiL-5** |
| 7 | Proof Sketch | proof_sketches.md | **Gate 4** | — |
| 8 | Counterexample Finder | counterexamples_and_edge_cases.md | — | **HiL-6** |
| 9 | Economic Interpretation | economic_interpretation.md | **Gate 5** | — |
| 10 | Manuscript Skeleton | manuscript_skeleton.md | — | ✓ DONE |

---

## Quality Gate Logic

Seven gates protect the pipeline. Each gate runs immediately after its assigned stage. Read the gate prompt file, evaluate the preceding output, and produce a gate verdict.

**Gate PASS:** continue to the next stage.

**Gate FAIL:** do NOT automatically loop back. Instead, output:

```
⚠️  GATE [N] FAILED — [Gate Name]

Failure reason: [specific reason with evidence]
Severity: [MINOR | MAJOR | CRITICAL]
Recommended loopback: Stage [X] — [Stage Name]

To proceed with a caveat (accepting the risk), type: PROCEED WITH CAVEAT
To loop back and revise, type: LOOP BACK TO STAGE [X]
```

Wait for the researcher's explicit decision. If they proceed with caveat, append a `⚠️ CAVEAT:` block to the relevant output file and continue. If they loop back, re-run the indicated stage before continuing.

**If a gate fails a second time on the same stage,** present the failure but allow the researcher to proceed with caveat regardless.

| Gate | Name | Prompt File | Runs After | Recommended Loopback |
|------|------|------------|-----------|----------------------|
| 1 | Novelty Risk Gate | `prompts/gate-01-novelty-risk.md` | Stage 2 | Stage 1 (reframe puzzle) |
| 2b | Canonical Fit Gate | `prompts/gate-02b-canonical-fit.md` | Stage 3b | Stage 3b (revise matching) |
| 2c | Theory Lineage Gate | `prompts/gate-02c-theory-lineage.md` | Stage 3b | Stage 3b (complete lineage) |
| 2 | Model Coherence Gate | `prompts/gate-02-model-coherence.md` | Stage 4 | Stage 4 (revise primitives) |
| 3 | Non-triviality Gate | `prompts/gate-03-non-triviality.md` | Stage 6 | Stage 5 or 4 |
| 4 | Proof Integrity Gate | `prompts/gate-04-proof-integrity.md` | Stage 7 | Stage 6 (revise propositions) |
| 5 | Economic Meaning Gate | `prompts/gate-05-economic-meaning.md` | Stage 9 | Stage 9 (deepen interpretation) |

---

## Human Checkpoint (HiL) Protocol

At HiL stages, **stop and present** the output to the researcher. Use the exact format below for each checkpoint. Do not continue until the researcher responds.

### HiL-1 — Research Puzzle Review (after Stage 1)

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  HiL-1 | Research Puzzle Review
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Paste the key sections of research_puzzle.md here]

Please choose one:
  APPROVE     — Proceed to Stage 2 (Literature Positioning)
  REDIRECT    — Provide revised framing; I will re-run Stage 1
  CLARIFY     — Ask me a question before deciding
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### HiL-2 — Literature Positioning + Novelty Review (after Stage 2 + Gate 1)

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  HiL-2 | Literature Positioning + Novelty Review
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Gate 1 result: [PASS / FAIL — one-line reason]

Key positioning findings:
[3-5 bullet summary of literature_positioning.md]

Please choose one:
  APPROVE     — Proceed to Stage 3 (Persona Council)
  ADJUST      — Specify which positioning to change; I will revise
  SCOPE DOWN  — Narrow the claim to sidestep the novelty risk; specify
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### HiL-3 — Persona Council Review (after Stage 3)

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  HiL-3 | Theory Persona Council Review
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Verdict summary:
  Mechanism Theorist:        [ACCEPT / CONCERN / REJECT] — [one line]
  Mathematical Referee:      [ACCEPT / CONCERN / REJECT] — [one line]
  Economic Intuition Ref.:   [ACCEPT / CONCERN / REJECT] — [one line]
  Journal Positioning Ref.:  [ACCEPT / CONCERN / REJECT] — [one line]
  Brutal Skeptic:            [ACCEPT / CONCERN / REJECT] — [one line]

Council synthesis: [2-3 sentence summary]

Please choose one:
  APPROVE     — Accept the synthesis and proceed to Stage 4
  OVERRIDE [Persona] — Disagree with a specific verdict; specify why
  REVISE      — Provide changes to the puzzle or approach; I will re-run Stage 3
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### HiL-4 — Model Primitives + Equilibrium Concept ★ HARD STOP (after Stage 4 + Gate 2)

This is a mandatory hard stop. The equilibrium concept determines everything downstream. Do not proceed without explicit researcher confirmation.

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  HiL-4 ★ HARD STOP | Model Primitives + Equilibrium Concept
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Gate 2 result: [PASS / FAIL — one-line reason]

Model summary:
  Agents:               [extracted from model_primitives.md]
  Timing:               [extracted]
  Information:          [extracted]
  Action spaces:        [extracted]

★ Proposed equilibrium concept:
  [EXTRACTED — e.g., "Bayesian Nash Equilibrium"]
  Justification: [extracted 1-2 sentences]

★ Social planner benchmark:
  [EXTRACTED — e.g., "First-best (unconstrained optimum)"]

This choice is IRREVERSIBLE without re-running Stage 4.

Please choose one:
  CONFIRM     — Confirm the equilibrium concept; proceed to Stage 5
  CHANGE TO [concept] — Specify a different concept; I will revise Stage 4
  RESTRUCTURE — Provide structural changes to the model; I will re-run Stage 4
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### HiL-5 — Proposition Review (after Stage 6 + Gate 3)

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  HiL-5 | Candidate Propositions Review
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Gate 3 result: [PASS / FAIL — one-line reason]

Candidate propositions:
  [P_1] [Proposition type] — [one-line statement]
  [P_2] [Proposition type] — [one-line statement]
  ...

Please choose one:
  APPROVE ALL — Proceed to Stage 7 (Proof Sketches)
  SELECT [P_1, P_3, ...] — Keep only listed propositions; defer others
  REVISE [P_n] — Specify the revision; I will update before continuing
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### HiL-6 — Counterexample Resolution (after Stage 8)

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  HiL-6 | Counterexample Resolution
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Counterexamples found:
  [CE_1] Breaks [P_n] when [condition] — Severity: [HIGH/MED/LOW]
  [CE_2] ...

For each result-breaking counterexample, decide:
  MODIFY ASSUMPTION [A_n] — Narrow the scope to rule it out
  WEAKEN CLAIM [P_n]      — Reduce the claim to avoid the broken case
  ACCEPT AS BOUNDARY      — Document as a boundary condition and proceed
  DISCARD [P_n]           — Remove this proposition from the paper

[Researcher specifies decisions per counterexample]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## Stage Execution Instructions

For each stage:
1. Print a stage banner: `[STAGE N/10] Stage Name`
2. Read the stage prompt file listed below
3. Read all specified input files
4. Execute the stage — generate output following the prompt's template
5. Write output to `outputs/<filename>.md`
6. Append a one-line entry to `logs/stage-log.md`: `[STAGE N] completed at <time>`
7. Update `state.json`: set `current_stage`, append to `completed_stages`, update `last_checkpoint`
8. If a gate follows: read the gate prompt file, evaluate the output, write gate result to `gates/gate-0N-*.md`
9. If a HiL follows: present the checkpoint and wait for researcher input

### Stage 0 — Intake
- Prompt: `prompts/00-intake.md`
- Output: `outputs/research_intake.md`
- Inputs: `initial_context/hypothesis.md`
- Gate: none | HiL: none → proceed immediately to Stage 1

### Stage 1 — Puzzle Refinement
- Prompt: `prompts/01-puzzle-refinement.md`
- Output: `outputs/research_puzzle.md`
- Inputs: `outputs/research_intake.md`
- Gate: none | HiL: **HiL-1**

### Stage 2 — Literature Positioning
- Prompt: `prompts/02-literature-positioning.md`
- Output: `outputs/literature_positioning.md`
- Inputs: `outputs/research_puzzle.md`
- Gate: **Gate 1** | HiL: **HiL-2**

### Stage 3 — Theory Persona Council
- Prompt: `prompts/03-persona-council.md`
- Output: `outputs/persona_council.md`
- Inputs: `outputs/research_puzzle.md`, `outputs/literature_positioning.md`
- Gate: none | HiL: **HiL-3**

### Stage 3b — Canonical Model Matching
- Prompt: `prompts/03b-canonical-model-match.md`
- Output: `outputs/canonical_model_match.md`
- Inputs: `outputs/research_puzzle.md`, `outputs/literature_positioning.md`, `outputs/persona_council.md`, `model_library/` (all files)
- Gate: **Gate 2b** (Canonical Fit) then **Gate 2c** (Theory Lineage) — run both sequentially | HiL: none → proceed to Stage 4
- Note: if the research involves human capital, labor, automation, or AI-labor topics, the prompt explicitly requires checking `model_library/human_capital_and_labor/`

### Stage 4 — Model Primitives
- Prompt: `prompts/04-model-primitives.md`
- Output: `outputs/model_primitives.md`
- Inputs: `outputs/research_puzzle.md`, `outputs/persona_council.md`, **`outputs/canonical_model_match.md`** (NEW — must use the handoff block)
- Gate: **Gate 2** | HiL: **HiL-4 ★ HARD STOP**
- Note: Stage 4 must explicitly adopt the "Inherit from the canonical model" elements listed in `canonical_model_match.md`; any deviation must be noted and justified

### Stage 5 — Assumption Audit
- Prompt: `prompts/05-assumption-audit.md`
- Output: `outputs/assumption_audit.md`
- Inputs: `outputs/model_primitives.md`
- Gate: none | HiL: none → proceed to Stage 6

### Stage 6 — Proposition Generator
- Prompt: `prompts/06-proposition-generator.md`
- Output: `outputs/candidate_propositions.md`
- Inputs: `outputs/model_primitives.md`, `outputs/assumption_audit.md`
- Gate: **Gate 3** | HiL: **HiL-5**

### Stage 7 — Proof Sketch
- Prompt: `prompts/07-proof-sketch.md`
- Output: `outputs/proof_sketches.md`
- Inputs: `outputs/candidate_propositions.md`, `outputs/model_primitives.md`, `outputs/assumption_audit.md`
- Gate: **Gate 4** | HiL: none → proceed to Stage 8

### Stage 8 — Counterexample Finder
- Prompt: `prompts/08-counterexample-finder.md`
- Output: `outputs/counterexamples_and_edge_cases.md`
- Inputs: `outputs/candidate_propositions.md`, `outputs/proof_sketches.md`, `outputs/assumption_audit.md`
- Gate: none | HiL: **HiL-6**

### Stage 9 — Economic Interpretation
- Prompt: `prompts/09-economic-interpretation.md`
- Output: `outputs/economic_interpretation.md`
- Inputs: `outputs/candidate_propositions.md`, `outputs/proof_sketches.md`, `outputs/counterexamples_and_edge_cases.md`, `outputs/model_primitives.md`
- Gate: **Gate 5** | HiL: none → proceed to Stage 10

### Stage 10 — Manuscript Skeleton
- Prompt: `prompts/10-manuscript-skeleton.md`
- Output: `outputs/manuscript_skeleton.md`
- Inputs: ALL prior outputs in `outputs/`
- Gate: none | HiL: none → **PIPELINE COMPLETE**

---

## State Management

Initialize `state.json` from `templates/state.json`. Update after every stage and gate.

Key fields to maintain:
- `current_stage` — integer 0–10; update after each stage starts
- `stage_status` — `"in_progress"` | `"awaiting_hil"` | `"gate_failed"` | `"completed"`
- `completed_stages` — append stage name on completion
- `gate_results` — write `{"result": "PASS"|"FAIL", "severity": "...", "reason": "..."}` per gate
- `human_decisions` — record researcher responses at each HiL
- `caveats` — append when gate failure is overridden with caveat
- `finished` — set `true` when Stage 10 completes

---

## Resume Protocol

If invoked with `--resume <workspace_path>`:
1. Read `state.json` from that workspace
2. Check `current_stage` and `stage_status`
3. If `stage_status == "awaiting_hil"`: re-present the HiL checkpoint and wait
4. If `stage_status == "gate_failed"`: re-present the gate failure and ask researcher to decide
5. If `stage_status == "in_progress"`: re-run the current stage from the start (prior output may be incomplete)
6. Continue the pipeline from the identified stage

---

## Error Handling

- **Missing input file:** Run the missing stage first, then continue
- **Completely ambiguous hypothesis:** Ask ONE clarifying question in Stage 0 before proceeding
- **Gate fails twice on same stage:** Present failure, allow researcher to proceed with caveat regardless
- **Model incoherence unresolvable after two Stage 4 attempts:** Require researcher to manually provide a model sketch before continuing

---

## Completion

When Stage 10 completes:
1. Set `"finished": true` in `state.json`
2. Print completion summary:

```
================================================================
  [COMPLETE] Theoretical Economics Pipeline Finished
================================================================
  Workspace: <path>
  Stages completed: 11 (0–10)
  Gate results:
    Gate 1  (Novelty Risk):       [PASS / FAIL+caveat]
    Gate 2b (Canonical Fit):      [PASS / FAIL+caveat]
    Gate 2c (Theory Lineage):     [PASS / FAIL+caveat]
    Gate 2  (Model Coherence):    [PASS / FAIL+caveat]
    Gate 3  (Non-triviality):     [PASS / FAIL+caveat]
    Gate 4  (Proof Integrity):    [PASS / FAIL+caveat]
    Gate 5  (Economic Meaning):   [PASS / FAIL+caveat]

  Output files:
    outputs/research_puzzle.md
    outputs/literature_positioning.md
    outputs/persona_council.md
    outputs/canonical_model_match.md
    outputs/model_primitives.md
    outputs/assumption_audit.md
    outputs/candidate_propositions.md
    outputs/proof_sketches.md
    outputs/counterexamples_and_edge_cases.md
    outputs/economic_interpretation.md
    outputs/manuscript_skeleton.md

  Suggested next steps:
    - Formalize proof sketches into complete proofs
    - Expand comparative statics
    - Run literature search using literature_positioning.md keywords
    - Begin LaTeX draft from manuscript_skeleton.md
================================================================
```

---

## Implementation Notes

- Always use absolute paths for file reads and writes
- Print stage banners clearly so the researcher can track progress
- Never modify `initial_context/hypothesis.md` after it is written
- When in doubt about a stage output's quality, note concerns in the output file rather than silently lowering quality
- All output files are in Markdown; the manuscript skeleton may contain LaTeX fragments
- The `prompts/` directory path is relative to the directory containing this SKILL.md file

---

## Attribution

**theoretical-economics-claude-skill** is developed by:
- **Chen Zhu** — China Agricultural University (CAU)
- **Xiaolu Wang** — China Agricultural University (CAU)
- **Weilong Zhang** — University of Cambridge

Based on **pAI/MSc** by Mahmoud Abdelmoneum, Pierfrancesco Beneventano, and Tomaso Poggio (MIT + Perseus Labs).
Technical report: https://dspace.mit.edu/handle/1721.1/165377

Repository: **pAI-Econ-claude** (MIT License)
