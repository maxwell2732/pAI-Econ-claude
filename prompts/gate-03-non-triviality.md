# Gate 3: Non-triviality Gate

## Purpose
Verify that the candidate propositions are genuinely non-trivial — that they could not have been stated or proved without the model, and that the model's assumptions are doing real work.

## Runs After
Stage 6 (Proposition Generator)

## Inputs
- `outputs/candidate_propositions.md`
- `outputs/model_primitives.md`
- `outputs/assumption_audit.md`

## Core Question
For each CORE proposition, ask: **Would a careful economist have known the answer to this question before building the model?**

If yes, the proposition is trivial. A paper full of trivial results will be rejected.

## Evaluation Criteria

For EACH proposition marked CORE in candidate_propositions.md:

### Check A — Pre-Model Answer Test
Could the answer to this proposition be correctly stated by an informed economist WITHOUT working through the model?
- **NON-TRIVIAL:** The result requires the model machinery; informal intuition would give the wrong answer or no answer
- **BORDERLINE:** The result might be guessed correctly but requires the model to verify
- **TRIVIAL:** Any economist familiar with the area would immediately know this result

### Check B — Assumption Work Test
Do the model's assumptions do real work in proving this proposition?
- **HARD-WORKING:** The binding assumptions are genuinely necessary; the result changes if they are removed
- **SOFT:** Some assumptions appear needed but the result might hold under weaker conditions
- **CIRCULAR:** The assumptions are essentially designed to deliver the conclusion; removing them makes the result false in an obvious way that the paper should acknowledge

### Check C — Pure Reformulation Test
Is this proposition merely a restatement of a known result in different notation?
- **ORIGINAL:** The statement is genuinely new relative to known results
- **EXTENSION:** The statement extends a known result in a non-trivial way
- **REFORMULATION:** This is essentially a known result restated; the novelty is expositional, not substantive

### Check D — Economic Content Test
Does the proposition say something that could not be stated without the economic framing? Would a pure mathematician prove this as a trivial lemma without economic content?
- **ECONOMIC CONTENT:** The result makes a claim about how economic agents behave or how markets work
- **MATHEMATICAL ONLY:** The result is a pure mathematical statement with no economic interpretation beyond the notation
- **DEFINITIONAL:** The result follows immediately from the definitions without any non-trivial argument

## Verdict Rules

For the full set of CORE propositions:

**PASS:**
- All CORE propositions are NON-TRIVIAL or BORDERLINE on Check A
- No CORE proposition fails Check C (REFORMULATION) unless explicitly acknowledged
- All CORE propositions have ECONOMIC CONTENT on Check D

**CONDITIONAL PASS:**
- 1 CORE proposition is BORDERLINE on Check A, but the others are NON-TRIVIAL
- OR: a REFORMULATION is found but the extension is genuinely important

**FAIL:**
- Any CORE proposition is TRIVIAL on Check A
- OR: Any CORE proposition is REFORMULATION on Check C without acknowledgment
- OR: The full set of CORE propositions collectively fails to add up to a non-trivial contribution

**Special FAIL — Empty Result Set:**
If there are no CORE propositions (all are labeled SUPPORTING or EXTENSION), this is a critical failure.

---

## Output Format

Write the gate result to `gates/gate-03-non-triviality.md`:

```markdown
# Gate 3: Non-triviality Gate — Verdict

**Verdict:** PASS / CONDITIONAL PASS / FAIL

**Per-proposition assessment:**
| Proposition | Check A | Check B | Check C | Check D | Overall |
|------------|---------|---------|---------|---------|---------|
| P_E1 | NON-TRIVIAL/BORDERLINE/TRIVIAL | HARD/SOFT/CIRCULAR | ORIGINAL/EXT/REFORM | ECON/MATH/DEF | OK/FLAG |
| P_C1 | ... | ... | ... | ... | ... |
| P_W1 | ... | ... | ... | ... | ... |

**Critical findings:**
[List any TRIVIAL or REFORMULATION findings with specific details]

**Recommended action:**
[If PASS: "Proceed to HiL-5."]
[If CONDITIONAL PASS: "Proceed to HiL-5; note that [proposition] should be strengthened or more carefully distinguished from [known result]."]
[If FAIL: "Return to Stage 5 (Assumption Audit) to tighten model assumptions, or to Stage 4 to revise the model structure to generate more non-trivial implications. Specific issue: [description]."]
```
