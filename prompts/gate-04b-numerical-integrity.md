# Gate 4b: Numerical Integrity Gate

## Purpose
Assess whether the Stage 7b numerical simulation is faithful to the model, reproducible, transparent about parameters, numerically robust, and complete in its reporting — and assign every numerical result an epistemic-status label. This gate protects against the two characteristic failure modes of simulation-assisted theory: code that quietly implements a different model, and reporting that quietly omits unfavorable regions.

## Runs After
Stage 7b (Numerical Simulation) — only if the researcher approved execution at HiL-N2 and code actually ran. If Stage 7b was skipped (NO) or stopped at PLAN ONLY, this gate does not run.

## Inputs
- `outputs/numerical_simulation_plan.md`
- `outputs/parameter_definitions.md`
- `outputs/numerical_simulation_report.md`
- `outputs/numerical_code/` (all scripts)
- `outputs/numerical_results/` (all CSVs)
- `outputs/numerical_figures/` (all figures)
- `outputs/model_primitives.md`, `outputs/candidate_propositions.md`, `outputs/proof_sketches.md`, `outputs/assumption_audit.md`

## What This Gate Is NOT
This gate does not judge whether the numerical results are *favorable* to the propositions. A simulation that finds a counterexample and reports it honestly can PASS this gate; a simulation that finds only supportive results but hides its grid or parameters cannot.

## Evaluation Criteria

### Check N1 — Equation–Code Consistency

Read `prompts/proof-code-independence.md` before running this check.

**Scope.** Audit **every script that computes, classifies, filters, or excludes points**, not only the module that carries the model equations. In the case this rule was written for, the defect lived in a study script outside the audited module, and this check passed.

**Evidence standard.** A docstring citing a source artifact is a claim about the code. It locates what to check; it is never the check. Verify by recomputation.

Required evidence, per optimization problem **and per model variant**:

1. The verifier's own optimality system at `verification/numerical/<variant>_optimality.md`, covering the eight items in `prompts/proof-code-independence.md` §6 — including **the binding condition for every constraint** and **every feasibility bound, derived rather than assumed**.
2. A **constraint-status comparison** against the author's code over the result grid, with `constraint_status` derived from the verifier's own recomputed multipliers.
3. The residual and state audit of §6, at the reported solution points.
4. `independence_grade`, `shared_from_author`, and `differing_axes` recorded in `verification_record.json`.

**A variant's binding condition may never be inherited from, or asserted equal to, another variant's.** Where a script classifies one variant using another's rule, that is this check's canonical failure.

- **PASS:** every implemented equation matches a recomputation; the per-variant optimality systems exist; constraint status agrees at every compared point; `independence_grade` I0 or I1
- **WARNING:** mapping verified for core equations, incomplete for non-core ones
- **FAIL:** an implemented equation contradicts the model artifacts; a core equation has no recomputation behind it; **constraint-status disagreement at any point** (trigger FT-7, class ND-3); a binding condition or feasibility bound inherited across variants; `independence_grade` I3 or I4 offered as evidence for a `VERIFIED` status (FT-9)

### Check N2 — Reproducibility
- **PASS:** Fixed random seed (where randomness is used); parameters in a config block or parameter file; one-command rerun works from the documented directory; Python and package versions recorded; output directory structure matches the plan; every figure traceable code → CSV → figure
- **WARNING:** Minor gaps (e.g., versions recorded but rerun requires an undocumented step)
- **FAIL:** Results or figures cannot be regenerated from the scripts; any figure was manually edited; **any script contains an absolute path outside the workspace**; or dependencies are not declared in `numerical_code/requirements.txt`

A path into a session scratchpad or a personal environment makes the results unreproducible on any other machine, and in practice on the same machine a week later. It is a FAIL rather than a documentation warning, and a figure from such code may not enter a manuscript.

### Check N3 — Parameter Transparency
- **PASS:** Every parameter in `parameter_definitions.md` carries a valid classification (THEORETICAL NORMALIZATION / EMPIRICALLY GROUNDED / ILLUSTRATIVE / USER SPECIFIED) with a source or justification; any post-hoc parameter change is logged in the Parameter Change Log
- **WARNING:** 1–2 parameters lack a justification, or classification is arguable
- **FAIL:** A parameter lacks any source/justification; an ILLUSTRATIVE value is described as calibrated; or a post-results parameter change is unlogged

