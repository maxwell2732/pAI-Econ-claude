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

  Stages 0–10 + Stages 2a + 3b | 8 Quality Gates | 6 Human Checkpoints

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

2. **Create the workspace** — all projects are stored under `Exploration/` in the repository root. Follow these steps:

   a. **Determine the next project number**: scan `Exploration/` for existing subdirectories matching `Project_NNN_*`. Take the highest NNN found and add 1. If none exist, start at 001. Zero-pad to 3 digits.

   b. **Derive the model abbreviation**: from the research input, identify the core economic model or mechanism (e.g., `BNE`, `PrincipalAgent`, `MatchingSearch`, `SignalGame`, `RoyModel`). Keep it concise (≤20 chars, no spaces — use CamelCase or hyphens). You will refine this abbreviation after Stage 0 if the intake reveals a more precise model family.

   c. **Create the directory**: `Exploration/Project_NNN_<ModelAbbrev>/` relative to the repo root (e.g., `Exploration/Project_003_RationalInattention/`). If the repo root is not writable, fall back to `~/Desktop/Exploration/Project_NNN_<ModelAbbrev>/`.

   d. All outputs go inside this workspace directory. Record the full path in `state.json`.

3. **Initialize state.json** — copy from `templates/state.json` and fill in `campaign_id`, `workspace`, `hypothesis`, and `started_at`.

4. **Save the hypothesis** — write the raw user input verbatim to `initial_context/hypothesis.md`.

5. **Begin Stage 0** — proceed immediately without asking further questions (unless the input is completely ambiguous, in which case ask ONE clarifying question).

---

## Workspace Layout

