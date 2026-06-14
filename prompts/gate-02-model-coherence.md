# Gate 2: Model Coherence Gate

## Purpose
Verify that the formal model specification is internally consistent and is capable of generating the research puzzle's central tension.

## Runs After
Stage 4 (Model Primitives)

## Inputs
- `outputs/model_primitives.md`
- `outputs/research_puzzle.md`

## Evaluation Criteria

Check each of the following consistency conditions. Mark each as: **PASS** ✓, **WARNING** ⚠️, or **FAIL** ✗.

### Check 1 — Variable Completeness
Every symbol used in the model has an explicit domain and definition before first use.
- **PASS:** All variables defined; no undefined symbols
- **WARNING:** Minor notation gap; can be fixed in paper
- **FAIL:** Key variables are undefined or their domains are unspecified

### Check 2 — Equilibrium Concept Compatibility
The chosen equilibrium concept is compatible with the stated action spaces, information structure, and timing.
- **PASS:** The concept is appropriate and all conditions for it to apply are present
- **WARNING:** The concept may require additional structural assumptions (e.g., measurability) not yet stated
- **FAIL:** The concept is incompatible with the model structure (e.g., PBE applied to a complete information game; competitive equilibrium applied to a game with strategic complementarities without justification)

### Check 3 — Budget and Resource Consistency
Budget constraints, resource constraints, and feasibility conditions are consistent across all agents.
- **PASS:** All constraints are consistent; no agent can simultaneously satisfy their constraints in a way that violates another agent's
- **WARNING:** A constraint may be redundant or may not bind; verify
- **FAIL:** Constraints are inconsistent; the feasible set may be empty

### Check 4 — Timing Consistency
No agent conditions their action on an event that occurs after their decision node. Off-path behavior is handled correctly.
- **PASS:** Timing is internally consistent; information sets respect the timing
- **WARNING:** A timing detail is ambiguous; needs clarification
- **FAIL:** An agent conditions on future events, or the timing creates a logical inconsistency

### Check 5 — Tension Generation
The model, as specified, is capable of generating the central tension identified in Stage 1 (research_puzzle.md).
- **PASS:** The model's friction or feature can plausibly generate the tension
- **WARNING:** The model may generate the tension only under special conditions
- **FAIL:** The model, as specified, cannot generate the central tension (the friction is absent, or the agents cannot interact in the way the puzzle requires)

### Check 6 — Existence (Preliminary)
Is there any obvious reason an equilibrium would not exist?
- **PASS:** No obvious existence obstacle
- **WARNING:** Existence may require additional conditions not yet stated (e.g., continuity, compactness)
- **FAIL:** There is an obvious reason why no equilibrium exists in this model as stated

### Check 7 — Payoff Consistency
Payoff functions are well-defined and expectations exist where needed. No circular definitions.
- **PASS:** All payoff functions are well-specified
- **WARNING:** Unboundedness or measurability may be an issue; verify
- **FAIL:** Payoff functions are undefined for some strategy profiles; expected values may not exist

## Verdict Rules

- **0 FAILs, 0 WARNINGs:** PASS — proceed to HiL-4
- **0 FAILs, 1–2 WARNINGs:** CONDITIONAL PASS — proceed with noted issues to be fixed
- **0 FAILs, 3+ WARNINGs:** CONDITIONAL PASS with strong recommendation to revise Stage 4
- **1+ FAIL on Check 1, 2, 3, or 4:** FAIL — model must be revised before proceeding
- **FAIL on Check 5:** FAIL (critical) — the model does not address the research puzzle
- **FAIL on Check 6 or 7:** FAIL — model is potentially vacuous

---

## Output Format

Write the gate result to `gates/gate-02-model-coherence.md`:

```markdown
# Gate 2: Model Coherence Gate — Verdict

**Verdict:** PASS / CONDITIONAL PASS / FAIL

**Check results:**
| Check | Status | Notes |
|-------|--------|-------|
| 1 — Variable Completeness | ✓/⚠️/✗ | [Note] |
| 2 — Equilibrium Concept Compatibility | ✓/⚠️/✗ | [Note] |
| 3 — Budget/Resource Consistency | ✓/⚠️/✗ | [Note] |
| 4 — Timing Consistency | ✓/⚠️/✗ | [Note] |
| 5 — Tension Generation | ✓/⚠️/✗ | [Note] |
| 6 — Existence (Preliminary) | ✓/⚠️/✗ | [Note] |
| 7 — Payoff Consistency | ✓/⚠️/✗ | [Note] |

**Critical issues (FAIL checks):**
[List any FAIL checks with specific description of what needs to be fixed]

**Issues to address (WARNING checks):**
[List any WARNING checks with specific recommendations]

**Recommended action:**
[If PASS: "Proceed to HiL-4."]
[If CONDITIONAL PASS: "Proceed to HiL-4 with the following issues to be addressed in Stage 5: [list]."]
[If FAIL: "Return to Stage 4 and revise: [specific changes needed]."]
```
