# Changelog

All notable changes to **pAI-Econ-claude** are documented here.

---

## [v1.4.0] — 2026-08-21

### Added

- **`empirical-companion` mode** — a second theory-building mode for researchers whose empirical work is substantially finished and who need the smallest coherent model that rationalizes it. Positioning: *a constrained theory-building mode for empirical papers: formalize the researcher's stated mechanism with the smallest coherent model and derive hypotheses that map directly onto the empirical design.* Its governing principle is **constrain scope, not rigor** — the mode narrows the theoretical search space without lowering the standard of proof and without manufacturing a conclusion to match a regression coefficient. The contract lives in `prompts/mode-empirical-companion.md` and covers the Minimal Model Principle, the `scope_notes.md` deferral policy, the `TARGET HYPOTHESIS NOT DERIVED` protocol, the no-assumption-laundering rule, the EMPIRICAL COMPANION CHECKPOINT format, and the per-stage override table.
- **A real mode system.** Prior to this release the five `mode:` tokens documented in the READMEs (`model_extension`, `phenomenon_to_model`, `model_critique`, `full_pipeline`, `manuscript_skeleton_only`) appeared nowhere in `SKILL.md`, `prompts/`, or `templates/state.json` — they were free text that landed in `hypothesis.md` and was otherwise ignored, and every invocation ran the identical Stage 0–10 path. `SKILL.md` now carries a `## Mode Routing` section defining two modes (`theory-development`, the default, and `empirical-companion`), a resolution order, hyphen/underscore equivalence, an alias table mapping the five legacy tokens to `theory-development`, and an instruction to ask rather than guess on an unrecognized value. The resolved mode is written to `state.json` → `mode` and read back by `--resume`.
- **`/mode` slash command** (`.claude/commands/mode.md`): `/mode <mode-name> [--task <file>] [research input]`. The inline `mode: empirical-companion` header inside the existing `/theoretical-economics-claude-skill` argument is equivalent.
- **Stage 0-EC — Empirical Scope Lock** (`prompts/ec-00-empirical-scope-lock.md`): runs after Stage 0 in `empirical-companion` mode only. Parses an eight-field empirical brief (empirical question, baseline result, proposed mechanism, mechanism test, heterogeneity results, key hypotheses to rationalize, preferred theoretical tradition, scope exclusions), records the declared empirical domain, and writes `outputs/empirical_scope.md` with status `LOCKED` or `REVISE`. It may ask at most three questions, bundled into a single message, and only for the three required fields.
- **Gate EC — Empirical–Theory Alignment Gate** (`prompts/gate-ec-empirical-alignment.md`): runs after Stage 6 and Gate 3, before HiL-5. Six checks — EC1 proposition coverage, EC2 hypothesis derivability, EC3 mechanism parsimony, EC4 assumption economy, EC5 heterogeneity correspondence, EC6 mechanism object identity. It uses the pipeline's existing PASS / CONDITIONAL PASS / FAIL vocabulary and the standard failure protocol, with loopbacks to Stage 6 (EC1/EC2/EC5), Stage 4 (EC3/EC4), or Stage 3b (EC6). EC6 is the one check that cannot be downgraded to a CONDITIONAL PASS: if the paper claims an empirical result tests mechanism M while the model's M is a different latent object, the gate fails.
- **The Minimal Model Principle and the empirical–theory map** (`prompts/ec-empirical-theory-map.md`): Stage 4 now emits `outputs/minimality_check.md`, an inventory of every model element with its empirical role (`baseline` / `mechanism` / `heterogeneity` / `identification` / `structural` / `none`), the hypothesis lost without it, and a keep-or-remove verdict — elements with no empirical role are removed from `model_primitives.md`, not merely flagged. Stage 4 also drafts and Stage 6 completes `outputs/empirical_theory_map.md`, the empirical result → economic mechanism → model primitive → proposition → testable hypothesis table that Gate EC audits, the checkpoint displays, and Stage 10 generates the Predictions subsection from.
- **`outputs/scope_notes.md`**: an append-only record of parameter-domain reversals, corner cases, alternative mechanisms, extensions, equilibrium complications, and additional propositions. Findings are still searched for, still checked, and still recorded; by default they stay out of the main propositions, the hypotheses, and the manuscript main text, and enter only on one of three named triggers (they overturn a target hypothesis, they materially affect identification, or the researcher asks).
- **`TARGET HYPOTHESIS NOT DERIVED` protocol**: when Stage 7 cannot establish a target hypothesis, it reports that, gives the *minimal* sufficient condition, states the condition's economic meaning and its empirical or theoretical support status, and offers the researcher `ACCEPT CONDITIONAL` / `ADD ASSUMPTION` / `REVISE EMPIRICS`. The pipeline never adopts the condition itself. Choosing `ADD ASSUMPTION` returns it to Stage 5 tagged `ADDED-FOR-TARGET`.
- **`ADDED-FOR-TARGET` assumption tagging** in Stage 5: any assumption introduced after the scope lock in order to make a target hypothesis derivable is tagged, must carry an economic justification that holds independent of the target it serves, and records its support status. An assumption defended only by the sign it produces is a Gate EC EC4 failure. Gate 4's new check EC-D fails a proof sketch that closes a gap with a restriction absent from `assumption_audit.md`.
- **Three test fixtures and a verification checklist**: `examples/demo-ec-clean-companion.txt` (Test EC1, a clean collateral-constraint companion), `examples/demo-ec-impossible-hypothesis.txt` (Test EC2, a universal disclosure hypothesis the model cannot deliver), `examples/demo-ec-domain-reversal.txt` (Test EC3, a search-cost reversal outside the declared domain), with pass criteria, failure signatures, a backward-compatibility test (BC1–BC6), and a mode-routing test in `docs/mode-empirical-companion-tests.md`. Verification remains a manual end-to-end run, consistent with how the repository already dogfoods.
- **`docs/mode-empirical-companion.md`**: human-readable mode explainer, non-authoritative, following the `docs/persona-council.md` precedent.

