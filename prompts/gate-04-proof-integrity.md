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

## What This Gate Is NOT
This gate does not verify that proofs are complete. Proof sketches are expected to contain GAPs. This gate checks that:
1. The GAPs and FALSE_RISK steps are correctly identified (not hidden)
2. No proof step contradicts the model's assumptions or the proposition's statement
3. No proof step relies on an assumption NOT listed in the model
4. The overall proof strategy is logically coherent (even if incomplete)

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
Does each SOLID or PLAUSIBLE step correctly cite the assumptions it uses (from assumption_audit.md)?
- **PASS:** Steps reference the assumptions they rely on
- **WARNING:** Assumptions are used but not explicitly cited; may indicate hidden assumption
- **FAIL:** A SOLID step appears to require an assumption NOT in the model

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

## Verdict Rules

**PASS:**
- Check 1: PASS for all propositions
- Check 4: no FAIL
- Check 5: PASS for all CORE propositions
- No more than 2 WARNINGs total on Checks 2, 3, 6

**CONDITIONAL PASS:**
- Check 1 passes for all CORE propositions (may fail for SUPPORTING)
- Check 5 passes for CORE
- 3–4 WARNINGs total

**FAIL:**
- Check 1 fails for any CORE proposition
- Check 2 or 3 FAILs for any CORE proposition
- Check 4 FAILs (FALSE_RISK is the entire argument for a CORE proposition)
- Check 5 FAILs for any CORE proposition

---

## Output Format

Write the gate result to `gates/gate-04-proof-integrity.md`:

```markdown
# Gate 4: Proof Integrity Gate — Verdict

**Verdict:** PASS / CONDITIONAL PASS / FAIL

**Per-proposition check summary:**
| Proposition | Check 1 | Check 2 | Check 3 | Check 4 | Check 5 | Check 6 |
|------------|---------|---------|---------|---------|---------|---------|
| P_E1 | ✓/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ |

**Critical issues (FAILs):**
[Specific description of any FAIL check with the problematic step]

**Warnings to address:**
[List WARNINGs with specific recommendations]

**Recommended action:**
[If PASS: "Proceed to Stage 8."]
[If CONDITIONAL PASS: "Proceed to Stage 8; the following proof steps require attention before formalization: [list]."]
[If FAIL: "Return to Stage 6 (Proposition Generator) to revise the proposition statement, or provide a corrected proof strategy. Specific issue: [description]."]
```
