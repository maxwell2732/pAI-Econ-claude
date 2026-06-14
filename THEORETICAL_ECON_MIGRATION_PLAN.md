# Theoretical Economics Migration Plan
## pAI-Econ-claude → theoretical-economics-claude-skill

> **Status:** Audit complete. This document defines the migration design. No prompt files have been modified yet.
>
> **Scope of this document:** Read-only design specification. Implementation proceeds phase by phase with researcher approval at each stage.

---

## 1. Current Repo Structure Summary

```
pAI-Econ-claude/
├── SKILL.md                             # Master orchestrator (457 lines, 11-phase state machine)
├── README.md                            # Full docs (424 lines)
├── LICENSE                              # MIT 2026, Pierfrancesco Beneventano
├── settings.json                        # Harness config (proxy, permissions, hooks)
├── .claude/settings.local.json          # Web access: arxiv, SSRN, NIH PMC
├── .gitignore / .gitattributes
├── docs/
│   ├── execution-protocol.md            # Multi-pass resume + pass limits
│   ├── explore-mode.md                  # Discovery-mode pipeline variant
│   ├── persona-council.md               # Phase 1 debate rules (3-5 rounds)
│   ├── persona-post-review.md           # Phase 11 final evaluation
│   ├── pre-writeup-council.md           # Phase 7b advisory council
│   ├── review-cycle.md                  # Human review + restart logic
│   └── token-logging.md                 # Per-phase cost logging
├── prompts/                             # 33 agent prompt files (01–33)
├── templates/
│   ├── author_style_guide_default.md    # ML theory writing standard (150+ lines)
│   └── state.json                       # State machine template
└── examples/
    └── quickstart-task.txt              # ML-domain example hypothesis
```

**Architecture summary:** Single orchestrator (SKILL.md) drives a resumable JSON state machine through 11 phases. Each phase loads one or more numbered prompt files from `prompts/` as subagent instructions. Quality is enforced by a 3-persona debate (Phase 1), adversarial novelty falsification (Phase 2), goal completion verification (Phase 5d), a hard-blocker reviewer (Phase 10), and escalating retry loops.

**License:** MIT 2026, Pierfrancesco Beneventano. Attribution to pAI/MSc (Abdelmoneum, Beneventano, Poggio, MIT + Perseus Labs) must be preserved in all forks.

---

## 2. Original Pipeline Stages (pAI/MSc — ML Theory + Experiments)

| Phase | Name | Key Prompts | Notes |
|-------|------|-------------|-------|
| 1 | Persona Council (3-persona debate, 3-5 rounds) | 01, 02, 03, 04 | ML personas: Practical Compass, Rigor & Novelty, Narrative Architect |
| 2 | Literature Review (adversarial novelty falsification) | 05 | Venues: arXiv, NeurIPS, ICML, ICLR, JMLR, COLT |
| 3 | Brainstorm (≥3 approaches per hypothesis) | 06 | Universal |
| 4 | Formalize Goals (track decomposition: theory / experiment) | 07, 21 | Universal |
| 5a | Theory Track: math lit → claim graph → prove → verify | 08, 09, 10, 11 | ML proof techniques (PAC-Bayes, NTK, concentration) |
| 5b | Experiment Track: design → execute → validate | 12, 13, 14 | PyTorch, GPU, datasets |
| 5c | Track Merge (theory + experiment synthesis) | 22 | Produces unified narrative |
| 5d | Verify Completion (3-way: COMPLETE / INCOMPLETE / RETHINK) | 23 | Universal gate |
| 6 | Formalize Results (evidence collection, goal assessment) | 15 | Universal |
| 7 | Resource Prep + Pre-writeup Council | 17, pre-writeup-council.md | Universal |
| 7c | Narrative Voice | 25 | ML writing voice |
| 8 | Writeup (12-pass LaTeX generation) | 18 | ML exemplar papers |
| 9 | Proofreading | 19 | Universal |
| 10 | Reviewer (quality gate, hard blockers) | 20 | ML venue norms |
| 10b | Duality Check (theory-experiment consistency gate) | 16 | ML-specific gate |
| 11 | Persona Post-Review (2 rounds, Narrative veto) | persona-post-review.md | Universal |
| — | Follow-up Lit Review (duality loopback) | 24 | Universal |
| — | Explore Mode variants | 30, 31, 32, 33 | ML explore-mode |

---

## 3. Theoretical Economics New Pipeline Stages