### Changed

- `SKILL.md`: new `## Mode Routing` section and a mode line in the welcome banner (padded to the existing 62-column box width); `## How to Invoke` gains the `/mode` forms; `## Getting Started` gains a mode-resolution step (1b) and a Stage 0-EC step (6); the Workspace Layout, Pipeline Overview, gate table, State Management, Resume Protocol, and completion summary all carry the mode-conditional rows; Stages 1–10 each gain one `**EC mode:**` line pointing at their prompt's addendum; the stage-log gate-id list now includes `EC`; the front-matter `description` names both modes.
- `prompts/`: fifteen files gain an `## Empirical-Companion Mode Addendum` section appended at the end — Stages 1, 2, 3, 3b, 4, 5, 6, 7, 7b, 8, 9, 10 and Gates 1, 3, 4. Each opens with the same guard (`Applies only when state.json → mode == "empirical-companion"`), and nothing above the guard is edited, so default-mode behavior is untouched by construction. Stage 8 still runs the full adversarial battery; the addendum changes where findings are reported (inside the declared empirical domain is gate-failing, outside it goes to `scope_notes.md`), not whether they are found. Stage 7b's user-control rule is unchanged; only the HiL-N1 recommendation narrows, to three triggers. Gates 1 and 3 keep their verdict arithmetic and every check, including Gate 3's Check E statement classification; the addenda add that a model whose role is to organize an empirical design does not fail for low standalone novelty alone, while a proposition that only symbolizes the researcher's verbal mechanism still fails as trivial.
- `templates/state.json`: new top-level `mode` field defaulting to `"theory-development"`; `gate_results.gate_ec` and `gate_retry_counts.gate_ec`; and an `empirical_companion` block (`scope_locked`, `scope_status`, `target_hypotheses`, `excluded_extensions`, `unmapped_propositions`, `underived_hypotheses`) that stays inert in the default mode. A state file without the `mode` key is read as `theory-development`.
- `README.md` / `README_EN.md`: new `## 运行模式` / `## Run Modes` section between Quick Start and Use Cases, with the two-mode comparison table, the tagline *From empirical results to the smallest theory that can explain them*, the invocation example, the artifact list, the Gate EC checks, and the rigor guarantees; a nav-bar anchor for it (the bar previously listed four); a note that the five Use Cases below all run in `theory-development`; a Gate EC row in the quality-gate tables; the HiL-5 row noting its empirical-companion rendering; Stage 0-EC and the four mode artifacts in the Core Stages table and the output tree; `mode.md` plus the five new `prompts/` files in the project-structure tree, which now also lists `docs/` and `examples/`; Stage 0-EC and Gate EC in the mermaid workflow diagram, with an explainer block following the pattern used for Stages 2a, 7b, and Gate 6; a Contributing note pointing at the new test document; last-updated bumped to 2026-08-21.

### Backward compatibility

`theory-development` is the default and its behavior is unchanged. Every empirical-companion instruction sits behind an explicit `state.json → mode` guard, appended after existing content, with no existing prompt text deleted or reworded. Counterexample search, the novelty gate, proposition generation, numerical simulation, and the persona council keep their full default behavior. Stage 0-EC and Gate EC never run outside the mode, and no mode artifact is created in a default run. The five legacy `mode:` tokens resolve to `theory-development`, which is what they already did.

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
