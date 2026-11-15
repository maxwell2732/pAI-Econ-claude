# Proof–Code Independence

**Shared rule module.** Read this file at Stage 7b before writing any code, and at Gate 4b before evaluating Check N1. Stage 8 reads §5 for escalation triggers.

---

## Why this rule exists

In one past run, a single import produced an invalid grid that then drove a proposition-retention decision.

`kappa_sign.py` studies variant V1, the consumption-smoothing variant with CRRA utility and a borrowing limit `b ≤ b̄`. Line 33 imported `desired_investment` from the author's `model_functions`, which is variant V0's object, and used it to classify constraint status:

```python
def _is_constrained(g, w, bbar, p):
    """Constrained in V1 means the borrowing limit binds, i.e. the V0 cap would bind."""
    return desired_investment(g, p) > w + bbar
```

The docstring states the substitution as a definition. It is a conjecture, and it is false. V1's own first-order conditions give `Y_e = R` with the borrowing choice pinned by an Euler equation, so **V1's limit binds when desired borrowing exceeds `b̄`**, which is a different condition. Independent recomputation found that **all 1519 points** the script classified as unconstrained are points where V1's limit binds. A second defect, a bracket starting below the feasible region, made **all 3332** "no solution" points spurious. Usable grid: 252 of 5103, or 4.9%.

Gate 4b's Check N1 passed, and the evidence it cited was docstrings. A docstring is a claim about code. The one function whose docstring contained a mathematical conjecture is the one that was wrong.

The same session, in the same directory, also produced `symbolic_checks.py`, which imports nothing from the author's modules, restates the model's equations in sympy, and reduces twelve identities to exactly zero residual. That verification is sound and its PASS is real evidence.

**Same agent, same session, same directory. Sound evidence where it reimplemented, fabricated evidence where it imported.** Independence is a design variable, and this file controls it.

---

## 1. The rule

> Verification code may not inherit, import, or copy from the author's implementation:
>
> - any constraint classification or regime classification function;
> - any analytical intermediate expression that has not itself been independently verified;
> - any predicate encoding an expected sign, expected monotonicity, or expected regime;
> - any solver configuration whose choice is load-bearing for the result;
> - any feasibility bound that was asserted rather than derived.
>
> Verification code may share, with the dependency declared in the verification record:
>
> - the model primitives as stated in `model_primitives.md`;
> - parameter definitions and baseline values from `parameter_definitions.md`;
> - experiment inputs such as grids, seeds, and ranges;
> - pure numerical utilities with no model content, such as quadrature nodes, a root-finder, or a plotting helper.
>
> The key derivations and the key implementation path must be independent. Where they cannot be, the evidence grade is reduced per §3 and the dependency is named.

---

## 2. The lists, concretely

| Artifact | Share? | Why |
|---|---|---|
| `model_primitives.md` text | **Yes** | It is the specification. Both sides must agree on what is being verified. |
| `parameter_definitions.md` values | **Yes** | Experiment input. Disagreeing on parameters makes comparison meaningless. |
| Grid ranges, densities, seeds | **Yes** | Experiment input. |
| Quadrature nodes, a bisection routine, a CSV writer, a plotting helper | **Yes** | No model content. |
| A function returning the objective value | **No** | Model content. Reimplement from the primitives. |
| **A function classifying whether a constraint binds** | **No, absolutely** | The defect described at the top of this file. Derive each variant's binding condition from that variant's own optimality system. |
| A function returning a closed-form solution | **No**, unless that closed form is itself `VERIFIED`, in which case name it in `shared_from_author` | A closed form is a claim. |
| An expression for a derivative or a comparative static | **No**, unless `VERIFIED` | Same. |
| A predicate like `expect_negative(x)`, `assert sign == -1`, `if not expected: raise` | **No, absolutely** | Encodes the conclusion into the test. A test that assumes the answer cannot find the answer wrong. |
| A feasibility bound | **No**, unless derived in the verifier's own optimality system | The bracketing defect. |
| Solver tolerances and starting points | **No** where load-bearing. Report both configurations and whether they agree. | |

### The docstring rule

**A docstring citing a source artifact is a claim about the code, never evidence that the code matches the artifact.** Gate 4b may read docstrings to locate what to check. It may not accept them as the check.

---

## 3. Evidence grades

Independence is a spectrum. Each verification records an `independence_grade`.