```
Exploration/
└── Project_NNN_<ModelAbbrev>/          ← e.g. Project_003_RationalInattention
    ├── state.json
    ├── initial_context/
    │   └── hypothesis.md                        # Raw user input (verbatim, never modified)
    ├── outputs/
    │   ├── research_intake.md                   # Stage 0
    │   ├── research_puzzle.md                   # Stage 1
    │   ├── literature_positioning.md            # Stage 2
    │   ├── empirical_reality_check.md           # Stage 2a
    │   ├── persona_council.md                   # Stage 3
    │   ├── canonical_model_match.md             # Stage 3b
    │   ├── model_primitives.md                  # Stage 4
    │   ├── assumption_audit.md                  # Stage 5
    │   ├── candidate_propositions.md            # Stage 6
    │   ├── proof_sketches.md                    # Stage 7
    │   ├── counterexamples_and_edge_cases.md    # Stage 8
    │   ├── economic_interpretation.md           # Stage 9
    │   ├── manuscript_skeleton.md               # Stage 10 — research scaffold
    │   ├── manuscript.tex                       # Stage 10 — LaTeX source
    │   └── manuscript.pdf                       # Stage 10 — academic PDF (pdflatex)
    ├── gates/
    │   ├── gate-01-novelty-risk.md              # After Stage 2
    │   ├── gate-01b-reality-fit.md              # After Stage 2a
    │   ├── gate-02b-canonical-fit.md            # After Stage 3b
    │   ├── gate-02c-theory-lineage.md           # After Stage 3b
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
| **2a** | **Empirical Reality Check** | empirical_reality_check.md | **Gate 1b** | — |
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

## ⚠️ Standing Rule: Empirical Claims in Any Stage Output

**Before using a real-world market, institution, country, policy, or industry as the motivating example — in any stage output, any manuscript section, or any introduction paragraph — the skill must explicitly distinguish between these four categories:**

| Category | Definition | Required treatment |
|----------|-----------|-------------------|
| **(1) Stylized assumption** | A simplification that is known to deviate from the real world, adopted for tractability | Label it: "We assume for tractability that…" or "As a stylization, we treat…" |
| **(2) Publicly supported fact** | A claim confirmed by web search in the current session (market share data, policy text, survey statistics) | Cite the source; record it in `empirical_reality_check.md` |
| **(3) Unverified contextual claim** | A claim that sounds plausible but has not been confirmed by web search | Label it: "We conjecture that…" or describe the setting as hypothetical |
| **(4) Potentially false assumption** | A claim contradicted by available evidence | Do NOT include it as empirical motivation; the paper must reframe or the pipeline must reroute |

**The model may proceed only if:**
- All unsupported claims are explicitly labeled as stylized assumptions or hypothetical context, AND
- No potentially false assumption is presented as an established fact about a named real-world setting.

**This rule applies to every stage output**, not only Stage 2a. It is enforced by Gate 1b (Reality Fit Gate) at Stage 2a, and can be flagged again at Stage 9 (Economic Interpretation Gate) if a manuscript draft introduces new unverified empirical claims.

---

## Quality Gate Logic

Eight gates protect the pipeline. Each gate runs immediately after its assigned stage. Read the gate prompt file, evaluate the preceding output, and produce a gate verdict.

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
| 1b | Reality Fit Gate | `prompts/02a-empirical-reality-check.md` (Gate 1b section) | Stage 2a | Stage 1 (restate context) or Stage 3b (change model family) |
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

### HiL-2 — Literature Positioning + Novelty Review + Reality Check (after Stage 2 + Gate 1 + Stage 2a + Gate 1b)

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  HiL-2 | Literature Positioning + Novelty Review + Reality Check
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Gate 1 result: [PASS / FAIL — one-line reason]

Key positioning findings:
[3-5 bullet summary of literature_positioning.md]

Gate 1b (Reality Fit) result: [PASS / CONDITIONAL PASS (REFRAME) / FAIL — one-line reason]

Reality check summary:
  Supported facts:       [list]
  Unsupported:           [list]
  Potentially false:     [list]
  Recommendation:        [PROCEED / REFRAME / REROUTE]

Please choose one:
  APPROVE     — Proceed to Stage 3 (Persona Council)
  ADJUST      — Specify which positioning to change; I will revise
  SCOPE DOWN  — Narrow the claim to sidestep the novelty risk; specify
  REFRAME     — Confirm the paper will describe a stylized market (not the real market)
  REROUTE     — Specify the corrected empirical setting or alternative model family
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
6. Append a structured entry to `logs/stage-log.md`:
   `[STAGE N — Stage Name] <ISO timestamp> | completed`
7. Update `state.json`: set `current_stage`, append to `completed_stages`, update `last_checkpoint`
8. If a gate follows: read the gate prompt file, evaluate the output, write gate result to `gates/gate-0N-*.md`.
   Then append to `logs/stage-log.md`:
   - On pass: `[GATE Nb — Gate Name] <ISO timestamp> | PASS`
   - On fail: `[GATE Nb — Gate Name] <ISO timestamp> | FAIL [SEVERITY] — <one-line reason>`
   After the researcher decides, append the decision:
   - `[GATE Nb — Gate Name] <ISO timestamp> | researcher: LOOP BACK TO STAGE X`
   - `[GATE Nb — Gate Name] <ISO timestamp> | researcher: PROCEED WITH CAVEAT — <note or "no note">`
9. If a HiL follows: present the checkpoint and wait for researcher input. After receiving the response,
   append to `logs/stage-log.md`:
   `[HiL-N — Checkpoint Name] <ISO timestamp> | researcher: <choice> — <notes or "no notes">`
   Also record the decision in `state.json` under `human_decisions`.

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

**⚠️ MANDATORY: Web-verify every citation before writing it to `literature_positioning.md`.**
For each paper identified in Stage 2, use WebSearch or WebFetch to confirm:
1. Author(s) and year are correct
2. Title is the actual published title (not a plausible-sounding variant)
3. Journal name, volume, issue, and page numbers are correct
4. The paper actually exists (search `"author year title site:scholar.google.com"` or similar)

Mark each citation as one of:
- **VERIFIED** — confirmed via web search (include the URL or source)
- **UNVERIFIED** — could not confirm; flag explicitly and DO NOT include in any manuscript bibliography

LLMs hallucinate plausible-sounding but nonexistent papers, especially for applied/empirical China literature. A citation that looks real is not the same as a citation that is real. Never include a citation in any output without web verification.

### Stage 2a — Empirical Reality Check / Institutional Context Check
- Prompt: `prompts/02a-empirical-reality-check.md`
- Output: `outputs/empirical_reality_check.md`
- Inputs: `outputs/research_puzzle.md`, `outputs/literature_positioning.md`
- Gate: **Gate 1b** (Reality Fit Gate — defined inside `prompts/02a-empirical-reality-check.md`) | HiL: none

**Purpose:** Before committing to a model structure, verify that the real-world context described by the researcher matches the factual requirements of the proposed model family. Use web search to check market concentration data, institutional rules, and evidence for claimed group or regional differences. This stage does NOT build a model — it only checks that the model's implicit factual assumptions are not contradicted by publicly available evidence.

**Gate 1b verdict logic:**
- **PASS**: All key factual assumptions SUPPORTED or WEAKLY SUPPORTED → proceed to Stage 3.
- **CONDITIONAL PASS (REFRAME)**: 1–2 assumptions UNSUPPORTED but not POTENTIALLY FALSE → proceed with a caveat: the paper must describe the setting as stylized, not claim to describe a specific real market. Document the reframing in `empirical_reality_check.md`.
- **FAIL (REROUTE — Stage 1)**: Any assumption POTENTIALLY FALSE, or 3+ UNSUPPORTED → stop; researcher must restate the puzzle with a corrected or explicitly hypothetical setting.
- **FAIL (REROUTE — Stage 3b)**: The proposed canonical model family is inconsistent with verified market structure → redirect Stage 3b to a different model family.

**⚠️ If Gate 1b fails, do NOT proceed to Stage 3.** Present the gate failure in the standard format and wait for the researcher to decide: loop back to Stage 1, commit to a hypothetical/stylized framing, or redirect to an alternative model family.

### Stage 3 — Theory Persona Council
- Prompt: `prompts/03-persona-council.md`
- Output: `outputs/persona_council.md`
- Inputs: `outputs/research_puzzle.md`, `outputs/literature_positioning.md`, `outputs/empirical_reality_check.md`
- Council format: 5 personas, 2-round council — independent assessment (Round 1) followed by cross-review and synthesis (Round 2)
- Gate: none | HiL: **HiL-3**

### Stage 3b — Canonical Model Matching
- Prompt: `prompts/03b-canonical-model-match.md`
- Output: `outputs/canonical_model_match.md`
- Inputs: `outputs/research_puzzle.md`, `outputs/literature_positioning.md`, `outputs/persona_council.md`, `model_library/` (all files)
- Gate: **Gate 2b** (Canonical Fit) then **Gate 2c** (Theory Lineage) — run both sequentially | HiL: none → proceed to Stage 4
- Note: if the research involves human capital, labor, automation, or AI-labor topics, the prompt explicitly requires checking `model_library/human_capital_and_labor/`
- Note: if the research involves market structure, pricing, platforms, or entry/competition topics, check `model_library/io/`
- Note: if the research involves trade patterns, trade liberalization, exporter behavior, or gains from trade, check `model_library/comparative-advantage-ricardian.md`, `model_library/heckscher-ohlin.md`, `model_library/new-trade-theory-krugman.md`, `model_library/melitz-firm-heterogeneity.md`

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

2. **⚠️ REFERENCE VERIFICATION GATE — mandatory before writing any bibliography.**

   This step must be completed before writing `manuscript.tex`. It cannot be skipped.

   a. Collect every citation you intend to include in the manuscript bibliography.

   b. For each citation, use WebSearch to verify it exists. Specifically confirm:
      - The exact title (not a plausible paraphrase)
      - Author names and year
      - Journal/publisher, volume, issue, page numbers

   c. Classify each citation:
      - **VERIFIED** — web search returned a matching result (record the source URL in `outputs/references_verified.md`)
      - **HALLUCINATED / UNCERTAIN** — web search found no matching result, or found a different paper with similar details

   d. **Only include VERIFIED citations in the manuscript bibliography.** Remove all UNCERTAIN or unverifiable ones, even if they look plausible. A citation that cannot be confirmed by web search does not belong in the paper.

   e. Write `outputs/references_verified.md` listing every proposed citation, its verification status, and the confirmation source or reason for exclusion.

   **Why this matters:** LLMs generate convincing-looking but nonexistent citations, especially for applied China literature and niche empirical papers. Author names, journal names, and years are often correct while the title, volume, or page numbers are fabricated. The only safe check is an external web search — internal confidence is not sufficient evidence.

3. **Generate the manuscript PDF** by writing a complete LaTeX file and compiling with pdflatex:

   a. **Title**: Use the format `"<brief description of the research problem>: A Theoretical Framework"`. The description should be one short phrase (≤ 8 words) that names the core question, not the key finding. Example: "Education Investment under China's Hukou System: A Theoretical Framework". Do NOT use a long descriptive title that will exceed 2 lines.

   b. **Write `outputs/manuscript.tex`** as a complete academic paper (not a skeleton). Follow the style of the reference PDF (`260311_genetic_diversity_skill_formation_model_v3.pdf`) exactly:

   ```latex
   \documentclass[12pt]{article}
   \usepackage[margin=1.2in]{geometry}
   \usepackage{amsmath,amsthm,amssymb}
   \usepackage{microtype}
   \usepackage[authoryear,round]{natbib}
   \usepackage{xcolor}
   \definecolor{linkgreen}{RGB}{0,120,100}
   \usepackage[colorlinks=true,linkcolor=linkgreen,citecolor=linkgreen,urlcolor=linkgreen]{hyperref}

   % Use \Large (not default \LARGE) so title fits in 2 lines
   \makeatletter
   \renewcommand{\maketitle}{%
     \begin{center}%
       {\Large\bfseries \@title \par}%
       \vskip 1.5em%
       {\normalsize \@author \par}%
       \vskip 0.8em%
       {\normalsize \@date}%
     \end{center}%
     \vskip 2em%
   }
   \makeatother

   \theoremstyle{plain}
   \newtheorem{proposition}{Proposition}
   \newtheorem{lemma}{Lemma}
   \newtheorem{corollary}{Corollary}
   \theoremstyle{definition}
   \newtheorem{assumption}{Assumption}
   \newtheorem{definition}{Definition}
   \theoremstyle{remark}
   \newtheorem{remark}{Remark}

   \title{<Brief problem description>: A Theoretical Framework}
   \author{%
     \texttt{pAI-Econ-claude} (\texttt{theoretical-economics-claude-skill})\\[4pt]
     \small\url{https://github.com/maxwell2732/pAI-Econ-claude}\\[2pt]
     \small Claude Sonnet 4.6%
   }
   \date{Draft: <Month DD, YYYY>}
   ```

   The paper body should contain real academic prose: Introduction, Model (with subsections), Results (Propositions/Lemmas with proofs or proof sketches), Comparative Statics, Welfare, Boundary Cases, Testable Predictions, and a `thebibliography` section. Do NOT write a skeleton outline or include meta-commentary. See `feedback-pdf-style.md` in project memory for the complete style rules.

   c. **Compile** with pdflatex (twice for cross-references):
   ```
   pdflatex -interaction=nonstopmode <WORKSPACE>/outputs/manuscript.tex
   pdflatex -interaction=nonstopmode <WORKSPACE>/outputs/manuscript.tex
   ```
   Check the `.log` file for lines beginning with `!` (fatal errors). Warnings about rerunning are expected on the first pass and safe to ignore.

   d. If compilation succeeds, confirm `outputs/manuscript.pdf` exists and record `"pdf_generation": "success"` in `state.json`.

   e. If pdflatex fails, record `"pdf_generation": "failed"` in `state.json`, print the error lines from the `.log` file, and note what the researcher must fix manually.

3. Print completion summary:

```
================================================================
  [COMPLETE] Theoretical Economics Pipeline Finished
================================================================
  Workspace: Exploration/Project_NNN_<ModelAbbrev>/
  Stages completed: 11 (0–10)
  Gate results:
    Gate 1  (Novelty Risk):       [PASS / FAIL+caveat]
    Gate 1b (Reality Fit):        [PASS / REFRAME / FAIL+caveat]
    Gate 2b (Canonical Fit):      [PASS / FAIL+caveat]
    Gate 2c (Theory Lineage):     [PASS / FAIL+caveat]
    Gate 2  (Model Coherence):    [PASS / FAIL+caveat]
    Gate 3  (Non-triviality):     [PASS / FAIL+caveat]
    Gate 4  (Proof Integrity):    [PASS / FAIL+caveat]
    Gate 5  (Economic Meaning):   [PASS / FAIL+caveat]

  Output files:
    outputs/research_puzzle.md
    outputs/literature_positioning.md
    outputs/empirical_reality_check.md
    outputs/persona_council.md
    outputs/canonical_model_match.md
    outputs/model_primitives.md
    outputs/assumption_audit.md
    outputs/candidate_propositions.md
    outputs/proof_sketches.md
    outputs/counterexamples_and_edge_cases.md
    outputs/economic_interpretation.md
    outputs/manuscript_skeleton.md
    outputs/manuscript.tex                   ← LaTeX source (pdflatex)
    outputs/manuscript.pdf                   ← Academic PDF (Computer Modern)

  Suggested next steps:
    - Open manuscript.pdf to review the theoretical framework paper
    - Formalize proof sketches into complete proofs
    - Expand comparative statics with numerical calibration
    - Run literature search using literature_positioning.md keywords
    - Extend manuscript.tex with empirical motivation or extensions
================================================================
```

---

## Implementation Notes

- Always use absolute paths for file reads and writes
- Print stage banners clearly so the researcher can track progress
- Never modify `initial_context/hypothesis.md` after it is written
- When in doubt about a stage output's quality, note concerns in the output file rather than silently lowering quality
- All output files are in Markdown; the manuscript skeleton may contain LaTeX fragments
- The `prompts/` and `templates/` directory paths are relative to the directory containing this SKILL.md file
- All project workspaces live under `Exploration/` in the repo root, named `Project_NNN_<ModelAbbrev>/`. Never write project files to the repo root directly.

---

## Attribution

**theoretical-economics-claude-skill** is developed by:
- **Chen Zhu** — China Agricultural University (CAU)
- **Xiaolu Wang** — China Agricultural University (CAU)
- **Weilong Zhang** — University of Cambridge

Based on **pAI/MSc** by Mahmoud Abdelmoneum, Pierfrancesco Beneventano, and Tomaso Poggio (MIT + Perseus Labs).
Technical report: https://dspace.mit.edu/handle/1721.1/165377

Repository: **pAI-Econ-claude** (MIT License)