Target: 12 research stages, theory-only (no GPU experiments), human-in-the-loop at critical decision points.

| # | Stage | Description | Maps From |
|---|-------|-------------|-----------|
| 1 | **Research Puzzle Refinement** | Sharpen intuition into a precise economic puzzle with clear welfare / efficiency / equilibrium question | Phase 1 Persona Council (new personas) |
| 2 | **Literature Positioning + Novelty Check** | Adversarial falsification against ECMA/AER/REStud/JPE/QJE/JET/TE/RAND; assign OPEN/PARTIAL/KNOWN to each claim | Phase 2 (venue update) |
| 3 | **Model Primitives** | Define agents, goods, environments, strategy spaces, information structure, timing | Phase 3 + Phase 4 (new prompt 07b) |
| 4 | **Assumptions** | Explicit labeled assumptions A1–An with motivation, scope, falsifiability | New prompt 07c |
| 5 | **Equilibrium Concept** | Choose and justify solution concept (Nash, SPE, BNE, PBE, CE, Competitive Eq., etc.) | New prompt 07d — **HARD STOP for researcher** |
| 6 | **Propositions** | Dependency-structured claim graph: theorems, lemmas, corollaries, definitions | Phase 5a proposer (retrain) |
| 7 | **Proof Sketches + Formal Proofs** | Proof drafts using economics proof techniques; update claim graph statuses | Phase 5a prover (retrain) |
| 8 | **Counterexample / Edge Case Checks** | Adversarially relax each assumption one at a time; identify binding constraints | New prompt 12 (replaces experiment-design) |
| 9 | **Comparative Statics** | Sign conditions, monotonicity, envelope theorem applications, parameter sensitivity | New prompt 13 (replaces experimentation) |
| 10 | **Welfare Implications** | Efficiency analysis, distributional implications, policy benchmarks (first-best, second-best) | New prompt 14 (replaces experiment-verify) |
| 11 | **Economic Intuition** | Plain-language narrative per result; stress-test against simple examples | New prompt 16 (replaces duality-check) |
| 12 | **Manuscript Skeleton** | Full LaTeX paper: intro, model, results, discussion, conclusion, appendix | Phase 8 Writeup (update exemplars) |

Supporting infrastructure carried over unchanged:
- Resumable state machine (SKILL.md, state.json)
- Verify Completion 3-way routing (Phase 5d)
- Formalize Results (Phase 6)
- Resource Prep + Pre-writeup Council (Phase 7)
- Proofreading + Reviewer quality gate (Phases 9-10)
- Post-review Personas (Phase 11)
- Human review cycle (review-cycle.md)
- Explore Mode (retrained as "Model Space Exploration")

---

## 4. File-Level Modification Plan

### 4a. Files to KEEP UNCHANGED

| File | Reason |
|------|--------|
| `SKILL.md` | Core routing is domain-agnostic; only phase names and prompt path references need updating |
| `docs/execution-protocol.md` | Resume protocol is universal |
| `docs/explore-mode.md` | Exploration mindset suits economics model search; update phase references only |
| `docs/persona-council.md` | Debate framework is universal; persona content retrained separately |
| `docs/persona-post-review.md` | Universal quality gate |
| `docs/pre-writeup-council.md` | Universal pre-writeup advisory |
| `docs/review-cycle.md` | Human review restart mechanism is universal |
| `docs/token-logging.md` | Cost logging is universal |
| `templates/state.json` | State machine template is universal |
| `settings.json` | Harness config (add economics web domains only) |
| `.gitignore` / `.gitattributes` | Unchanged |
| `LICENSE` | MIT attribution must be preserved |
| `prompts/06-brainstorm.md` | Approach generation is universal |
| `prompts/07-formalize-goals.md` | Goal formalization is universal |
| `prompts/15-formalize-results.md` | Evidence collection is universal |
| `prompts/17-resource-prep.md` | Resource prep is universal |
| `prompts/19-proofreading.md` | Proofreading is universal |
| `prompts/21-research-plan-writeup.md` | Research plan writeup is universal |
| `prompts/22-track-merge.md` | Track merge (theory-only subset) |
| `prompts/23-verify-completion.md` | 3-way routing gate is universal |
| `prompts/24-followup-lit-review.md` | Loopback lit review is universal |
| `prompts/30-math-explorer.md` | Iterative math exploration is universal |
| `prompts/33-explore-evaluator.md` | Explore evaluator is universal |

### 4b. Files to MODIFY (targeted edits only)

