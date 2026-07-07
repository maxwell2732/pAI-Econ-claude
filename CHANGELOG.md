# Changelog

All notable changes to **pAI-Econ-claude** are documented here.

---

## [v1.3.0] — 2026-07-07

### Added

- **Gate 6 — Mathematical Review Gate** (`prompts/gate-06-math-review.md`): a mandatory mathematical audit of `manuscript.tex`, run after the manuscript is written and before pdflatex compiles it. Motivated by observed failures where equilibrium conditions and FOCs were wrapped in `proposition` environments. Five checks: (M1) statement classification against a content-to-environment rubric (equilibrium conditions, FOCs, identities, and definitions must never carry a Proposition label); (M2) independent re-derivation of every displayed derivation, with a derive-first-compare-second protocol so the reviewer's algebra is not anchored by the manuscript's; (M3) notation consistency; (M4) statement–proof match, including quantifier discipline; (M5) domain and boundary sanity. Unlike other gates, Gate 6 corrects TYPO-LEVEL and LOW errors directly and back-propagates the fixes to `manuscript_skeleton.md`, `candidate_propositions.md`, and `proof_sketches.md`; only SUBSTANTIVE errors (a sign or claim contradicted by re-derivation, a proof that fails to establish its statement) pause the pipeline via the standard gate-failure protocol, with recommended loopback to Stage 6 or Stage 7.
- **Gate 3, new Check E (Statement Classification Test)**: every labeled statement in `candidate_propositions.md` is checked for label–content match at the source, before proof sketching begins. A CORE proposition that is actually an equilibrium condition or FOC forces a gate FAIL; mislabeled SUPPORTING statements are reclassified with a CONDITIONAL PASS.
- **Gate 4, new Check 7 (Independent Re-derivation of Key Algebra)**: load-bearing displayed equations in each proof sketch (FOCs, closed-form solutions, comparative-statics signs, threshold formulas) are re-derived from `model_primitives.md` without consulting the sketch's own algebra, then compared term by term. A SOLID or PLAUSIBLE step contradicted by the re-derivation forces a gate FAIL for CORE propositions.

### Changed

- `SKILL.md`: banner now reads "9 Quality Gates (+1 optional)"; the pipeline overview, gate table, workspace layout, Stage 10 entry, stage-log gate-id list, completion sequence (new step 3c runs Gate 6 before compilation), and completion summary all include Gate 6. The gate-logic section documents Gate 6's correction exception (objective low-level errors are fixed without a researcher pause).
- `templates/state.json`: `gate_results` and `gate_retry_counts` now include `gate_6`.
- `README.md` / `README_EN.md`: Gate 6 added to the quality-gate tables, and `gate-06-math-review.md` added to the workspace and `prompts/` trees; the Gate 4 row now mentions independent re-derivation.

---

## [v1.2.1] — 2026-07-03

### Added

