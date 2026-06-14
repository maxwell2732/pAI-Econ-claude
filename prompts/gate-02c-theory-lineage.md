# Gate 2c — Theory Lineage Gate

## Purpose
This gate requires the pipeline to articulate the paper's theory lineage: the closest canonical ancestor model, what is inherited from it, what is changed, and what new economic mechanism is added. It ensures the paper can defend its position in the intellectual history of its field and prevents invisible plagiarism (building a model that is an unstated special case of a known result).

## Inputs
- `outputs/canonical_model_match.md` — output of Stage 3b (Canonical Model Matching)
- `outputs/research_puzzle.md` — refined research question

## Output
- Write to: `gates/gate-02c-theory-lineage.md`

---

## Required Lineage Statement

Before running the gate checks, generate (or extract from `canonical_model_match.md`) a **Theory Lineage Statement** using the template below. If the statement is not already present in `canonical_model_match.md`, write it now as part of the gate output.

```
THEORY LINEAGE STATEMENT
========================
Closest canonical ancestor:
  [Name the specific paper(s) — e.g., "Mussa-Rosen (1978) and Jullien (2000)"]

What is inherited from the ancestor:
  [List 3–5 elements that are taken directly from the ancestor: specific primitives,
   the timing, the equilibrium concept, or the key constraints]

What is changed from the ancestor:
  [List 1–3 elements that are modified. Be specific about how and why.]

What new economic mechanism is added:
  [One paragraph. This is the core of the paper's contribution. Describe the new
   mechanism in precise terms — not "we add type-dependent outside options" but
   "when the agent's outside option U̲(θ) rises with type θ, the IR constraint binds
   at multiple type levels rather than only at the bottom, which changes the
   rent-efficiency trade-off such that first-best may be achievable [mechanism]."]

Where the novelty lies (select all that apply):
  [ ] New primitives (agents, action spaces, goods not in the ancestor)
  [ ] Modified information structure (who knows what, when)
  [ ] Different equilibrium concept (e.g., SPE instead of Nash)
  [ ] New comparative statics direction or method
  [ ] New welfare implication (different benchmark, planner comparison)
  [ ] New policy interpretation (connects to a policy not addressed by the ancestor)
  [ ] Extension to a broader class of environments (weakens an assumption)

This paper would NOT reduce to the ancestor model if:
  [State one key condition that, if satisfied, makes this paper's setup different from
   the ancestor. This is the irreducibility condition: the new element cannot be
   removed without collapsing the paper to the ancestor.]
```

---

## Gate Checks

### Check 1 — Ancestor Identification
**Question:** Is the closest canonical ancestor model identified by name (specific paper, not just model family)?

**FAIL if:** the lineage statement names only a model family ("Screening") without identifying a specific paper or model (e.g., "Mussa-Rosen 1978", "Jullien 2000 countervailing incentives").
**WARNING if:** the ancestor is a correct model but the paper citation is approximate or uncertain.
**PASS if:** at least one specific paper is named as the closest ancestor and the identification is credible.

---

### Check 2 — Inheritance Completeness
**Question:** Are the inherited elements specific enough that a referee can verify which parts of the model are standard versus novel?

**FAIL if:** the inheritance list contains only vague claims ("we inherit the standard screening setup") without listing specific primitives, constraints, or equilibrium concepts.
**PASS if:** the inheritance list enumerates at least 3 specific elements (e.g., "IC constraint structure, IR at the bottom type, revelation principle application, single-crossing condition on agent payoffs").

---

### Check 3 — Genuine Change
**Question:** Are the changes from the ancestor model genuine (substantive economic modifications) rather than notational?

A change is notational (not genuine) if it consists only of:
- Renaming variables (θ → t; q → x; t → P)
- Changing the letter of an agent's name (Principal → Regulator)
- Scaling a parameter monotonically
- Applying the same model to a new empirical domain without any structural modification

**FAIL if:** all listed changes are notational.
**WARNING if:** some changes are substantive but at least one listed "change" is notational and presented as if it were novel.
**PASS if:** at least one change substantively alters the model's structure (agent set, information structure, constraint set, equilibrium concept, or payoff function form).

---

### Check 4 — New Mechanism Specificity
**Question:** Is the new economic mechanism described precisely (with the causal chain: [modification] → [constraint change] → [equilibrium consequence]), or is it stated only as a label?

Examples of vague mechanism description (FAIL):
- "We add type-dependent outside options, which changes the optimal contract."
- "The new mechanism involves rational inattention."
- "We introduce moral hazard into the model."

Examples of precise mechanism description (PASS):
- "When U̲(θ) is increasing in θ at rate U̲'(θ), the IR constraint may bind at interior type levels rather than only at θ_L. This changes the standard result that the lowest type's IR binds and all others have slack — instead, multiple types have binding IR constraints simultaneously. This collapses the information rent of high types and may make first-best achievable."
- "Introducing rational inattention into the Hotelling model means that consumers do not perfectly observe both firms' prices; instead, they pay attention capacity κ that they optimally allocate across price dimensions. This generates endogenous price stickiness and reduces the competitive pressure from price decreases."

**FAIL if:** the new mechanism is stated as a label without a causal chain.
**WARNING if:** the causal chain is stated but is incomplete (e.g., does not specify what changes in the equilibrium).
**PASS if:** the mechanism is stated as a complete causal chain: [what is added/changed] → [what constraint or equilibrium condition changes] → [what result differs from the ancestor].

---

### Check 5 — Irreducibility
**Question:** Is the irreducibility condition stated — the condition that, if removed, collapses this paper to the ancestor model?

**FAIL if:** no irreducibility condition is stated.
**WARNING if:** an irreducibility condition is stated but it is trivially always true ("the condition holds by assumption") — this fails to identify what would make the paper a special case.
**PASS if:** a non-trivial irreducibility condition is stated that clearly identifies what must hold for the paper to differ from the ancestor.

---

## Gate Verdict

**PASS:** All 5 checks are PASS; at most 1 WARNING.

**CONDITIONAL PASS:** 2–3 WARNINGs, no FAILs. Append `⚠️ CAVEAT:` to the lineage statement and proceed.

**FAIL:** Any single check is FAIL.

When a FAIL occurs, output:
```
⚠️  GATE 2c FAILED — Theory Lineage Gate

Failed check: [Check N — Check Name]
Failure reason: [specific reason]
Severity: [MINOR | MAJOR | CRITICAL]
Recommended action:
  Complete the Theory Lineage Statement by addressing:
  [specific missing element]

To proceed with caveat, type: PROCEED WITH CAVEAT
To complete the lineage and re-run this gate, type: REVISE LINEAGE
```

---

## Output Format

Write `gates/gate-02c-theory-lineage.md` with:
- Date and stage identifier
- Theory Lineage Statement (generated or extracted from Stage 3b output)
- Check-by-check results (5 checks, each with verdict + one-line reason)
- Overall gate verdict
- If PASS: one-sentence confirmation that Stage 4 may proceed with the lineage established
- If FAIL: failure report with recommended action