| File | What to Change |
|------|----------------|
| `SKILL.md` | Phase names; prompt file path references (08→08-econ-lemma-library, 09→09-econ-proposer, 10→10-econ-prover, 11→11-econ-verifier, 12→12-econ-counterexamples, 13→13-econ-comp-statics, 14→14-econ-welfare, 16→16-econ-intuition, 25→25-econ-narrative-voice); insert HiL checkpoint blocks at Phases 4b/4c/5a-2/5b/5d; remove duality gate (theory-only track); update welcome message with economics attribution line |
| `README.md` | Domain description; pipeline table; Mermaid flowcharts; exemplar research questions (replace ML batch norm example with economics mechanism design example) |
| `.claude/settings.local.json` | Add economics journal domains: `econometrica.wiley.com`, `jstor.org`, `sciencedirect.com`, `aeaweb.org`, `nber.org`, `ideas.repec.org` |
| `templates/author_style_guide_default.md` | Replace ML exemplar papers with economics exemplars; keep all writing principles unchanged; swap: Luxburg → Maskin (mechanism design), Tropp → Myerson (revenue equivalence), Vershynin → Acemoglu (institutions), Bottou → Tirole (industrial org), Peyton Jones → Thomson (writing in economics) |
| `examples/quickstart-task.txt` | Replace ML hypothesis with economics example, e.g.: "Investigate whether asymmetric information in a bilateral trade setting leads to full trade breakdown under Myersonian assumptions, and characterize the set of budget-balanced incentive-compatible mechanisms." |
| `prompts/20-reviewer.md` | Replace ML venue norms (NeurIPS/ICML review criteria) with economics venue norms (ECMA, AER referee standards); update example hard blockers to economics context |

### 4c. Prompt Files to RETRAIN (replace content, same filename)

| File | Old Role | New Role | Economics Content |
|------|----------|----------|-------------------|
| `prompts/01-persona-practical.md` | Practical Compass (industry AI) | **Policy Pragmatist** | Evaluates policy relevance, institutional feasibility, central bank / regulator / IMF applicability |
| `prompts/02-persona-rigor.md` | Rigor & Novelty (COLT/NeurIPS theory) | **Economic Theorist** | Evaluates mathematical rigor, novelty of equilibrium existence/uniqueness/efficiency claims, proofs |
| `prompts/03-persona-narrative.md` | Narrative Architect (ML editor) | **Economic Historian** | Evaluates historical grounding, empirical plausibility, connection to documented economic phenomena |
| `prompts/04-persona-synthesis.md` | Synthesis Coordinator | **Econ Synthesis Coordinator** | Same debate integration structure; economics-domain tie-breaking rules |
| `prompts/05-literature-review.md` | ML novelty falsification | **Econ Lit Review** | Same adversarial structure; venues → ECMA, AER, JPE, REStud, QJE, JET, TE, RAND, JEL, NBER WP; claim types → equilibrium existence, uniqueness, IC, efficiency |
| `prompts/08-math-literature.md` | DL/Statistical Learning lemma library | **Econ Lemma Library** | Theorem families: fixed-point (Kakutani, Brouwer, Tarski), envelope theorem, revelation principle, first/second welfare theorems, Coase theorem, Myerson-Satterthwaite, Blackwell sufficiency; textbooks: MWG, Fudenberg & Tirole, Myerson, Osborne & Rubinstein |
| `prompts/09-math-proposer.md` | ML claim graph designer | **Econ Proposer** | Same claim graph JSON structure; theorem vocabulary → equilibrium existence (T_), uniqueness (T_), IC lemma (L_), PC lemma (L_), efficiency corollary (C_), welfare proposition (P_); assumptions labeled A1-An with economic justification |
| `prompts/10-math-prover.md` | ML proof drafter | **Econ Prover** | Same proof structure + checkpoint; techniques → fixed-point arguments, monotone comparative statics (Topkis, Milgrom-Shannon), convex analysis, mechanism design duality, Nash existence (Glicksberg, Kakutani), folk theorem, signaling / screening / adverse selection |
| `prompts/11-math-verifier.md` | Symbolic + numeric ML verifier | **Econ Verifier** | Symbolic: check assumption consistency, boundary conditions, IC/PC binding; Numerical: optional simple Python (sympy/scipy only, no GPU); focus on edge case enumeration |
| `prompts/25-narrative-voice.md` | ML paper voice | **Econ Narrative Voice** | Same purpose; economics-specific voice rules: precision over prose; no empirical overreach from theoretical results; careful epistemic status labeling (proved/conjectured/illustrative) |

