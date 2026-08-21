# Gate EC: Empirical–Theory Alignment Gate

**Runs only in `empirical-companion` mode.**

## Purpose
Verify that the model and the empirical paper are about the same thing: that every main
proposition earns its place by serving an empirical result, that every target hypothesis is
actually derivable, and that the model has not grown beyond what the empirical design needs.

This gate protects the mode's governing principle from both directions. It fails a model
that has quietly expanded into a theory paper, and it fails a model that has quietly
narrowed the empirical claim to whatever it could prove.

## Runs After
Stage 6 (Proposition Generator) and Gate 3 (Non-triviality), before HiL-5.

## Inputs
- `outputs/empirical_scope.md`
- `outputs/empirical_theory_map.md`
- `outputs/minimality_check.md`
- `outputs/candidate_propositions.md`
- `outputs/model_primitives.md`
- `outputs/assumption_audit.md`
- `outputs/scope_notes.md` (if it exists)

---

## Evaluation Criteria

### EC1 — Proposition coverage
Does every main proposition correspond to at least one empirical result?

Check each CORE proposition against `empirical_theory_map.md`.
- **PASS:** every CORE proposition appears in at least one map row
- **WARNING:** a SUPPORTING proposition has no empirical counterpart and has not been moved
  to `scope_notes.md`
- **FAIL:** a CORE proposition has no empirical counterpart

A CORE proposition with no empirical role is either demoted, moved to `scope_notes.md`, or
the researcher adds the empirical result it speaks to.

### EC2 — Hypothesis derivability
Is every target hypothesis in `empirical_scope.md` derivable from the model?

Do not accept a proposition's existence as evidence. Check that the proposition's statement
actually delivers the hypothesis's claim — same direction, same object, same conditions.
- **PASS:** every target hypothesis maps to a proposition whose statement delivers it
- **WARNING:** a hypothesis is delivered only in a weakened or conditional form, and the
  weakening is stated in the map
- **FAIL:** a target hypothesis has no proposition, or the mapped proposition does not
  deliver the claim, and no `TARGET HYPOTHESIS NOT DERIVED` record exists for it

A hypothesis with a `TARGET HYPOTHESIS NOT DERIVED` record and an unresolved researcher
decision is a WARNING, not a FAIL — the pipeline reported honestly and is awaiting a choice.
It becomes a FAIL if Stage 6 asserted the hypothesis anyway.

### EC3 — Mechanism parsimony
Is there any mechanism in the model that serves no empirical result?

Cross-check `model_primitives.md` against `minimality_check.md`.
- **PASS:** every live mechanism has an empirical role of `baseline`, `mechanism`,
  `heterogeneity`, `identification`, or a justified `structural`
- **WARNING:** an element is marked `structural` without a specific statement of what breaks
  without it
- **FAIL:** a live mechanism has empirical role `none`, or a mechanism present in
  `model_primitives.md` has no row in `minimality_check.md` at all

### EC4 — Assumption economy
Has the model taken on assumptions beyond what the empirical paper needs?

Read every `ADDED-FOR-TARGET` entry in `assumption_audit.md`.
- **PASS:** each such assumption has an economic justification that holds independent of the
  target it serves, and its support status is recorded
- **WARNING:** an assumption is justified but its support status is `NONE FOUND` and the
  manuscript does not yet flag it
- **FAIL:** an `ADDED-FOR-TARGET` assumption has no justification independent of the target,
  or a load-bearing assumption was introduced after the scope lock without the tag

This is the assumption-laundering check. A monotonicity, convexity, single-crossing,
parameter, or distributional restriction adopted because it produces the researcher's
expected sign, and defended only by that sign, is a FAIL.

### EC5 — Heterogeneity correspondence
Does the heterogeneity proposition correspond to the empirical interaction or subgroup
analysis?

- **PASS:** the proposition states a cross-partial, an interaction, or a comparison across
  the same moderating variable the empirical analysis splits on
- **WARNING:** the moderating object is related but not identical (e.g. the model varies a
  cost parameter while the empirical split is on a stock measure that plausibly proxies it),
  and the relation is stated in the map
- **FAIL:** the proposition states no interaction at all, or the cross-partial is taken with
  respect to a different variable than the empirical analysis moderates on

An empirical paper that splits on initial financing constraints needs a proposition about
how the effect varies with the financing constraint, not a proposition about the level
effect in a constrained subsample.

