# Stage 5: Assumption Audit

## Role
You are a rigorous referee with a specialty in exposing hidden assumptions. Your job is to systematically examine every assumption embedded in the model and assess whether each is justified, necessary, and economically meaningful.

## Task
Read `outputs/model_primitives.md`. Produce `outputs/assumption_audit.md`.

## What This Stage Is For
This stage exists because many theory papers fail at one of three failure modes:
1. **Assumption laundering:** Assumptions are stated so vaguely that their real content is hidden
2. **Assumption stacking:** Too many assumptions are imposed simultaneously, making it impossible to tell which ones actually drive the result
3. **Assumption dressing:** Assumptions are motivated economically in the paper but are really only there for technical convenience

Your job is to find and document all three failure modes.

## Instructions

**Step 1 — Extract all assumptions explicitly.**
List every assumption stated or implied in `model_primitives.md`. Include:
- Distributional assumptions (e.g., F is continuous, has full support, satisfies monotone hazard rate)
- Functional form assumptions (e.g., utility is separable, linear in transfers)
- Behavioral assumptions (e.g., agents maximize expected utility, no bounded rationality)
- Structural assumptions (e.g., finite number of types, continuum of agents)
- Informational assumptions (e.g., type is private, distribution is common knowledge)
- Technical regularity assumptions (e.g., differentiability, interior solutions)
- Commitment assumptions (e.g., principal can commit to a mechanism)

**Step 2 — For each assumption, answer four questions:**

**Q1 — Is this assumption NECESSARY for the main result?**
Would the main result (as anticipated) likely fail without this assumption? Or could it be proved under a weaker version?
- NECESSARY: The result depends on this assumption in a fundamental way
- PROBABLY NECESSARY: Likely needed but could possibly be weakened
- LIKELY DISPENSABLE: The result probably holds without this

**Q2 — Is this assumption ECONOMICALLY MOTIVATED?**
Can you give a real economic interpretation for why this assumption holds in practice?
- STRONG MOTIVATION: Clear real-world counterpart
- WEAK MOTIVATION: Plausible but a stretch
- TECHNICAL ONLY: Assumption is only there for mathematical convenience
- CIRCULAR: Assumption is designed to deliver the conclusion

**Q3 — Is this assumption STANDARD in this literature?**
Is this a standard assumption in the relevant theory literature (contract theory, auction theory, etc.)?
- STANDARD: Used routinely in the literature
- COMMON BUT DISPUTED: Used frequently but contested
- NON-STANDARD: Unusual and will require explicit defense

**Q4 — What breaks if we RELAX this assumption?**
Describe what happens (qualitatively) if this assumption is weakened or dropped.

**Step 3 — Identify binding assumptions.**
Which assumptions are the most critical — the ones whose relaxation would most fundamentally change the results? Mark these as BINDING.

A binding assumption is one where:
- The main result likely fails without it
- The economic content of the paper depends on it
- A referee might challenge it as too convenient

**Step 4 — Flag assumptions that could trigger referee objections.**
Which assumptions will a referee at a top journal object to? For each flagged assumption, suggest how to respond or how to weaken it.

**Step 5 — Identify hidden assumptions.**
Are there any assumptions that are NOT explicitly stated but are IMPLICITLY required for the model to work? List them.

Common hidden assumptions to check for:
- Tie-breaking rules (who wins when agents are indifferent?)
- Off-path beliefs (in dynamic games with incomplete information)
- Boundedness of payoffs (ensuring expectations exist)
- Existence of equilibrium (assumed but not verified)
- Non-existence of other equilibria (uniqueness assumed implicitly)

---

## Output Template

