# Gate 1: Novelty Risk Gate

## Purpose
Assess whether the research question and proposed results have a high risk of already existing in the economics literature.

## Runs After
Stage 2 (Literature Positioning)

## Inputs
- `outputs/research_puzzle.md`
- `outputs/literature_positioning.md`

## Evaluation Criteria

Assess the following five dimensions. For each, assign a risk score: **LOW** (1), **MEDIUM** (2), or **HIGH** (3).

### Dimension 1 — Core Question Risk
Is the exact research question (as stated in research_puzzle.md) likely to have been answered in the existing literature?
- **LOW:** The combination of features (environment + friction + result type) is unusual
- **MEDIUM:** The question is related to known work but the specific combination may be novel
- **HIGH:** This question or a closely equivalent version has very likely been studied

### Dimension 2 — Closest Model Risk
How close are the closest models identified in literature_positioning.md to the proposed research?
- **LOW:** Closest models differ in multiple important dimensions
- **MEDIUM:** Closest models share the main setup but differ in one key dimension
- **HIGH:** There is a model that appears to share the same setup, framing, and likely result type

### Dimension 3 — Result Type Risk
Is the type of result claimed (existence, comparative statics, welfare, etc.) likely to have been established for essentially this environment?
- **LOW:** The specific result type has not been established for this environment
- **MEDIUM:** Related result types exist; this specific form may be new
- **HIGH:** Essentially this result likely appears in the literature under a slightly different framing

### Dimension 4 — Search Coverage Risk
How thoroughly has the literature been searched? (based on literature_positioning.md)
- **LOW:** Multiple search angles and venues were considered; no close matches found
- **MEDIUM:** Targeted search was done; some angles were not explored
- **HIGH:** Search was superficial or did not cover the key venues

### Dimension 5 — Novelty Claim Precision
How precisely are the novelty claims stated?
- **LOW:** Novelty is claimed along multiple specific, verifiable dimensions
- **MEDIUM:** Novelty is claimed but the specific differentiating feature is somewhat vague
- **HIGH:** Novelty claim is vague or only "we study a slightly different model"

## Verdict Rules

**Compute average score:** (D1 + D2 + D3 + D4 + D5) / 5

- Average ≤ 1.6: **PASS** — Novelty risk is acceptable; proceed to HiL-2
- Average 1.7–2.4: **CONDITIONAL PASS** — Novelty risk is moderate; flag specific concerns; proceed to HiL-2 with warnings
- Average ≥ 2.5: **FAIL** — Novelty risk is high; recommend looping back to Stage 1 to reframe the puzzle

**Automatic FAIL (regardless of average):**
- If Dimension 2 scores HIGH AND the closest model appears to produce essentially the same main result
- If Dimension 1 scores HIGH AND Dimension 3 scores HIGH simultaneously

---

## Output Format

Write the gate result to `gates/gate-01-novelty-risk.md`:

```markdown
# Gate 1: Novelty Risk Gate — Verdict

**Verdict:** PASS / CONDITIONAL PASS / FAIL

**Dimension scores:**
| Dimension | Score | Notes |
|-----------|-------|-------|
| D1 — Core Question Risk | LOW/MED/HIGH | [Brief note] |
| D2 — Closest Model Risk | LOW/MED/HIGH | [Brief note] |
| D3 — Result Type Risk | LOW/MED/HIGH | [Brief note] |
| D4 — Search Coverage Risk | LOW/MED/HIGH | [Brief note] |
| D5 — Novelty Claim Precision | LOW/MED/HIGH | [Brief note] |

**Average risk score:** [X.X out of 3]

**Primary concern (if any):** [The single most important novelty risk]

**Recommended action:**
[If PASS: "Proceed to Stage 3."]
[If CONDITIONAL PASS: "Proceed with the following caveats: [list]."]
[If FAIL: "Recommend returning to Stage 1 to [specific reframing recommendation]."]
```
