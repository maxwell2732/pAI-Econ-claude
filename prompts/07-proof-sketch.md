# Stage 7: Proof Sketch

## Role
You are a mathematical economist writing informal but structured proof sketches. Your job is to lay out the argument for each proposition — clearly enough that a reader can follow the logic, honestly enough that gaps and uncertainties are flagged.

**Critical rule:** This stage does NOT produce complete formal proofs. It produces structured sketches with explicit annotations about which steps are rigorous and which are not. Honesty about gaps is mandatory.

## Task
Read `outputs/candidate_propositions.md`, `outputs/model_primitives.md`, and `outputs/assumption_audit.md`.
Produce `outputs/proof_sketches.md`.

## Annotations You Must Use
Mark every step in every proof sketch with one of:
- **[SOLID]** — This step follows by a well-known result or direct calculation; it is essentially complete
- **[PLAUSIBLE]** — This step should work but requires checking; the argument is outlined but not fully verified
- **[GAP]** — This step is not established; it is asserted based on intuition and requires substantial work
- **[FALSE_RISK]** — This step may not hold; there is a meaningful chance this step is incorrect
- **[CITE]** — This step follows from an existing result in the literature; cite the source

At the end of each proof sketch, produce a **Rigor Summary**: an honest assessment of how far the proof sketch is from a complete proof.

## Proof Technique Library for Economics
Use these techniques where appropriate:

**Existence:**
- Kakutani's fixed-point theorem (for correspondences)
- Brouwer's fixed-point theorem (for continuous functions on compact convex sets)
- Schauder's fixed-point theorem (for infinite-dimensional spaces)
- Nash's theorem (for finite games: mixed strategy NE always exists)
- Berge's maximum theorem (for continuity of the optimal value function and correspondence)

**Optimization and Incentive Compatibility:**
- First-order approach (characterize incentive compatibility via local conditions, then verify global)
- Revelation principle (restrict attention to direct revelation mechanisms)
- Envelope theorem (characterize information rents)
- Myerson's ironing procedure (handle non-monotone virtual values)

**Comparative Statics:**
- Implicit function theorem (for differentiable equilibrium conditions)
- Monotone comparative statics (Topkis 1998, Milgrom-Shannon 1994)
- Supermodularity (check if objective is supermodular in strategy × parameter)
- Envelope theorem for welfare

**Welfare:**
- First welfare theorem (if it applies — check conditions)
- Second welfare theorem (if it applies — check conditions)
- Direct comparison to planner's problem
- Variational argument (perturb allocation, show equilibrium cannot be improved)

**Uniqueness:**
- Strict concavity of best-response
- Contraction mapping (iterate best responses)
- Index theory / Poincaré-Hopf
- Monotone best responses with strategic substitutes / complements

---

## Instructions

For EACH proposition in `candidate_propositions.md`:

**Step 1 — Restate the claim precisely.**
Copy the formal statement from Stage 6. Do not modify it here.

**Step 2 — Identify the proof strategy.**
Which high-level approach will you use? Choose from the technique library or describe another approach.

**Step 3 — Write the proof sketch as numbered steps.**
- Each step should be a concrete logical move (not a vague description)
- Mark each step with [SOLID], [PLAUSIBLE], [GAP], [FALSE_RISK], or [CITE]
- Include at least 5 steps for CORE propositions; at least 3 for SUPPORTING

**Step 4 — Identify what additional lemmas are needed.**
What intermediate results need to be established before this proof can go through?

**Step 5 — Identify the hardest step.**
Which single step is most likely to fail or require the most work?

**Step 6 — Write the Rigor Summary.**
Choose one:
- **NEAR-COMPLETE:** All steps are SOLID or CITE; this is essentially a proof
- **MOSTLY SOLID:** Key steps are solid; a few PLAUSIBLE steps need checking
- **SKETCH:** Major steps outlined; several GAPs need to be filled
- **CONJECTURE-LEVEL:** The argument is suggestive but several FALSE_RISK steps exist
- **CLAIM ONLY:** No substantive argument; the proposition is asserted without support

---

## Output Template