### Check N4 — Numerical Robustness and Coverage
Evaluate: grid density; numerical tolerance; alternative starting values; local vs. global optimizer agreement; corner-solution detection; possible multiple optima; finer-grid sensitivity; optimization convergence; sensitivity to plausible parameter changes.

**Coverage is a matrix, not a count.** Require the regime test matrix of `prompts/proof-code-independence.md` §8: interior, each constraint binding, each corner, infeasible, each regime boundary, degenerate distribution. A region with no test is recorded `NOT TESTED`, never omitted. An empty region is `EMPTY` with the argument for emptiness.

**Grid honesty.** Require the block of `prompts/proof-code-independence.md` §7: `points_total`, `points_evaluated`, `points_usable`, `usability_ratio`, and one entry per exclusion **reason** with its count and `derived_from_model`.

- **PASS:** headline results checked on at least one finer grid or alternative method; local optima cross-checked against grid or global search where relevant; convergence failures handled explicitly; the regime matrix complete; `usability_ratio ≥ 0.5` with every exclusion derived from the model
- **WARNING:** robustness checks partial; headline results plausible but single-method; one regime row `NOT TESTED` and not load-bearing
- **FAIL:** a headline result rests on a single optimizer run with no cross-check; known non-convergence presented as a converged result; **`usability_ratio < 0.5`**; **any exclusion reason with `derived_from_model: false`** (trigger FT-8)

The usability requirement exists because a result can satisfy every other check on a grid that was almost entirely discarded by defects. Convergence evidence, finer grids, and multiple starting points all test the numerics at the points that survived; none of them asks whether the exclusions were legitimate. Compute the ratio and read the exclusion reasons.

### Check N5 — Result Completeness
- **PASS:** The report includes results supporting the propositions AND results not supporting them, corner cases, failed optimization attempts, counterexamples, sensitive parameter regions, and inconclusive regions (or states explicitly that a category is empty)
- **WARNING:** A category is missing but recoverable from the CSVs
- **FAIL:** Unfavorable results present in the CSVs are absent from the report, or the searched region was visibly restricted to the supportive zone without disclosure

### Check N6 — Epistemic Status
- **PASS:** Every reported numerical result carries exactly one valid label (SYMBOLICALLY VERIFIED / NUMERICALLY VERIFIED FOR SPECIFIED PARAMETERS / ROBUST ACROSS SEARCHED GRID / COUNTEREXAMPLE FOUND / COMPUTATIONAL ILLUSTRATION / INCONCLUSIVE / NOT A PROOF), and no label overclaims (e.g., a single-point check labeled ROBUST ACROSS SEARCHED GRID)
- **WARNING:** Labels present but 1–2 are imprecise
- **FAIL:** Any result is unlabeled, or a numerical result is described in proof language ("we prove", "generally", "always")

**Label preconditions.**

- `ROBUST ACROSS SEARCHED GRID` requires `usability_ratio ≥ 0.5` **and** every exclusion reason derived from the model. Below that threshold the strongest available label is `INCONCLUSIVE`, whatever the usable points show.
- `SYMBOLICALLY VERIFIED` requires a symbolic reduction from equations **restated** from `model_primitives.md`, at `independence_grade` I0 or I1. A symbolic check that imports the author's expressions is I3 and cannot carry this label.
- Absence of a counterexample after a search never upgrades a label. It is recorded as `NO COUNTEREXAMPLE FOUND` on the stated search space, which is evidence about the search.

### Claim status assignment

This gate may set `proof_status: "NUMERICALLY SUPPORTED"` as a companion label on a claim, per `prompts/verification-record.md`. It requires a valid epistemic label, `usability_ratio ≥ 0.5`, model-derived exclusions, and the grid stated. `NUMERICALLY SUPPORTED` never promotes to `VERIFIED`, and `independence_grade` I3 or I4 caps a claim at this status.

## Verdict Rules

**⚠️ Precedence.** The FAIL triggers in `SKILL.md → Objective FAIL triggers` take precedence over the arithmetic below. No verdict above FAIL may be issued while a trigger is live.

**PASS:** N1, N2, N3, N6 all PASS; no FAIL anywhere; at most 2 WARNINGs total; no FAIL trigger live.

