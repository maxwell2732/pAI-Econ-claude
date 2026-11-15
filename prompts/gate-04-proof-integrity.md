# Gate 4: Proof Integrity Gate

## Purpose
Assess whether the proof sketches in Stage 7 are logically sound — checking for fatal gaps, false steps, and misuse of the model's assumptions.

## Runs After
Stage 7 (Proof Sketch)

## Inputs
- `outputs/proof_sketches.md`
- `outputs/candidate_propositions.md`
- `outputs/model_primitives.md`
- `outputs/assumption_audit.md`
- `verification_record.json`
- `prompts/entailment-ledger.md` (read in full before Check 8)

## Before evaluating: the obligation preamble

Read every OPEN entry in `verification_record.json → unresolved_issues` for the claims in scope. For each, record in this gate's output:

| Obligation | Raised by | Discharge condition | Status | Evidence |
|---|---|---|---|---|
| OBL-… | gate_3 | … | DISCHARGED / STILL OPEN | path, or "none" |

A remedy that was applied is not thereby discharged. Discharge requires evidence that the remedy closed the defect the obligation was raised against. Where a remedy addressed the route by which a problem was noticed rather than the problem, the obligation is `STILL OPEN`.

This gate may not pass with an obligation silently carried forward.

## What This Gate Is NOT
This gate does not verify that proofs are complete. Proof sketches are expected to contain GAPs. This gate checks that:
1. The GAPs and FALSE_RISK steps are correctly identified (not hidden)
2. No proof step contradicts the model's assumptions or the proposition's statement
3. No proof step relies on an assumption NOT listed in the model
4. The overall proof strategy is logically coherent (even if incomplete)
5. The key algebra (FOCs, closed forms, comparative-statics signs) survives an independent re-derivation

## Evaluation Criteria

For EACH proof sketch in proof_sketches.md:

### Check 1 — Honest Annotation
Are all steps in the proof sketch annotated (SOLID, PLAUSIBLE, GAP, FALSE_RISK, CITE)?
- **PASS:** All steps carry explicit annotations
- **FAIL:** Steps appear without annotation — the sketch is presenting unjustified claims as if they were solid

### Check 2 — No Contradictory Steps
Do any proof steps contradict the model's assumptions or the proposition's statement?
- **PASS:** No contradictions found
- **WARNING:** A step may be inconsistent with an assumption; verify
- **FAIL:** A proof step explicitly contradicts an assumption in model_primitives.md or assumption_audit.md

### Check 3 — Assumption Usage
Does each step correctly cite the assumptions it uses (from assumption_audit.md)? Complete `verification_record.json → assumptions` for each claim: `declared`, `used`, `required_for_strength`, `undeclared_but_used`, `declared_but_unused`.
- **PASS:** Steps reference the assumptions they rely on, and `undeclared_but_used` is empty
- **WARNING:** An undeclared assumption is load-bearing for a SUPPORTING or EXTENSION claim only
- **FAIL:** `undeclared_but_used` is non-empty for a CORE claim (trigger FT-5), **regardless of how the step is annotated**

**Severity does not depend on the step's annotation.** An earlier version of this check failed only when a step marked SOLID needed an unlisted assumption, which let the author's own choice of annotation set the severity of the audit of that annotation. Stage 7 and this gate are the same actor, so that was a loop rather than a judgment. An assumption that is load-bearing for a CORE claim and absent from `assumption_audit.md` is a FAIL whether the step is marked SOLID, PLAUSIBLE, or GAP. Honest annotation remains required and is scored by Check 1; it no longer lowers this check's severity.

### Check 4 — FALSE_RISK Containment
Are all FALSE_RISK steps localized (i.e., they do not cascade and invalidate the entire argument)?
- **PASS:** FALSE_RISK steps are contained; the proof structure remains coherent even if they fail
- **WARNING:** A FALSE_RISK step is central; if it fails, substantial revision is needed
- **FAIL:** A FALSE_RISK step is the entire argument; the proposition is essentially unproved

### Check 5 — Proof Strategy Coherence
Is the overall proof strategy coherent? Does the sequence of steps, even accounting for GAPs, constitute a recognizable logical argument?
- **PASS:** The strategy is coherent; a reader can follow the intended argument
- **WARNING:** The strategy is unclear in places; needs more detail
- **FAIL:** The "proof" is a list of unconnected statements; there is no actual argument

### Check 6 — Lemma Completeness
For lemmas listed as "needed" in proof_sketches.md: are they plausibly true given the model? Do any of them appear to be false or to require assumptions not in the model?
- **PASS:** All needed lemmas appear plausible given the model
- **WARNING:** One or more needed lemmas may require additional assumptions
- **FAIL:** A needed lemma appears to be false or impossible to prove from the stated assumptions