- **Two model library entries for dynamic spatial models** (PR #3, contributed by [hayeszhou](https://github.com/hayeszhou)): `model_library/dynamic-spatial-general-equilibrium.md` (Kleinman, Liu & Redding 2023, *Econometrica* 91(2): 385–424) and `model_library/trade-labor-dynamics-china-shock.md` (Caliendo, Dvorkin & Parro 2019, *Econometrica* 87(3): 741–835). Both citations and headline quantitative claims were web-verified before merge. Stage 3b routing notes in `SKILL.md` and the README model library trees now include the new entries.

### Fixed

- **`templates/state.json` was missing gate keys**: `gate_results` and `gate_retry_counts` lacked `gate_1b`, `gate_2b`, and `gate_2c`, so every pipeline run (Projects 002–005) had to improvise these keys at runtime, producing inconsistent state files across projects. The template now lists all nine gates in pipeline order.
- **`SKILL.md` completion section numbering**: two steps were both numbered "3." (Generate the manuscript PDF / Print completion summary); the summary step is now "4.".
- **`SKILL.md` completion summary stage count**: said "Stages completed: 11 (0–10)", omitting Stages 2a and 3b; now reads "13 (0–10 + 2a + 3b) [14 if Stage 7b ran]".
- **README trees omitted `prompts/02a-empirical-reality-check.md`**: the Stage 2a prompt (which also contains Gate 1b) is now listed in both `README.md` and `README_EN.md`.

### Changed

- **Legacy pAI/MSc files archived to `legacy/`**: 29 unused ML-pipeline prompts (`01-persona-practical` … `33-explore-evaluator`) and 6 orchestrator docs (`execution-protocol`, `explore-mode`, `persona-post-review`, `pre-writeup-council`, `review-cycle`, `token-logging`) moved out of `prompts/` and `docs/` into `legacy/prompts/` and `legacy/docs/`, with a README explaining provenance. None were referenced by `SKILL.md` or the active prompts, and some used colliding terminology (the old "Phase 7b pre-writeup council" vs. the econ pipeline's Stage 7b Numerical Simulation). `prompts/` now contains exactly the 22 active stage/gate prompts. The maintained pAI/MSc pipeline lives in the separate `poggioai-msc-claude` skill.
- **Welcome banner redesign**: the opening screen printed at skill invocation is now a framed box with the pipeline tagline, stage/gate/HiL stats, author names with affiliations, and the repo link, with the pAI/MSc acknowledgement set apart in a smaller footer compartment.
- **`SKILL.md` hardening**: project numbering now explicitly requires a Bash listing (not Glob, which has returned false negatives on this repo); the stage-log gate format uses an explicit `<id>` placeholder (1, 1b, 2b, 2c, 2, 3, 4, 4b, 5); Stages 6 and 9 now carry an explicit reminder that any citation entering `candidate_propositions.md` or `economic_interpretation.md` must be web-VERIFIED (reused from `literature_positioning.md` or freshly verified), mirroring the standing rule in `CLAUDE.md`.

---

## [v1.2.0] — 2026-07-03

### Added

- **Stage 7b — Numerical Simulation and Computational Illustration** (`prompts/07b-numerical-simulation.md`): a fully user-controlled OPTIONAL module between Stage 7 (Proof Sketch) and Stage 8 (Counterexample Finder). It never runs by default: after Stage 7 the pipeline pauses at the new **HiL-N1** checkpoint (YES / NO / PLAN ONLY / CUSTOM). No code is executed, no parameter values are chosen, and no results or figures are generated before the researcher opts in AND approves the simulation plan at **HiL-N2** (execution hard stop). Results are reviewed at **HiL-N3**, where the researcher decides whether figures may enter the manuscript (`USE FIGURES IN MANUSCRIPT` / `APPENDIX ONLY` / `DO NOT USE RESULTS`).
- **Gate 4b — Numerical Integrity Gate** (`prompts/gate-04b-numerical-integrity.md`): checks equation–code consistency, reproducibility, parameter transparency, numerical robustness, result completeness, and epistemic-status labels. A numerical counterexample to a core proposition forces FAIL or CONDITIONAL PASS [MAJOR] and blocks the unmodified proposition from Stage 10 until resolved at Stage 8 / HiL-6.
- New Stage 7b artifacts under `outputs/`: `numerical_simulation_decision.md`, `numerical_simulation_plan.md`, `parameter_definitions.md` (with mandatory parameter classification: THEORETICAL NORMALIZATION / EMPIRICALLY GROUNDED / ILLUSTRATIVE / USER SPECIFIED, plus a post-hoc parameter-change log), `numerical_simulation_report.md`, `numerical_code/`, `numerical_results/` (CSV), `numerical_figures/` (PNG + PDF by default).
- Stage 8 prompt: new "Numerical Handoff Triage" attempt — every numerical failure is diagnosed (coding error / optimization error / parameter issue / assumption failure / claim failure / domain issue) and each affected proposition gets a recommended fate (retain / weaken / restrict / split into regimes / relabel as illustrative / drop).
- Stage 10 prompt + SKILL.md: manuscript inclusion rule for numerical content (explicit HiL-N3 authorization, Gate 4b not FAIL, reproducibility, PNG+PDF availability, caption type labels, counterexample disclosure; prohibited claim language listed).
- `templates/state.json`: `gate_4b`, `hil_n1/n2/n3`, and a `numerical_simulation` block (decision, plan approval, execution, gate verdict, results review, figure authorization, blocked propositions).
- `.gitignore`: exclude `__pycache__/`, virtual environments, LaTeX build intermediates, and other caches from project workspaces.

### Changed

- **Demonstration-figure default (2026-07-03):** when the researcher authorizes `USE FIGURES IN MANUSCRIPT` at HiL-N3, the manuscript now includes **1–2 demonstration figures** in the main text by default (headline mechanism/welfare figure + at most one sweep/regime figure), embedded as PDFs in a "Numerical Illustration" subsection with type-labeled captions and a reproducibility pointer to `numerical_code/`. Remaining figures stay in the workspace or Appendix. Authorization at HiL-N3 remains mandatory — nothing is included without it.

### Fixed

- **Model attribution in generated manuscripts**: `SKILL.md` and `CLAUDE.md` previously hardcoded `\small Claude Sonnet 4.6` in the LaTeX author block, so every manuscript claimed that model regardless of which Claude model actually ran the pipeline. The templates now use `<ACTUAL MODEL NAME>` with an explicit instruction to insert the model actually running the session (e.g., "Claude Fable 5") and never to copy the name from an earlier project's `.tex`.

### Principles (unchanged by design)

- Numerical simulation is optional and runs only after explicit user approval. Numerical evidence is used for verification, counterexample search, and illustration — never as a substitute for formal proof. Parameter cherry-picking, hidden corner solutions, and hidden counterexamples are prohibited and audited by Gate 4b.

---

## [v1.1.0] — 2026-06-15

### Fixed

- **Documentation drift in `docs/persona-council.md`** (Finding 1): the file described an obsolete 3-persona / 3–5-round debate structure that no longer matched the runtime behavior defined in `prompts/03-persona-council.md`, `SKILL.md`, and `README.md`. Updated `docs/persona-council.md` to correctly document the current design: **5 personas** (Mechanism Theorist, Mathematical Referee, Economic Intuition Referee, Journal Positioning Referee, Brutal Skeptic) running **2 rounds** (Round 1: independent evaluation; Round 2: cross-evaluation + synthesis). No pipeline behavior was changed.

---

## [v1.0.0] — 2026-06-15

### Added

- Initial release of the theoretical economics research pipeline skill
- Stages 0–10 with Stages 2a and 3b
- 8 quality gates and 6 human checkpoints (HiL)
- `model_library/` with general, IO, trade, and human-capital/labor model families
- Stage 2a Empirical Reality Check and Gate 1b (Reality Fit Gate)
- LaTeX + pdflatex PDF output standard