| Grade | Condition | Maximum claim status it can support |
|---|---|---|
| **I0 — Independent** | Nothing from the forbidden list; differs on ≥2 axes of §4; derivation written before reading the author's | `VERIFIED` |
| **I1 — Shared primitives only** | Shares only permitted items; differs on ≥1 axis | `VERIFIED` |
| **I2 — Verified shared dependency** | Shares one or more analytical expressions that are themselves `VERIFIED` at I0 or I1, each named | `CONDITIONALLY VALID` |
| **I3 — Shared implementation** | Shares a model function, a classifier, or an unverified expression | `NUMERICALLY SUPPORTED` at most. **Never `VERIFIED`.** |
| **I4 — Self-check** | Same code, same path, no reimplementation | **No status.** Recorded as a smoke test. |

Calibration from that case: the symbolic-check script, which imported nothing from the author's modules, is **I1** and its evidence stands. The grid study is **I3** because of the shared classifier, so its strongest supportable status is `NUMERICALLY SUPPORTED`, and it fails the usability requirement besides.

### Declaration block

Record in `verification_record.json → numerical_checks`:

```json
"independence_grade": "I1",
"shared_from_author": ["BASELINE parameter dict", "Quadrature nodes"],
"differing_axes": ["method", "library", "formulation"],
"optimality_system_path": "verification/numerical/V1_optimality.md"
```

An undeclared dependency discovered later invalidates the verification and reopens the claim.

---

## 4. Axes of difference

A reimplementation must differ on at least one axis, and on two for grade I0.

| Axis | A genuine difference |
|---|---|
| **Solution method** | closed form against root-finding; root-finding against constrained optimization; grid search against a gradient method |
| **Library** | `scipy.optimize` against `sympy.solve` against hand-coded bisection |
| **Formulation** | solve for `e` against solve for `b`; primal against dual; value function against policy function |
| **Parameterization** | levels against logs; normalized against unnormalized |

Rewriting the author's function with different variable names is not a difference on any axis.

---

## 5. When to escalate to an independent reviewer (T3)

Most verification work is done by the orchestrator, because the checks that matter are mechanical and the barrier has been their absence rather than the identity of the checker. A claim escalates to **T3**, meaning verification by an actor that did not author it, when any of these holds:

1. It is the paper's headline result, by its own `economic_interpretation.md`.
2. Its Entailment Ledger returned a `FAIL` on any link.
3. Its numerical evidence is `independence_grade` I3 or worse, or `usability_ratio < 0.5`.
4. A gate FAIL condition was hit and a downgrade is proposed.
5. It was rewritten after Gate 4, at Stage 8 or HiL-6.
6. It asserts a strict inequality whose L3 check could not name the configuration that `H` excludes.
7. The researcher asks.

### T3 mechanisms, in order of cost

| Mechanism | `reviewer.actor` | Grade achievable | Availability |
|---|---|---|---|
| A `verifier` subagent spawned by the orchestrator, given `model_primitives.md`, `assumption_audit.md` and the claim text, and **not** given `proof_sketches.md` or `numerical_code/` | `verifier_subagent` | I0 or I1 on the derivation axis | Always. **This is the default.** |
| An external agent (Codex or similar, via whatever bridge is configured) | `external:<name>` | I0, including model diversity | Only where configured |
| A human reviewer | `human:<name>` | I0 | Researcher's choice |

**No part of this pipeline depends on an external agent.** Every FAIL trigger is evaluable by the orchestrator alone. An external reviewer raises the achievable grade for a T3 claim and changes no gate's verdict logic. Where none is available, the subagent route records its grade honestly, and where that grade cannot support `VERIFIED`, the claim stays `CONDITIONALLY VALID` or `NOT VERIFIED` with the reason stated.

**Degrade the evidence grade, never the standard.** That is the whole point of the grading table.

---

## 6. Deriving an optimality system

Required at Stage 7b before any code is written, per optimization problem **and per model variant**, written to `verification/numerical/<variant>_optimality.md`:

1. The objective and the choice variables, copied from `model_primitives.md`.
2. Every constraint, with its multiplier.
3. The full first-order / KKT system.
4. Complementary slackness, one line per constraint.
5. **The binding condition for each constraint, in terms of primitives** — the condition under which that constraint's multiplier is strictly positive.
6. The feasible region, with **each bound derived rather than assumed**, including bounds implied by non-negativity of consumption or of any other derived quantity.
7. Second-order or concavity conditions, and what they guarantee about uniqueness.
8. The corner solutions the problem admits, enumerated.