### Check 7 — Independent Re-derivation of Key Algebra
For each proof sketch, identify the load-bearing displayed equations: first-order conditions, closed-form solutions, comparative-statics signs, threshold formulas. Re-derive each one directly from model_primitives.md and the stated assumptions, WITHOUT consulting the sketch's own algebra (derive first, compare second; reading the sketch's steps first anchors you to its errors). Then compare term by term: signs, coefficients, exponents, subscripts.

**Record the working, not the verdict.** Write each re-derivation to `verification/derivations/<claim_id>.md` and record the path in `verification_record.json → independent_derivation.derivation_path`. A table of ticks cannot be re-checked by anyone, so it is not evidence. Write the derivation section of the file before its comparison section, so the file's own structure shows which came first.

- **PASS:** All re-derivations match the sketch, up to explicitly stated normalizations
- **WARNING:** A discrepancy exists but traces to a notation or normalization difference; document the reconciliation
- **FAIL:** A step yields a different sign, coefficient, or functional form under independent re-derivation

**On classifying a discrepancy.** A different functional form on a load-bearing result is a FAIL, including when the result's *defining property* is unaffected and the downstream uses rely only on that property. Where you judge that such a discrepancy should not fail the gate, that is a downgrade: record the trigger in `gate_decision.fail_conditions_hit`, record the downgrade with its rationale, and present it for approval per `SKILL.md → Recording a downgrade`. Do not resolve it by reclassifying it inside your own reasoning.

### Check 8 — Entailment

Read `prompts/entailment-ledger.md` and run it on every claim: the nine links L1–L9, the support checklist S1–S9, and the satisfiability procedure. Write the per-claim block into this gate's output and the same values into `verification_record.json`.

This check exists because Checks 1–7 verify **derivations** and nothing verifies **claims**. A verified formula does not make the proposition built on it true, and every mathematical defect this pipeline has shipped had correct algebra.

For every claim, the L4 term table and the L5 factor table are written out in full where they apply. They are the check; a verdict word in their place removes it.

- **PASS:** every link `OK` or `N/A`; no `MISSING` support item on which a conclusion depends; `satisfiability = SATISFIABLE`
- **WARNING:** a `GAP` on a link for a SUPPORTING or EXTENSION claim
- **FAIL:** any link `FAIL` (trigger FT-1); a `MISSING` support item a conclusion depends on (FT-6); `satisfiability = INFEASIBLE_AT_STATED_POINT` (FT-4); a `GAP` on a CORE claim's L3 or L4

Where a link `FAIL` is a claim contradicted by an expression this gate verified, class **ND-1** applies and the finding is non-downgradable.

## Verdict Rules

**⚠️ Precedence.** The FAIL triggers in `SKILL.md → Objective FAIL triggers` take precedence over the arithmetic below. No verdict above FAIL may be issued while any trigger is live. The WARNING counts are a secondary path to CONDITIONAL PASS and never a path past a trigger.

**PASS:**
- No FAIL trigger live
- Check 1: PASS for all propositions
- Check 4: no FAIL
- Check 5: PASS for all CORE propositions
- Check 7: no FAIL
- Check 8: PASS for all propositions
- No more than 2 WARNINGs total on Checks 2, 3, 6, 7, 8
- No OPEN obligation from an earlier gate that blocks the manuscript

**CONDITIONAL PASS:**
- No FAIL trigger live
- Check 1 passes for all CORE propositions (may fail for SUPPORTING)
- Check 5 passes for CORE
- Check 7: no FAIL on CORE propositions
- Check 8: no FAIL on any proposition; no `GAP` on a CORE claim's L3 or L4
- 3–4 WARNINGs total
- Every OPEN obligation listed with its discharge condition

