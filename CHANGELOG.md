# Changelog

All notable changes to **pAI-Econ-claude** are documented here.

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
