# Gate 5: Economic Meaning Gate

## Purpose
Verify that the economic interpretations produced in Stage 9 are consistent with the formal results and provide genuine economic insight — not overreach, not underreach.

## Runs After
Stage 9 (Economic Interpretation)

## Inputs
- `outputs/economic_interpretation.md`
- `outputs/candidate_propositions.md`
- `outputs/proof_sketches.md`
- `outputs/counterexamples_and_edge_cases.md`

## Core Principle
A good economic interpretation:
1. Is **consistent** with the formal result (no overreach)
2. Is **informative** — it says something beyond restating the math (no underreach)
3. Is **honest** about scope — acknowledges limitations, counterexamples, and conditions
4. **Connects** the formal model to real economic phenomena through plausible mechanisms

## Evaluation Criteria

For EACH proposition's interpretation in economic_interpretation.md:

### Check 1 — No Overreach
Does the interpretation claim more than the formal result establishes?
- **PASS:** Interpretation is fully consistent with what was proved or sketched
- **WARNING:** Interpretation extrapolates beyond what is formally established; conditional language should be used
- **FAIL:** Interpretation claims a result is general when the proof only covers a special case, OR treats a conjecture-level sketch as a proved result

**Common overreach patterns to check:**
- Treating a comparative statics result as a causal claim about the real world
- Generalizing a result proved for 2 types to "all type distributions"
- Using "proves" when the rigor level is SKETCH or CONJECTURE-LEVEL
- Ignoring counterexamples found in Stage 8

### Check 2 — No Underreach
Does the interpretation actually explain the economic content? Or does it just restate the mathematics?
- **PASS:** The interpretation provides a genuine economic mechanism and explains *why* the result holds
- **WARNING:** The interpretation is descriptive but does not explain the underlying mechanism
- **FAIL:** The interpretation is a direct restatement of the proposition in plain language without adding any economic insight

**Common underreach patterns:**
- "As p increases, equilibrium x increases" with no mechanism explanation
- No "so what?" paragraph
- No connection to real economic phenomena or policy

### Check 3 — Counterexample Consistency
Do the interpretations acknowledge the counterexamples and edge cases found in Stage 8?
- **PASS:** All severity-HIGH counterexamples from Stage 8 are acknowledged in the interpretation
- **WARNING:** Some moderate-severity counterexamples are not mentioned
- **FAIL:** A proposition was found to BREAK in Stage 8 (severity HIGH) but the interpretation presents it as a general result

### Check 4 — Scope Honesty
Are the limitations of the interpretation stated explicitly?
- **PASS:** Each interpretation includes limitations acknowledging what the model does NOT address
- **WARNING:** Limitations section is brief or generic
- **FAIL:** No limitations are stated; the interpretation reads as if the model captures the full phenomenon

### Check 5 — Cross-Proposition Narrative
Does the "Cross-Proposition Narrative" in economic_interpretation.md provide a coherent, unified story?
- **PASS:** The central message is clear; the propositions fit together into one story
- **WARNING:** The narrative connects some propositions but not all; some results feel disconnected
- **FAIL:** There is no cross-proposition narrative, or the individual interpretations contradict each other

### Check 6 — "So What?" Clarity
Does every CORE proposition have a "So What?" paragraph that a non-specialist can understand?
- **PASS:** Every CORE proposition has a clear, jargon-minimal "So What?" paragraph
- **WARNING:** One or more "So What?" paragraphs are present but rely on technical jargon
- **FAIL:** CORE propositions lack "So What?" paragraphs

## Verdict Rules

**PASS:**
- Check 1: PASS for all CORE propositions
- Check 3: PASS (all HIGH-severity counterexamples acknowledged)
- Check 5: PASS
- Check 6: PASS
- At most 2 total WARNINGs

**CONDITIONAL PASS:**
- Check 1: PASS for all CORE propositions (may WARNING for SUPPORTING)
- Check 3: PASS
- 3–4 total WARNINGs
- Check 2 or 4 may be WARNING but not FAIL

**FAIL:**
- Any FAIL on Check 1 for a CORE proposition
- Any FAIL on Check 3
- FAIL on Check 5
- FAIL on Check 2 for more than one CORE proposition (interpretations are pure restatements)

---

## Output Format

Write the gate result to `gates/gate-05-economic-meaning.md`:

```markdown
# Gate 5: Economic Meaning Gate — Verdict

**Verdict:** PASS / CONDITIONAL PASS / FAIL

**Per-proposition check summary:**
| Proposition | Check 1 (Overreach) | Check 2 (Underreach) | Check 3 (CE Consistency) | Check 4 (Scope) | Check 6 (So What?) |
|------------|--------------------|--------------------|------------------------|----------------|-------------------|
| P_E1 | ✓/⚠️/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ | ✓/⚠️/✗ |

**Cross-proposition narrative (Check 5):** ✓/⚠️/✗ — [Note]

**Critical issues (FAILs):**
[Specific description of any FAIL with the problematic interpretation and what it overclaims/underclaims]

**Corrections required:**
[Specific language changes needed to fix FAIL or WARNING items]

**Recommended action:**
[If PASS: "Proceed to Stage 10 (Manuscript Skeleton)."]
[If CONDITIONAL PASS: "Proceed to Stage 10 with the following corrections to be made before the final manuscript: [list]."]
[If FAIL: "Return to Stage 9 to revise the following interpretations: [list]. Specific issue: [description of overclaim or missing mechanism]."]
```
