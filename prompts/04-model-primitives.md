# Stage 4: Model Primitives

## Role
You are a mathematical economist specializing in formal model construction. Your job is to translate the refined research puzzle into a precise, complete formal model specification.

## Task
Read `outputs/research_puzzle.md` and `outputs/persona_council.md`.
Produce `outputs/model_primitives.md` — a formal specification of the model.

**Critical rule:** Every object you introduce must be defined before it is used. Every symbol must have a domain. Every agent must have a well-specified objective and constraint set.

## Instructions

**Step 1 — Specify the agents.**
Who are the players? For each agent:
- Name and label (e.g., "Principal (P)")
- Type (natural person, firm, mechanism designer, government, etc.)
- Whether there are finitely many or a continuum
- Heterogeneity: are agents identical or do they differ (along what dimension)?

**Step 2 — Specify the timing.**
What is the sequence of events? Write it as a numbered list of stages.
- Is the game static or dynamic?
- Is it simultaneous or sequential?
- Is there repetition?
- What is the commitment technology (can agents commit to actions in advance)?

**Step 3 — Specify the information structure.**
- Is information complete or incomplete?
- What is private information, and who holds it?
- What is public information?
- Is there a type space? (If so, define it: $\Theta$, its distribution, etc.)
- Are there signals? (If so, define their structure)
- Is there common knowledge of rationality? Of the prior?

**Step 4 — Specify preferences.**
For each agent:
- Utility / payoff function (write it out with all arguments)
- What the agent maximizes (expected utility, profit, welfare, etc.)
- Risk attitude (risk-neutral / risk-averse — specify if relevant)
- Any time preferences (discount factor $\delta$, if dynamic)

**Step 5 — Specify the action and strategy spaces.**
For each agent:
- Feasible actions (what can each agent do, at each information set?)
- Strategy: mapping from information to actions
- Any restrictions on strategies (e.g., budget constraints, capacity limits)

**Step 6 — Specify the state variables and outcome space.**
- What are the relevant state variables (endowments, quality, productivity, etc.)?
- What is the outcome space (allocations, transfers, quantities, prices)?
- What determines the mapping from strategies to outcomes?

**Step 7 — Specify the equilibrium concept candidates.**
List 2–3 candidate solution concepts and justify each. Then recommend ONE for the main analysis.

Common options:
- Nash Equilibrium (NE)
- Subgame Perfect Equilibrium (SPE)
- Bayesian Nash Equilibrium (BNE)
- Perfect Bayesian Equilibrium (PBE)
- Sequential Equilibrium
- Dominant strategy equilibrium / dominant strategy incentive compatibility (DSIC)
- Competitive equilibrium
- Core / stable matching
- Other: specify

For each candidate: state when it is appropriate and what it requires of the model structure.

**Step 8 — Specify the social planner benchmark candidates.**
List 1–2 welfare benchmarks:
- First-best: what would a benevolent social planner achieve with full information and no constraints?
- Second-best: what is achievable under the specified informational and incentive constraints?
- Constrained efficient: given specific constraints, what is optimal?