### 4d. Prompt Files to REPLACE with New Economics Prompts

| Old File | New File | New Purpose |
|----------|----------|-------------|
| `prompts/12-experiment-design.md` | `prompts/12-econ-counterexamples.md` | **Counterexample + Edge Case Checker**: adversarially relax each assumption A1–An one at a time; identify which assumptions are binding vs. expositional; propose alternative model specs where the main result fails |
| `prompts/13-experimentation.md` | `prompts/13-econ-comp-statics.md` | **Comparative Statics**: derive sign conditions and monotonicity for equilibrium objects w.r.t. key parameters; apply envelope theorem; optional numerical illustration via sympy/scipy (no datasets, no GPU) |
| `prompts/14-experiment-verify.md` | `prompts/14-econ-welfare.md` | **Welfare Implications**: Pareto efficiency, constrained efficiency, distributional analysis, policy intervention design, welfare benchmarks (first-best, second-best, Rawlsian, utilitarian) |
| `prompts/16-duality-check.md` | `prompts/16-econ-intuition.md` | **Economic Intuition**: plain-language narrative for each main result; stress-test against minimal 2-player / 2-good / 2-period examples; answer "what does this tell us about how economies work?" |

### 4e. NEW Prompt Files to Create (no existing counterpart)

| File | Purpose | Output Artifacts |
|------|---------|-----------------|
| `prompts/07b-model-primitives.md` | **Model Primitives Formalization**: define agents (finite/continuum/heterogeneous), goods, environment, strategy spaces, information structure (complete/incomplete, symmetric/asymmetric, private/public signals), timing (static/dynamic, simultaneous/sequential), payoff functions | `model_primitives.md`, `model_primitives.json` |
| `prompts/07c-assumptions.md` | **Assumptions Framework**: formalize all model assumptions with labels A1–An; motivate each (economic intuition, technical necessity, precedent in literature); flag binding vs. expositional; assess what breaks if each assumption is dropped | `assumptions.md`, `assumptions_sensitivity.json` |
| `prompts/07d-equilibrium-concept.md` | **Equilibrium Concept Design**: select and justify solution concept (Nash / SPE / BNE / PBE / CE / Competitive Equilibrium / Core / Stable matching / other); characterize existence conditions against A1–An; identify potential multiplicity; this prompt produces a recommendation and then **HALTS for researcher approval** | `equilibrium_design.md` |
| `prompts/31-econ-model-explorer.md` | **Explore Mode: Model Space Exploration**: iterative model specification search across assumption variants; treats failed equilibrium existence proofs as model discoveries | Used in Explore cycles |
| `prompts/32-econ-mechanism-explorer.md` | **Explore Mode: Mechanism Cross-Pollination**: cross-talk between different mechanism / equilibrium concept branches being explored in parallel | Used in Explore cycles |

### 4f. Files to REMOVE

Files to **DELETE** (no theoretical economics value):

```
prompts/31-experiment-explorer.md     # ML GPU experiment exploration — no economics analog
prompts/32-cross-pollinator.md        # ML theory-experiment cross-talk — inapplicable without experiment track
```

Files to **ARCHIVE** (move to `archive/` subfolder, preserve for structural reference):

```
archive/prompts/10-math-prover.md          # ML proof technique library (structural reference)
archive/prompts/12-experiment-design.md    # ML experiment design (structural reference)
archive/prompts/13-experimentation.md      # ML execution script pattern (structural reference)
archive/prompts/31-experiment-explorer.md  # ML explore-mode experiments (structural reference)
```

---

## 5. New Prompt Files — Complete List

9 files to CREATE:

```
prompts/07b-model-primitives.md          # Model Primitives Formalization
prompts/07c-assumptions.md               # Assumptions Framework
prompts/07d-equilibrium-concept.md       # Equilibrium Concept Design (HARD STOP checkpoint)
prompts/12-econ-counterexamples.md       # Counterexample + Edge Case Checker
prompts/13-econ-comp-statics.md          # Comparative Statics
prompts/14-econ-welfare.md               # Welfare Implications
prompts/16-econ-intuition.md             # Economic Intuition Narrative
prompts/31-econ-model-explorer.md        # Explore Mode: Model Space Exploration
prompts/32-econ-mechanism-explorer.md    # Explore Mode: Mechanism Cross-Pollination
```

---

## 6. Files to Delete or Deprecate — Complete List