**CONDITIONAL PASS:** No FAIL on N1 or N2; 3–4 WARNINGs total; deficiencies are documentation-level, not substance-level; no FAIL trigger live. State the conditions that must be fixed before any figure enters the manuscript, and record each as an OPEN obligation in `verification_record.json → unresolved_issues` with `blocks_manuscript: true`.

**FAIL:** Any FAIL on N1–N6, or any live FAIL trigger.

**Non-downgradable here:** FT-7 (constraint-status disagreement, class ND-3) and FT-3 (a valid counterexample, class ND-2). Neither may be reclassified to a WARNING. A constraint-classification defect additionally **invalidates every result derived from it**: those results are re-derived after the fix rather than retained with a caveat.

**⚠️ Counterexample rule:** If a counterexample to a CORE proposition was found (satisfying the proposition's stated assumptions), the verdict must be either **FAIL** or **CONDITIONAL PASS [MAJOR]** — never a clean PASS. In both cases the original, unmodified proposition is BLOCKED from Stage 10: record the blocked proposition ID in the gate file and in `state.json` (`numerical_simulation.blocked_propositions`). The block is lifted only when Stage 8 + HiL-6 resolve the counterexample (weaken / restrict / split into regimes / relabel / drop) and the proposition text is revised accordingly.

---

## Output Format

Write the gate result to `gates/gate-04b-numerical-integrity.md`:

```markdown
# Gate 4b: Numerical Integrity Gate — Verdict

**Verdict:** PASS / CONDITIONAL PASS / CONDITIONAL PASS [MAJOR] / FAIL

**Check summary:**
| Check | Result | Evidence |
|-------|--------|----------|
| N1 Equation–Code Consistency | ✓/⚠️/✗ | [per-variant optimality system paths; constraint-status agreement; independence grade] |
| N2 Reproducibility | ✓/⚠️/✗ | [seed, rerun command, versions] |
| N3 Parameter Transparency | ✓/⚠️/✗ | [classification coverage] |
| N4 Robustness and Coverage | ✓/⚠️/✗ | [cross-checks; regime matrix; usability ratio] |
| N5 Result Completeness | ✓/⚠️/✗ | [unfavorable results reported?] |
| N6 Epistemic Status | ✓/⚠️/✗ | [label audit] |

**Independence declaration:**
| Field | Value |
|-------|-------|
| `independence_grade` | I0 / I1 / I2 / I3 / I4 |
| `shared_from_author` | [modules, functions, expressions, or "none"] |
| `differing_axes` | [method / library / formulation / parameterization] |
| Max claim status supportable | [per `prompts/proof-code-independence.md` §3] |

**Constraint-status comparison (per variant):**
| Variant | Binding condition derived by the verifier | Points compared | Disagreements |
|---------|-------------------------------------------|-----------------|---------------|

**Grid honesty (per grid-based result):**
| Result | points_total | points_usable | usability_ratio | Exclusion reason | Count | Derived from model? |
|--------|--------------|---------------|-----------------|------------------|-------|---------------------|

**Regime matrix:**
| Region | interior | each binding | corners | infeasible | regime boundary | degenerate |
|--------|----------|--------------|---------|------------|-----------------|------------|
| Status | TESTED / NOT TESTED / EMPTY | | | | | |

**FAIL conditions hit:** [by trigger ID, or "none"]
**Downgrades proposed:** [or "none"]

**Epistemic-status audit:**
| Result | Label assigned | Label appropriate? |
|--------|---------------|--------------------|

**Counterexamples to core propositions:** [none / list — with BLOCKED FROM STAGE 10 flags]

**Critical issues (FAILs):** [specifics]
**Warnings to address:** [list]
**Conditions (if CONDITIONAL PASS):** [what must be fixed before manuscript inclusion]

**Recommended action:**
[If PASS: "Proceed to HiL-N3 (Numerical Results Review)."]
[If CONDITIONAL PASS: "Proceed to HiL-N3; the listed conditions must be resolved before any figure enters the manuscript."]
[If FAIL: "Present the failure to the researcher per the standard gate-failure protocol. Recommended loopback: Stage 7b (fix code/parameters/report) or Stage 6 (revise the broken proposition)."]
```
