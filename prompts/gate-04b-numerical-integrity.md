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
Does the code faithfully implement the model? Verify against the artifacts: model primitives, objective function, equilibrium conditions, welfare function, constraints, parameter signs, integration bounds, first-order conditions, boundary values, and normalization choices.
- **PASS:** Every implemented equation matches its cited source; the report/docstrings cite specific equations or artifact locations and identify the corresponding code functions or line ranges
- **WARNING:** Mapping is present but incomplete or imprecise for non-core equations
- **FAIL:** An implemented equation contradicts the model artifacts, or core equations have no traceable mapping to the code

### Check N2 — Reproducibility
- **PASS:** Fixed random seed (where randomness is used); parameters in a config block or parameter file; one-command rerun works from the documented directory; Python and package versions recorded; output directory structure matches the plan; every figure traceable code → CSV → figure
- **WARNING:** Minor gaps (e.g., versions recorded but rerun requires an undocumented step)
- **FAIL:** Results or figures cannot be regenerated from the scripts, or any figure was manually edited

### Check N3 — Parameter Transparency
- **PASS:** Every parameter in `parameter_definitions.md` carries a valid classification (THEORETICAL NORMALIZATION / EMPIRICALLY GROUNDED / ILLUSTRATIVE / USER SPECIFIED) with a source or justification; any post-hoc parameter change is logged in the Parameter Change Log
- **WARNING:** 1–2 parameters lack a justification, or classification is arguable
- **FAIL:** A parameter lacks any source/justification; an ILLUSTRATIVE value is described as calibrated; or a post-results parameter change is unlogged

### Check N4 — Numerical Robustness
Evaluate: grid density; numerical tolerance; alternative starting values; local vs. global optimizer agreement; corner-solution detection; possible multiple optima; finer-grid sensitivity; optimization convergence; sensitivity to plausible parameter changes.
- **PASS:** Headline results checked on at least one finer grid or alternative method; local optima cross-checked against grid/global search where relevant; convergence failures handled explicitly
- **WARNING:** Robustness checks partial; headline results plausible but only single-method
- **FAIL:** A headline result rests on a single optimizer run with no cross-check, or known non-convergence is presented as a converged result

### Check N5 — Result Completeness
- **PASS:** The report includes results supporting the propositions AND results not supporting them, corner cases, failed optimization attempts, counterexamples, sensitive parameter regions, and inconclusive regions (or states explicitly that a category is empty)
- **WARNING:** A category is missing but recoverable from the CSVs
- **FAIL:** Unfavorable results present in the CSVs are absent from the report, or the searched region was visibly restricted to the supportive zone without disclosure

### Check N6 — Epistemic Status
- **PASS:** Every reported numerical result carries exactly one valid label (SYMBOLICALLY VERIFIED / NUMERICALLY VERIFIED FOR SPECIFIED PARAMETERS / ROBUST ACROSS SEARCHED GRID / COUNTEREXAMPLE FOUND / COMPUTATIONAL ILLUSTRATION / INCONCLUSIVE / NOT A PROOF), and no label overclaims (e.g., a single-point check labeled ROBUST ACROSS SEARCHED GRID)
- **WARNING:** Labels present but 1–2 are imprecise
- **FAIL:** Any result is unlabeled, or a numerical result is described in proof language ("we prove", "generally", "always")

## Verdict Rules

**PASS:** N1, N2, N3, N6 all PASS; no FAIL anywhere; at most 2 WARNINGs total.

**CONDITIONAL PASS:** No FAIL on N1 or N2; 3–4 WARNINGs total; deficiencies are documentation-level, not substance-level. State the conditions that must be fixed before any figure enters the manuscript.

**FAIL:** Any FAIL on N1–N6.

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
| N1 Equation–Code Consistency | ✓/⚠️/✗ | [equation ↔ function/line citations] |
| N2 Reproducibility | ✓/⚠️/✗ | [seed, rerun command, versions] |
| N3 Parameter Transparency | ✓/⚠️/✗ | [classification coverage] |
| N4 Numerical Robustness | ✓/⚠️/✗ | [cross-checks performed] |
| N5 Result Completeness | ✓/⚠️/✗ | [unfavorable results reported?] |
| N6 Epistemic Status | ✓/⚠️/✗ | [label audit] |

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