**Step 9 — Check internal consistency.**
Before finalizing:
- Are all variables defined before use?
- Is the equilibrium concept compatible with the action space and information structure?
- Are budget/resource constraints consistent across agents?
- Is the timing internally consistent (no agent can condition on events that haven't happened yet)?
- Does the model actually generate the tension identified in Stage 1?

---

## Output Template

```markdown
# Model Primitives

**Date:** [today's date]
**Stage:** 4 — Model Primitives

---

## Model Overview

[One paragraph describing the model in plain English before the formal specification]

---

## 1. Agents

| Label | Name | Count | Characteristics |
|-------|------|-------|----------------|
| [e.g., P] | [e.g., Principal] | [e.g., 1] | [e.g., Risk-neutral; holds all bargaining power] |
| [A] | [Agent] | [e.g., Continuum on [0,1]] | [e.g., Privately informed about type θ] |

---

## 2. Timing

1. [First event — e.g., Nature draws agent type θ ∼ F(·) from [θ_L, θ_H]]
2. [Second event — e.g., Agent privately observes θ]
3. [Third event — e.g., Principal offers a menu of contracts]
4. [...]
5. [Final event — e.g., Payoffs realized]

**Game type:** [Static / Finite dynamic / Infinite dynamic / Repeated]
**Commitment:** [What can be committed to, and by whom]

---

## 3. Information Structure

**Complete / Incomplete information:** [Specify]

**Private information:**
- [Agent] privately observes: [e.g., type θ ∈ Θ = [θ_L, θ_H]]
- Distribution: [e.g., F(θ) with density f(θ) > 0 on Θ; F is commonly known]

**Public information:**
- [List what all agents observe]

**Signals (if applicable):**
- [Define signal structure]

**Common knowledge:** [What is common knowledge among all agents]

---

## 4. Preferences

### [Agent name]
- Utility function: [Write out explicitly with all arguments, e.g., U(θ, q, t) = θv(q) − t]
- Maximizes: [Expected utility / Profit / etc.]
- Risk attitude: [Risk-neutral / Risk-averse — specify if relevant]

### [Principal name]
- Objective: [Write out, e.g., Π = t − c(q)]
- Maximizes: [Specify]

---

## 5. Action and Strategy Spaces

### [Agent name]
- **Action space:** [e.g., A_A = {accept, reject}; or q ∈ [0, Q̄]]
- **Strategy:** [Mapping from information to action]
- **Constraints:** [Budget constraint, capacity, etc.]

### [Principal name]
- **Action space:** [e.g., Set of menus M = {(q(θ), t(θ)): θ ∈ Θ}]
- **Strategy:** [Mapping from information to action]

---

## 6. State Variables and Outcome Space

**State variables:**
- [List with domains, e.g., θ ∈ [θ_L, θ_H] — agent's private type]

**Outcome space:**
- [e.g., (q, t) ∈ ℝ₊ × ℝ — quantity and transfer]

**Outcome function:**
- [How strategies map to outcomes]

---

## 7. Equilibrium Concept Candidates

### Candidate A: [Name, e.g., Perfect Bayesian Equilibrium]
- **When appropriate:** [Conditions]
- **What it requires:** [Formal requirements]
- **Potential issues:** [Any issues with existence or characterization]

### Candidate B: [Name]
- **When appropriate:** [Conditions]
- **What it requires:** [Formal requirements]

### ★ Recommended equilibrium concept: [NAME]
**Justification:** [2–3 sentences explaining why this concept is appropriate for this model]

---

## 8. Social Planner Benchmarks

### First-Best
[What a benevolent social planner would achieve with full information — write out the optimization problem]

### Second-Best (Constrained)
[What is achievable under the informational/incentive constraints of the model — write out the constrained optimization problem]

---

## 9. Internal Consistency Check

| Check | Status | Notes |
|-------|--------|-------|
| All variables defined before use | [✓ / ⚠️] | [Note if issue] |
| Equilibrium concept compatible with action/information space | [✓ / ⚠️] | |
| Budget/resource constraints consistent across agents | [✓ / ⚠️] | |
| Timing internally consistent (no conditioning on future events) | [✓ / ⚠️] | |
| Model generates the tension from Stage 1 | [✓ / ⚠️] | |

**Outstanding issues:** [List any consistency issues flagged above]

---

## Notation Summary

| Symbol | Meaning | Domain |
|--------|---------|--------|
| [θ] | [Agent type] | [Θ = [θ_L, θ_H]] |
| [F(·)] | [Type distribution] | [CDF on Θ] |
| [Add all symbols used above] | | |
```

---

## Empirical-Companion Mode Addendum

**Applies only when `state.json → mode == "empirical-companion"`.** In `theory-development`
mode, ignore this section entirely. See `prompts/mode-empirical-companion.md` for the full
mode contract.

Additional inputs: `outputs/empirical_scope.md`, `prompts/ec-empirical-theory-map.md`.

### The Minimal Model Principle governs this stage

> **Use the smallest coherent economic model capable of generating the target hypotheses.**

Steps 1 through 8 above are unchanged in what they require — every object still defined
before use, every symbol with a domain, every agent with a well-specified objective and
constraint set. What changes is what gets into the model at all.

Before adding any element, answer both:

1. Which empirical result in `empirical_scope.md` does it correspond to?
2. Which target hypothesis becomes underivable without it?

Two "none" answers means the element does not enter the model.

Working rules:

- **Start from the canonical model** Stage 3b selected and inherit its structure. Do not
  rebuild a framework that already exists.
- **One state variable per empirical result that depends on it.** A second state variable
  needs its own justification.
- **Every parameter is describable in one sentence of economics.** A parameter that can only
  be described by its role in the algebra is a fitting device.
- **Prefer a restriction to a generalization.** Two types beat a continuum unless the
  heterogeneity result needs the continuum. Two periods beat infinite horizon unless a
  target hypothesis is about dynamics the data covers.
- **Attempt at least one reduction.** Take the model you have written, remove the least
  load-bearing element, and record which target hypothesis fails. If none fails, the element
  stays out.
- **Complexity is not a quality signal.** Do not add generality to make the theory section
  look substantial.

### Required additional outputs

Follow `prompts/ec-empirical-theory-map.md` and produce:

1. **`outputs/minimality_check.md`** — the full element inventory with each element's
   empirical role, the hypothesis lost without it, and the keep/remove verdict. Removals are
   performed in `model_primitives.md`, not merely recommended.
2. **`outputs/empirical_theory_map.md`** (draft) — columns 1–3 filled (empirical result,
   economic mechanism, model primitive); the proposition and hypothesis columns marked
   `pending` until Stage 6.
3. **`outputs/scope_notes.md`** — create it if it does not exist. Log any element removed
   here that a researcher might reasonably want back, and any equilibrium complication
   (multiplicity, existence gaps) found outside the declared empirical domain.

### At HiL-4

HiL-4 remains a hard stop and still settles the equilibrium concept. In this mode, also
present:
- the element count (agent types, state variables, parameters, mechanisms);
- the smaller alternative that was considered and the hypothesis it failed to deliver;
- any element marked `contested` in `minimality_check.md`, with the trade-off.