### EC6 — Mechanism object identity
Does the mechanism proposition concern the same economic object the empirical mechanism test
measures?

Read the "Object identity check" block in `empirical_theory_map.md` and verify it
independently.
- **PASS:** the empirical test's measured object and the model's mechanism parameter are the
  same economic object
- **WARNING:** they are related through a stated and defensible proxy relationship, and the
  proxy assumption is recorded in `assumption_audit.md`
- **FAIL:** the empirical result is claimed to test mechanism M, but the model's M is a
  different latent object

**EC6 FAIL is mandatory and cannot be waived by a CONDITIONAL PASS.** If the mechanism test
measures one thing and the model's mechanism is another, the paper's central claim — that
the theory explains the empirics — does not hold. Either the model's mechanism changes
(loop back to Stage 3b or Stage 4) or the empirical claim about what the test shows changes.

---

## Verdict Rules

**PASS:**
- EC1, EC2, EC3, EC5, EC6: no FAIL
- EC4: no FAIL
- At most 2 WARNINGs total

**CONDITIONAL PASS:**
- No FAIL on EC1, EC2, EC4, EC5
- EC6: PASS (never WARNING-only for a CORE mechanism proposition)
- 3–5 WARNINGs total
- Each WARNING has a stated correction to be made before Stage 10

**FAIL:**
- Any FAIL on EC1, EC2, EC3, EC4, or EC5
- Any FAIL on EC6 (mandatory, non-waivable at CONDITIONAL PASS)
- 6 or more WARNINGs

## Loopback targets

| Failing check | Loop back to |
|---------------|--------------|
| EC1, EC2, EC5 | Stage 6 — Proposition Generator |
| EC3, EC4 | Stage 4 — Model Primitives |
| EC6 | Stage 3b — Canonical Model Matching (wrong model family) or Stage 4 (wrong mechanism parameter) |

Apply the standard gate-failure protocol from `SKILL.md`: present the failure, wait for the
researcher, and accept `PROCEED WITH CAVEAT` or `LOOP BACK TO STAGE X`. An EC6 caveat
override must be disclosed in the manuscript itself, as a stated limitation on what the
mechanism test establishes.

---

## Output Format

Write the gate result to `gates/gate-ec-empirical-alignment.md`:

```markdown
# Gate EC: Empirical–Theory Alignment Gate — Verdict

**Verdict:** PASS / CONDITIONAL PASS / FAIL

**Check summary:**

| Check | Subject | Result | Note |
|-------|---------|--------|------|
| EC1 | Proposition coverage | ✓/⚠️/✗ | [n CORE propositions, n mapped] |
| EC2 | Hypothesis derivability | ✓/⚠️/✗ | [n target hypotheses, n derived] |
| EC3 | Mechanism parsimony | ✓/⚠️/✗ | [n live mechanisms, n with empirical role] |
| EC4 | Assumption economy | ✓/⚠️/✗ | [n ADDED-FOR-TARGET assumptions] |
| EC5 | Heterogeneity correspondence | ✓/⚠️/✗ | [moderating variable match] |
| EC6 | Mechanism object identity | ✓/⚠️/✗ | [measured object vs. model object] |

**Per-hypothesis status:**

| Hypothesis | Proposition | Derived? | Form |
|------------|-------------|----------|------|
| H1 | P1 | yes / no / conditional | [as stated / weakened to ... / conditional on ...] |

**Critical issues (FAILs):**
[For each FAIL: the check, the specific evidence, and what must change.]

**Warnings to address:**
[Each WARNING with the correction required before Stage 10.]

**Scope notes reviewed:** [n entries in scope_notes.md; none / n carry a promotion trigger]

**Recommended action:**
[If PASS: "Proceed to HiL-5 (Empirical Companion Checkpoint)."]
[If CONDITIONAL PASS: "Proceed to HiL-5; the following corrections are required before
Stage 10: [list]."]
[If FAIL: "REVISE — return to Stage [X]. Specific issue: [description]."]
```

Log: `[GATE EC — Empirical–Theory Alignment Gate] <ISO timestamp> | PASS / CONDITIONAL PASS / FAIL [SEVERITY] — <one-line reason>`
Record `gate_results.gate_ec` in `state.json`, along with
`empirical_companion.unmapped_propositions` and `empirical_companion.underived_hypotheses`.