**Item 5 is the defect this file exists to prevent, and item 6 is the bracketing defect.**

### Variants are separate problems

Where the model has variants (V0, V1, …), items 1 through 8 are produced for each variant, **from that variant's own objective and constraints**. A variant's binding condition may not be inherited, cited, or assumed equal to another variant's.

Worked example, from the model that failed:

| | V0 (risk neutral) | V1 (CRRA, consumption smoothing) |
|---|---|---|
| Problem | `max_e −e + Y(g,e)/R` s.t. `0 ≤ e ≤ w + b̄` | `max_{e,b} u(w+b−e) + δu(Y(g,e) − Rb)` s.t. `b ≤ b̄`, `c₁,c₂ > 0` |
| Interior FOC | `Y_e = R` | `Y_e = R` **and** `u′(c₁) = δR·u′(c₂)` |
| Binding condition | `e*(g) > w + b̄` | `b^u(g,w) > b̄`, where `b^u` solves the Euler equation at `e = e*(g)` |
| Feasible interval for `e` | `[0, w+b̄]` | `(e_min, w+b̄)` with `e_min = (R b̄ /(A g^γ))^{1/α}` from `c₂ > 0` |

The two binding conditions disagree on 29.8% of a 5103-point grid, one-sidedly: V0's rule never over-reports binding and under-reports it on 1519 points. A V1 agent borrows for first-period consumption as well as for investment, so desired borrowing can far exceed `e*(g) − w`.

### Residual and state audit

For every reported solution point, record:

| Field | Requirement |
|---|---|
| `objective_value` | recomputed independently |
| `foc_residual` | max absolute residual of the optimality system, with the tolerance stated |
| `constraint_status` | per constraint: `BINDING` / `SLACK` / `VIOLATED`, **derived from the recomputed multiplier**, never inherited |
| `multiplier_signs` | per constraint, with the sign condition checked |
| `feasibility` | every constraint evaluated, including derived non-negativity constraints |
| `convergence` | solver flag, iterations, termination reason |
| `agreement` | difference against the author's value at the same point, with a tolerance |

**A `constraint_status` disagreement between the verifier and the author's code at any point is an immediate Gate 4b FAIL**, with no WARNING band.

---

## 7. Grid honesty

Every grid-based result reports:

| Field | Requirement |
|---|---|
| `points_total` | the grid as specified |
| `points_evaluated` | points the code attempted |
| `points_usable` | points that produced a usable value |
| `usability_ratio` | `points_usable / points_total` |
| `exclusions` | one entry per exclusion **reason**, with its count and **a derivation of the exclusion rule from the model** |
| `grid_spec` | ranges, densities, and the justification for the ranges |

Rules:

- **`usability_ratio < 0.5` is a Gate 4b FAIL on numerical robustness**, whatever the usable points show.
- Every exclusion reason carries `derived_from_model: true|false`. A `false` entry is a FAIL.
- `ROBUST ACROSS SEARCHED GRID` requires `usability_ratio ≥ 0.5` and all exclusions model-derived. Below that, the strongest available label is `INCONCLUSIVE`.
- Absence of a counterexample after a search never upgrades a claim. It is `NO COUNTEREXAMPLE FOUND` on the stated search space, which is evidence about the search.

The grid study described above would have reported `usability_ratio 0.049` with two exclusion reasons, neither derivable from V1: a FAIL on both counts, visible as one number at the human checkpoint.

---

## 8. The regime test matrix

Coverage is a matrix, not a count. For each constraint and each variant:

| Region | Required test | Expected behaviour |
|---|---|---|
| Interior, all constraints slack | ≥1 point | FOC residual at tolerance, all multipliers zero |
| Each single constraint binding | ≥1 point per constraint | that multiplier strictly positive, others zero |
| Each corner of the choice set | ≥1 point per corner | corner correctly identified, not reported as interior |
| Infeasible region | ≥1 point | reported infeasible, with the violated constraint named |
| Boundary between regimes | ≥1 point per boundary | continuity, or a documented discontinuity of the policy |
| Degenerate distribution | ≥1 point | handled, or explicitly excluded by an assumption |

A region with no test is `NOT TESTED` in the record, never omitted. An empty region is `EMPTY`, with the argument for emptiness in the report.