**FAIL:**
- Any FAIL trigger from `SKILL.md` is live
- Check 1 fails for any CORE proposition
- Check 2 or 3 FAILs for any CORE proposition
- Check 4 FAILs (FALSE_RISK is the entire argument for a CORE proposition)
- Check 5 FAILs for any CORE proposition
- Check 7 FAILs for any CORE proposition (the sketch's algebra contradicts an independent re-derivation)
- Check 8 FAILs for any proposition

**Every WARNING raised here becomes an OPEN obligation** in `verification_record.json → unresolved_issues`, with a `discharge_condition` stating what evidence would close it and `blocks_manuscript` set. A WARNING whose fix is described but not verified stays OPEN; the next gate reports it.

## Claim status assignment

This gate sets `proof_status` for each claim, per `prompts/verification-record.md`. The minimum evidence for `VERIFIED` is: the assumption ledger complete with `undeclared_but_used` empty and `satisfiability = SATISFIABLE`; a recorded derivation path; Check 8 with no FAIL and no undischarged GAP; no `MISSING` support item the conclusion depends on; a second route for each load-bearing equality; `counterexample_tests` performed; `independence_grade` I0 or I1.

A claim missing any of those stays `NOT VERIFIED` or becomes `CONDITIONALLY VALID` with its conditions named. **Leaving a claim at `NOT VERIFIED` is a normal and correct outcome at this gate**, since Stage 8's search has not yet run. The status is a record of evidence, so do not raise it to clear a blockage.

`counterexample_tests` performed means an entry against the claim's current text with a stated search space. A CORE claim whose entry is `SEARCH NOT PERFORMED`, or which has no entry, may reach `CONDITIONALLY VALID` and may not reach `VERIFIED`. The required search is specified in `prompts/08-counterexample-finder.md → Required executable search`, and the flags this gate's Check 8 raised are what it is aimed at.

---

## Output Format

Write the gate result to `gates/gate-04-proof-integrity.md`:

```markdown
# Gate 4: Proof Integrity Gate — Verdict

**Verdict:** PASS / CONDITIONAL PASS / FAIL

**Obligations carried into this gate:**
| Obligation | Raised by | Discharge condition | Status | Evidence |
|------------|-----------|---------------------|--------|----------|

**Per-proposition check summary:**
| Proposition | Check 1 | Check 2 | Check 3 | Check 4 | Check 5 | Check 6 | Check 7 | Check 8 | Status |
|------------|---------|---------|---------|---------|---------|---------|---------|---------|--------|
| P_E1 | ✓/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ | NOT VERIFIED |

**FAIL conditions hit:** [list by trigger ID, or "none" — filled whether or not a downgrade followed]
**Downgrades proposed:** [from → to, rationale, class, researcher_approved, or "none"]

**Entailment Ledger blocks:** one per claim, in the format of `prompts/entailment-ledger.md` Part 4, with the L4 and L5 tables written out where they apply.

**Critical issues (FAILs):**
[Specific description of any FAIL check with the problematic step]

**Warnings to address:**
[List WARNINGs with specific recommendations]

**Recommended action:**
[If PASS: "Proceed to Stage 8."]
[If CONDITIONAL PASS: "Proceed to Stage 8; the following proof steps require attention before formalization: [list]."]
[If FAIL: "Return to Stage 6 (Proposition Generator) to revise the proposition statement, or provide a corrected proof strategy. Specific issue: [description]."]
```

---

## Empirical-Companion Mode Addendum

**Applies only when `state.json → mode == "empirical-companion"`.** In `theory-development`
mode, ignore this section entirely. See `prompts/mode-empirical-companion.md` for the full
mode contract.

Additional inputs: `outputs/empirical_scope.md`, `outputs/empirical_theory_map.md`.

Checks 1 through 7 all run unchanged, including the independent re-derivation in Check 7.
This mode adds one check.

### Check EC-D — Target hypothesis derivation

For each target hypothesis in `empirical_scope.md`: given the assumptions actually in force,
does the model establish the hypothesis?

Verify Stage 7's own verdict rather than accepting it. Re-derive the key sign from
`model_primitives.md` and the assumption set, then compare.

- **PASS:** every target hypothesis is `DERIVED`, or `DERIVED CONDITIONAL` on a condition
  that is in the assumption set and audited
- **WARNING:** a hypothesis is `NOT DERIVED`, Stage 7 emitted a complete
  `TARGET HYPOTHESIS NOT DERIVED` block, and the researcher's decision is still pending
- **FAIL:** a hypothesis is asserted as derived when the re-derivation does not support it;
  or a hypothesis is `NOT DERIVED` with no `TARGET HYPOTHESIS NOT DERIVED` record; or the
  sketch closes the gap with an assumption that does not appear in `assumption_audit.md`

The third failure mode is assumption laundering caught at the proof stage. A sketch that
introduces convexity, monotonicity, a parameter restriction, or a functional form in order
to sign a derivative, without that restriction appearing in the audited assumption set, is a
FAIL regardless of how reasonable the restriction is. The fix is to return to Stage 5 and
audit it, not to keep it in the proof.

### Verdict rule additions

- **FAIL** if Check EC-D FAILs for any target hypothesis.
- A Check EC-D WARNING counts toward the WARNING total in the standard arithmetic and does
  not by itself prevent a CONDITIONAL PASS. The pipeline reported honestly and is awaiting a
  researcher decision; that is the intended behavior, not a defect.

Add to the gate output:

```markdown
**Mode:** empirical-companion

**Check EC-D — Target hypothesis derivation:**

| Hypothesis | Proposition | Stage 7 verdict | Re-derivation agrees? | Result |
|------------|-------------|-----------------|----------------------|--------|
| H1 | P_C1 | DERIVED | yes / no | ✓/⚠️/✗ |

**Assumptions used in proofs but absent from assumption_audit.md:** [list, or "none"]
```