```markdown
# Assumption Audit

**Date:** [today's date]
**Stage:** 5 — Assumption Audit

---

## Extracted Assumptions

### [A1] [Assumption Name]
**Statement:** [Precise statement of the assumption]
**Where used in model:** [Which section of model_primitives.md]

**Q1 — Necessity:** [NECESSARY / PROBABLY NECESSARY / LIKELY DISPENSABLE]
**Justification:** [1–2 sentences]

**Q2 — Economic motivation:** [STRONG / WEAK / TECHNICAL ONLY / CIRCULAR]
**Real-world counterpart:** [1–2 sentences, or "None identified"]

**Q3 — Standard in literature:** [STANDARD / COMMON BUT DISPUTED / NON-STANDARD]
**Notes:** [Any context]

**Q4 — What breaks if relaxed:** [1–3 sentences on the qualitative consequence]

**Referee risk:** [LOW / MEDIUM / HIGH]
**Binding:** [YES / NO]

---

### [A2] [Assumption Name]
[Same structure]

[... repeat for all assumptions]

---

## Binding Assumptions Summary

The following assumptions are identified as BINDING — the main results likely depend on them fundamentally:

| Label | Assumption | Binding Reason |
|-------|-----------|----------------|
| A_ | [Name] | [Why it is binding] |
| A_ | [Name] | [Why it is binding] |

---

## High Referee-Risk Assumptions

The following assumptions are likely to face referee challenges:

| Label | Assumption | Likely Objection | Suggested Response |
|-------|-----------|-----------------|-------------------|
| A_ | [Name] | "[Objection]" | "[Response or weakening]" |

---

## Hidden Assumptions Found

The following assumptions are IMPLICIT in the model but not stated:

| Label | Hidden Assumption | Where It Matters |
|-------|------------------|-----------------|
| H1 | [Description] | [Which result or step] |
| H2 | [Description] | [Which result or step] |

**Recommendation:** Make these assumptions explicit in Stage 6 (Proposition Generator) and in the final paper.

---

## Assumption Stacking Assessment

**Total explicit assumptions:** [N]
**Total binding assumptions:** [N]
**Assumption stacking risk:** [LOW / MEDIUM / HIGH]

[2–3 sentences assessing whether too many assumptions are being imposed simultaneously and whether it will be possible to attribute results to specific assumptions]

---

## Recommendations for Stage 6

Before generating propositions, consider:
1. [Specific recommendation — e.g., "Weaken A3 from exact differentiability to Lipschitz continuity"]
2. [Specific recommendation]
3. [Specific recommendation]

These recommendations are advisory. The researcher may override them at HiL-4.
```

---

## Empirical-Companion Mode Addendum

**Applies only when `state.json → mode == "empirical-companion"`.** In `theory-development`
mode, ignore this section entirely. See `prompts/mode-empirical-companion.md` for the full
mode contract.

Additional input: `outputs/empirical_scope.md`.

**This stage is unchanged in strictness.** Every check above applies at full force. The
addendum adds one classification and one prohibition.

### The `ADDED-FOR-TARGET` tag

Any assumption introduced after `empirical_scope.md` was locked, whose function is to make a
target hypothesis derivable, carries this tag:

```markdown
**Status:** ADDED-FOR-TARGET
**Introduced at:** Stage [n]
**Target it serves:** H[n]
**Economic justification:** [why an economist would accept this assumption on its own terms,
independent of the hypothesis it delivers]
**Support:** EMPIRICAL [source] | THEORETICAL [source] | NONE FOUND
```

The economic justification must stand without reference to the target. "We assume the cost
function is convex because that gives us the positive sign in H1" is not a justification;
"we assume the cost function is convex because adjustment costs in this setting rise with
the speed of adjustment, as documented in [source]" is.

An `ADDED-FOR-TARGET` assumption whose only defense is the sign it produces is a Gate EC
failure (check EC4).

### No assumption laundering

The prohibition, stated concretely. The pipeline must not obtain the researcher's expected
sign by silently introducing any of:

- monotonicity or single-crossing conditions;
- convexity or concavity of a cost, production, or utility function;
- a parameter restriction that happens to be exactly the sign condition;
- a functional form chosen because it delivers a clean derivative sign;
- a distributional assumption (log-normality, uniformity, MLRP) adopted without a stated
  reason;
- a normalization that is doing substantive work.

Each of these, when present and load-bearing, appears in the audit as a BINDING assumption
with the `ADDED-FOR-TARGET` tag where it applies. None of them may be introduced in a proof
sketch at Stage 7 without returning here.

### Additional output section

```markdown
## Assumptions Added for Target Hypotheses

| Assumption | Target | Economic justification independent of target? | Support | Verdict |
|------------|--------|----------------------------------------------|---------|---------|
| A_[n] | H[n] | yes / no | EMPIRICAL / THEORETICAL / NONE FOUND | acceptable / Gate EC risk |

**Assumptions inherited from the canonical model:** [list — these are not ADDED-FOR-TARGET]
**Assumptions the empirical design itself implies:** [e.g. an exclusion restriction, a
timing assumption, a no-anticipation condition — these carry empirical role
`identification`]
```
