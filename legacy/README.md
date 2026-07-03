# Legacy pAI/MSc Files (NOT part of the active pipeline)

⚠️ **Orchestrator: do not read or execute anything in this directory.**
The active pipeline is defined entirely by `SKILL.md` at the repo root, which
references only the stage/gate prompt files remaining in `prompts/` and the
live documentation in `docs/`.

This directory preserves files inherited from the original **pAI/MSc** pipeline
(Mahmoud Abdelmoneum, Pierfrancesco Beneventano, Tomaso Poggio — MIT + Perseus
Labs, https://dspace.mit.edu/handle/1721.1/165377), from which
`theoretical-economics-claude-skill` was adapted. They were the source material
for the migration (see `THEORETICAL_ECON_MIGRATION_PLAN.md`) and are kept for
reference and attribution only.

Why they were moved out of `prompts/` and `docs/`:

- None of them are referenced by `SKILL.md`, the active prompts, or the READMEs.
- Several use numbering and terminology that collide with the econ pipeline
  (e.g., `pre-writeup-council.md` describes a "Phase 7b" that is unrelated to
  the econ pipeline's Stage 7b Numerical Simulation) and could mislead an
  orchestrator or reader browsing the directories.
- The maintained copy of the pAI/MSc pipeline lives in the separate
  `poggioai-msc-claude` skill, which is fully self-contained.

Contents:

- `prompts/` — the original ML-pipeline stage prompts (persona debate,
  math proposer/prover/verifier, experiment track, writeup/review cycle,
  explore mode).
- `docs/` — the original orchestrator documentation for those phases
  (execution protocol, explore mode, post-review, pre-writeup council,
  review cycle, token logging).