**DELETE** (2 files):
```
prompts/31-experiment-explorer.md
prompts/32-cross-pollinator.md
```

**ARCHIVE** (move to `archive/`, 4 files):
```
prompts/10-math-prover.md          → archive/prompts/10-math-prover.md
prompts/12-experiment-design.md    → archive/prompts/12-experiment-design.md
prompts/13-experimentation.md      → archive/prompts/13-experimentation.md
prompts/31-experiment-explorer.md  → archive/prompts/31-experiment-explorer.md
```

**REPLACE CONTENT** (existing filename reused, ML content replaced):
```
prompts/01-persona-practical.md    → Policy Pragmatist
prompts/02-persona-rigor.md        → Economic Theorist
prompts/03-persona-narrative.md    → Economic Historian
prompts/04-persona-synthesis.md    → Econ Synthesis Coordinator
prompts/05-literature-review.md    → Econ venues + claim types
prompts/08-math-literature.md      → Econ Lemma Library
prompts/09-math-proposer.md        → Econ Proposer
prompts/10-math-prover.md          → Econ Prover (after archiving original)
prompts/11-math-verifier.md        → Econ Verifier
prompts/25-narrative-voice.md      → Econ Narrative Voice
```

---

## 7. Suggested Final Directory Structure

```
pAI-Econ-claude/
├── SKILL.md                                    # Orchestrator (phase names + prompt paths updated)
├── THEORETICAL_ECON_MIGRATION_PLAN.md          # This document
├── README.md                                   # Updated for economics
├── LICENSE                                     # Preserved (MIT, Beneventano)
├── settings.json                               # Harness config (unchanged)
├── .claude/
│   └── settings.local.json                    # Economics journal domains added
├── .gitignore / .gitattributes
│
├── docs/
│   ├── execution-protocol.md                  # Unchanged
│   ├── explore-mode.md                        # Phase references updated
│   ├── persona-council.md                     # Unchanged
│   ├── persona-post-review.md                 # Unchanged
│   ├── pre-writeup-council.md                 # Unchanged
│   ├── review-cycle.md                        # Unchanged
│   └── token-logging.md                       # Unchanged
│
├── prompts/
│   ├── 01-persona-practical.md                # → Policy Pragmatist
│   ├── 02-persona-rigor.md                    # → Economic Theorist
│   ├── 03-persona-narrative.md                # → Economic Historian
│   ├── 04-persona-synthesis.md                # → Econ Synthesis Coordinator
│   ├── 05-literature-review.md                # → Econ venues
│   ├── 06-brainstorm.md                       # UNCHANGED
│   ├── 07-formalize-goals.md                  # UNCHANGED
│   ├── 07b-model-primitives.md                # NEW
│   ├── 07c-assumptions.md                     # NEW
│   ├── 07d-equilibrium-concept.md             # NEW (human checkpoint)
│   ├── 08-econ-lemma-library.md               # Retrained (was 08-math-literature)
│   ├── 09-econ-proposer.md                    # Retrained (was 09-math-proposer)
│   ├── 10-econ-prover.md                      # Retrained (was 10-math-prover)
│   ├── 11-econ-verifier.md                    # Retrained (was 11-math-verifier)
│   ├── 12-econ-counterexamples.md             # NEW (was 12-experiment-design)
│   ├── 13-econ-comp-statics.md                # NEW (was 13-experimentation)
│   ├── 14-econ-welfare.md                     # NEW (was 14-experiment-verify)
│   ├── 15-formalize-results.md                # UNCHANGED
│   ├── 16-econ-intuition.md                   # NEW (was 16-duality-check)
│   ├── 17-resource-prep.md                    # UNCHANGED
│   ├── 18-writeup.md                          # Update exemplars only
│   ├── 19-proofreading.md                     # UNCHANGED
│   ├── 20-reviewer.md                         # Econ venue norms updated
│   ├── 21-research-plan-writeup.md            # UNCHANGED
│   ├── 22-track-merge.md                      # UNCHANGED (theory-only subset)
│   ├── 23-verify-completion.md                # UNCHANGED
│   ├── 24-followup-lit-review.md              # UNCHANGED
│   ├── 25-econ-narrative-voice.md             # Retrained (was 25-narrative-voice)
│   ├── 30-math-explorer.md                    # UNCHANGED
│   ├── 31-econ-model-explorer.md              # NEW (was 31-experiment-explorer)
│   ├── 32-econ-mechanism-explorer.md          # NEW (was 32-cross-pollinator)
│   └── 33-explore-evaluator.md                # UNCHANGED
│
├── templates/
│   ├── author_style_guide_econ.md             # NEW — economics writing standard
│   ├── author_style_guide_default.md          # Preserved (ML original, as fallback)
│   └── state.json                             # UNCHANGED
│
├── examples/
│   └── quickstart-task.txt                    # Replace with econ hypothesis
│
└── archive/
    ├── prompts/10-math-prover.md
    ├── prompts/12-experiment-design.md
    ├── prompts/13-experimentation.md
    └── prompts/31-experiment-explorer.md
```