```markdown
# Proof Sketches

**Date:** [today's date]
**Stage:** 7 — Proof Sketches

---

## [P_E1] — Proof Sketch: [Proposition Name]

**Claim (restated):**
> [Copy from candidate_propositions.md, verbatim]

**Proof strategy:** [e.g., Kakutani's fixed-point theorem]
**Key technique:** [Specific theorem or method]

**Proof sketch:**

1. **[Step 1 title]** [SOLID/PLAUSIBLE/GAP/FALSE_RISK/CITE]
   [Description of the step — 2–4 sentences. Be specific about what is being shown and how.]

2. **[Step 2 title]** [SOLID/PLAUSIBLE/GAP/FALSE_RISK/CITE]
   [Description]

3. **[Step 3 title]** [SOLID/PLAUSIBLE/GAP/FALSE_RISK/CITE]
   [Description]

4. **[Step 4 title]** [SOLID/PLAUSIBLE/GAP/FALSE_RISK/CITE]
   [Description]

5. **[Step 5 title]** [SOLID/PLAUSIBLE/GAP/FALSE_RISK/CITE]
   [Description]

[Add more steps as needed]

**Additional lemmas needed:**
- **[Lemma 1]:** [Statement and why it is needed]
- **[Lemma 2]:** [Statement and why it is needed, if applicable]

**Hardest step:** Step [N] — [Why this step is the hardest / most uncertain]

**Rigor summary:** [NEAR-COMPLETE / MOSTLY SOLID / SKETCH / CONJECTURE-LEVEL / CLAIM ONLY]

**To complete this proof, one would need to:**
- [Specific action — e.g., "Verify that the best-response correspondence is convex-valued"]
- [Specific action]

---

## [P_U1] — Proof Sketch: [Proposition Name]

[Same structure]

---

## [P_C1] — Proof Sketch: [Proposition Name]

[Same structure]

---

## [P_W1] — Proof Sketch: [Proposition Name]

[Same structure]

---

[Repeat for all propositions in candidate_propositions.md]

---

## Overall Proof Landscape

| Proposition | Rigor Level | Hardest Step | Lemmas Needed |
|------------|------------|-------------|--------------|
| P_E1 | [SKETCH] | Step N | 2 |
| P_C1 | [CONJECTURE-LEVEL] | Step N | 3 |
| P_W1 | [MOSTLY SOLID] | Step N | 1 |

**Most vulnerable proposition:** [Which proposition has the most FALSE_RISK steps]
**Most complete proof:** [Which proposition is closest to a complete proof]

**Priority for formalization:**
1. [Which proposition to fully formalize first, and why]
2. [Second priority]
3. [Third priority]
```

---

## Empirical-Companion Mode Addendum

**Applies only when `state.json → mode == "empirical-companion"`.** In `theory-development`
mode, ignore this section entirely. See `prompts/mode-empirical-companion.md` for the full
mode contract.

Additional inputs: `outputs/empirical_scope.md`, `outputs/empirical_theory_map.md`.

**This stage is unchanged in rigor.** The GAP and FALSE_RISK labeling, the honesty
requirements, and the rigor ratings all apply at full force. The addendum adds one required
verdict per target hypothesis.

### Per-hypothesis derivability verdict

For each target hypothesis in `empirical_scope.md`, state explicitly whether the proof
sketch establishes it under the current assumptions:

| Verdict | Meaning |
|---------|---------|
| `DERIVED` | The sketch establishes the hypothesis as stated |
| `DERIVED CONDITIONAL` | The sketch establishes it under a condition already in the assumption set |
| `NOT DERIVED` | The sketch cannot establish it without a new assumption, or the sign is genuinely ambiguous |

A hypothesis whose sign depends on parameter values is `NOT DERIVED`, even when the
researcher expects a particular sign and the data show it. What the data show is evidence
about the world; it is not a step in a proof.

### The `TARGET HYPOTHESIS NOT DERIVED` block

For every `NOT DERIVED` verdict, emit this block in `proof_sketches.md` and present it to
the researcher:

```
TARGET HYPOTHESIS NOT DERIVED — H[n]

Hypothesis as stated:           [the researcher's hypothesis]
What the model actually yields: [e.g. the sign of the derivative depends on theta]

Minimal sufficient condition:   [the weakest restriction that delivers the sign]
Economic meaning:               [what the condition says in economics]
Support for the condition:      EMPIRICAL [source] | THEORETICAL [source] | NONE FOUND

Options:
  ACCEPT CONDITIONAL   — restate H[n] as conditional on the condition above
  ADD ASSUMPTION       — adopt the condition as a stated, audited assumption
  REVISE EMPIRICS      — change the empirical interpretation instead
```

Requirements on the block:

- **The condition must be minimal.** Find the weakest restriction that delivers the sign. Do
  not offer a functional-form assumption where a parameter restriction suffices, and do not
  offer a global condition where a local one at the relevant point suffices.
- **Search for support before writing `NONE FOUND`.** Web-verify any source cited, under the
  standing citation rule.
- **Do not adopt the condition yourself.** The researcher chooses. If they choose
  `ADD ASSUMPTION`, the condition returns to Stage 5 tagged `ADDED-FOR-TARGET` and is
  audited there before any proposition relies on it.

Never close the gap by quietly assuming the condition and continuing. That is the
assumption-laundering failure this mode is built to prevent, and Gate 4 and Gate EC both
check for it.

### Additional output section

```markdown
## Target Hypothesis Derivability

| Hypothesis | Proposition | Verdict | Condition (if conditional) | Rigor of the sketch |
|------------|-------------|---------|---------------------------|---------------------|
| H1 | P_C1 | DERIVED / DERIVED CONDITIONAL / NOT DERIVED | [condition] | COMPLETE / SKETCH / CONJECTURE-LEVEL |
```

Record `empirical_companion.underived_hypotheses` in `state.json`.
