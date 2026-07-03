# Changelog

All notable changes to **pAI-Econ-claude** are documented here.

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