---

## 8. MVP Scope (First Version)

The MVP implements the core theory-generation loop. Explore Mode and advanced calibration are deferred.

**In MVP (priority order):**

1. Phase 1 — Persona Council with 3 economics personas
2. Phase 2 — Literature Review with economics journal venues
3. Phase 3 — Brainstorm (no change needed)
4. Phase 4 — Formalize Goals + Model Primitives (07 + new 07b)
5. Phase 4b — Assumptions Framework (new 07c)
6. Phase 4c — Equilibrium Concept Design (new 07d, with HiL checkpoint)
7. Phase 5a — Theory Track: Lemma Library → Proposer → Prover → Verifier
8. Phase 5b — Counterexamples (new 12, replaces experiment track)
9. Phase 5c — Comparative Statics (new 13)
10. Phase 5d — Welfare Implications (new 14)
11. Phase 6 — Economic Intuition (new 16)
12. Phase 7 — Formalize Results (no change)
13. Phase 8 — Writeup with economics style guide
14. Phases 9-11 — Proofreading, Reviewer, Post-review (minor updates)

**Deferred to v2:**
- Explore Mode economics variants (31-econ-model-explorer, 32-econ-mechanism-explorer)
- Economics-specific token logging
- Multi-model calibration exercises (numerical simulations beyond sympy)

---

## 9. Human-in-the-Loop Checkpoints

The orchestrator MUST block and surface a researcher prompt at these points. The agent cannot proceed autonomously.

| Checkpoint | After Stage | What the Researcher Decides |
|------------|-------------|----------------------------|
| **HiL-1: Problem Framing** | Phase 1, Round 3+ | Approve or redirect the refined research puzzle; resolve persona disagreements on scope |
| **HiL-2: Novelty Assessment** | Phase 2 | Validate `novelty_flags.json`; decide whether PARTIAL/KNOWN claims should be dropped, reframed, or contested |
| **HiL-3: Model Direction** | Phase 3 | Select which model architecture / assumption profile to pursue from the brainstorm menu |
| **HiL-4: Model Primitives** | Phase 4b | Approve formal model setup (agents, goods, timing, information structure) before assumptions lock |
| **HiL-5: Equilibrium Concept** *(HARD STOP)* | Phase 4c | Select the solution concept — this choice is irreversible downstream; agent cannot proceed without explicit approval |
| **HiL-6: Claim Structure** | Phase 5a (Proposer) | Approve the dependency-structured claim graph before proofs are written |
| **HiL-7: Counterexample Resolution** | Phase 5b | When a counterexample breaks a main result, choose: (a) modify assumption, (b) restrict domain, (c) weaken claim, (d) accept with caveat |
| **HiL-8: Welfare Benchmark** | Phase 5d | Define the welfare benchmark (first-best, second-best, utilitarian sum, Rawlsian) — agent must not choose this autonomously |
| **HiL-9: Review Feedback** | Phase 10, score ≤ 6 | Provide explicit direction on how to address reviewer concerns before looping back |

**Automatic (no researcher input required):**
- Adversarial literature search execution (Phase 2)
- Brainstorm generation (Phase 3)
- Proof drafting (Phase 5a prover)
- Comparative statics derivation (Phase 5c)
- Economic intuition narrative (Phase 6)
- Writing passes and proofreading (Phases 8-9)

---

## 10. Attribution Requirement

The MIT license (Pierfrancesco Beneventano, 2026) must be preserved. `SKILL.md` and `README.md` must retain:

> Based on pAI/MSc by Mahmoud Abdelmoneum, Pierfrancesco Beneventano, and Tomaso Poggio (MIT + Perseus Labs)
> https://dspace.mit.edu/handle/1721.1/165377

Additional attribution for the theoretical economics fork may be appended below this line.

---

*This document was generated by Claude Code as part of a repo audit. No prompt files were modified during audit. Implementation proceeds with researcher approval at each stage.*
