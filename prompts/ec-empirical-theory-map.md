# Empirical–Theory Mapping and Minimality Check

**Runs only in `empirical-companion` mode.** Invoked twice:

- **At Stage 4 (Model Primitives)** — write `outputs/minimality_check.md` and the draft of
  `outputs/empirical_theory_map.md` (columns 1–3 filled, columns 4–5 marked `pending`).
- **At Stage 6 (Proposition Generator)** — complete `outputs/empirical_theory_map.md`
  (columns 4–5) and revise `outputs/minimality_check.md` against the propositions actually
  generated.

## Inputs
`outputs/empirical_scope.md`, `outputs/model_primitives.md`, and at Stage 6 also
`outputs/candidate_propositions.md` and `outputs/assumption_audit.md`.

---

## Part A — `minimality_check.md`

Enumerate **every** element of the model: agent types, goods, periods, state variables,
choice variables, parameters, distributions, functional-form restrictions, and each distinct
mechanism. Do not omit elements inherited from the canonical model — an inherited element
still has to earn its place in this paper.

For each element answer both questions from the Minimal Model Principle
(`prompts/mode-empirical-companion.md`):

1. Which empirical result in `empirical_scope.md` does it correspond to?
2. Which target hypothesis becomes underivable if it is removed?

**Empirical role** takes one of these values:

| Value | Meaning |
|---|---|
| `baseline` | Needed to generate the baseline comparative static |
| `mechanism` | Carries the channel the mechanism test measures |
| `heterogeneity` | Produces the interaction or subgroup difference |
| `identification` | Corresponds to something the empirical design relies on (a constraint, an exclusion restriction, a timing assumption) |
| `structural` | Required for the model to be well posed (a budget constraint, a feasibility condition, an equilibrium concept) — no direct empirical counterpart, but the model does not close without it |
| `none` | No empirical function |

`structural` is the one value that justifies keeping an element with no empirical
counterpart, and it is not a catch-all: state precisely what fails without the element.
An element whose only defense is "it makes the model more general" is `none`.

**Verdict** is `yes`, `no → remove`, or `contested`. Use `contested` when removing the
element would weaken a hypothesis without eliminating it; explain the trade-off and let
Stage 4's HiL-4 stop settle it.

Removals are performed, not merely recommended: strike the element from
`model_primitives.md` and record the removal in the log table below.

### Output template

```markdown
# Minimality Check

**Date:** [today's date]
**Stage:** 4 [revised at Stage 6]
**Mode:** empirical-companion

---

## Element inventory

| # | Model element | Empirical role | Hypothesis lost without it | Necessary? |
|---|---------------|----------------|---------------------------|------------|
| 1 | [element] | baseline / mechanism / heterogeneity / identification / structural / none | H1 / H2 / H3 / none | yes / no → remove / contested |

---

## Structural elements: what fails without them

| Element | What breaks if removed |
|---------|------------------------|
| [element] | [the model is not closed / the maximization has no solution / ...] |

---

## Removals performed

| Element considered | Why it was proposed | Why it was removed | Where it went |
|--------------------|--------------------|--------------------|---------------|
| [element] | [what motivated adding it] | [no empirical role; no hypothesis depends on it] | dropped / `scope_notes.md` SN-<n> |

---

## Contested elements

[For each: what is lost by removing it, what is paid by keeping it, and the recommendation
carried into HiL-4.]

---

## Count

**Agent types:** [n] · **State variables:** [n] · **Choice variables:** [n] ·
**Parameters:** [n] · **Distinct mechanisms:** [n]

**Smaller alternative considered:** [the next simpler model examined, and the specific
target hypothesis it fails to deliver. If none was considered, say so — the Minimal Model
Principle requires that at least one reduction be attempted.]
```

---

## Part B — `empirical_theory_map.md`

One row per empirical result in `empirical_scope.md`. Every target hypothesis appears in
exactly one row, and every CORE proposition appears in at least one row.

The map is what Gate EC audits, what the HiL-5 checkpoint displays, and what Stage 10
generates the Predictions subsection from. The final manuscript's theory section and
empirical section must be readable against this table row by row.

Column meanings:

| Column | Content |
|---|---|
| **Empirical result** | The finding as reported in `empirical_scope.md`, with its table reference |
| **Economic mechanism** | The channel in words |
| **Model primitive** | The specific object in `model_primitives.md` that carries the mechanism — name the symbol |
| **Proposition** | The proposition ID that delivers it (`pending` at Stage 4) |
| **Testable hypothesis** | The H-label, restated in model notation |

### The correspondence chain

Each row must read as an unbroken chain:

```
Baseline regression
      ↓
Core comparative static
      ↓
Proposition 1
      ↓
Hypothesis 1

Mechanism regression
      ↓
Mechanism parameter
      ↓
Proposition 2
      ↓
Hypothesis 2

Heterogeneity regression
      ↓
Parameter heterogeneity / interaction
      ↓
Proposition 3
      ↓
Hypothesis 3
```

A break anywhere in a chain — a hypothesis with no proposition, a proposition with no
empirical result, a mechanism with no primitive — is a Gate EC finding. Record the break in
the map rather than papering over it.

### Object identity (the EC6 discipline)

For the mechanism row, state explicitly **what the empirical test measures** and **what the
model's mechanism parameter is**, and say whether they are the same economic object.

The failure this catches: the paper reports an interaction with a proxy for financing
constraints, while the model's mechanism is the curvature of an adjustment cost. Both are
called "M". They are different objects, and the mechanism test does not test the model's
mechanism. Say so here; Gate EC will fail on it.

### Output template

```markdown
# Empirical–Theory Map

**Date:** [today's date]
**Stage:** 4 (draft) [completed at Stage 6]
**Mode:** empirical-companion

---

## Mapping table

| Empirical result | Economic mechanism | Model primitive | Proposition | Testable hypothesis |
|------------------|--------------------|-----------------|-------------|---------------------|
| [baseline, Table N] | [channel] | [symbol and its role] | P1 | H1: [in model notation] |
| [mechanism test, Table N] | [channel] | [symbol] | P2 | H2: [in model notation] |
| [heterogeneity, Table N] | [channel] | [symbol] | P3 | H3: [in model notation] |

---

## Correspondence chains

**Chain 1 — Baseline**
[regression] → [comparative static] → [P1] → [H1]

**Chain 2 — Mechanism**
[regression] → [mechanism parameter] → [P2] → [H2]

**Chain 3 — Heterogeneity**
[regression] → [interaction / parameter heterogeneity] → [P3] → [H3]

---

## Object identity check (mechanism row)

**What the mechanism test measures:** [the observable]
**What the model's mechanism parameter is:** [the model object]
**Same economic object?** YES / NO / PARTIAL
[If NO or PARTIAL: what the difference is, and whether the empirical claim or the model has
to change.]

---

## Breaks in the mapping

| Break | Where | Consequence |
|-------|-------|-------------|
| [hypothesis with no proposition / proposition with no empirical result / mechanism with no primitive] | [row] | [what Gate EC will find] |

[Or: "None — every chain is complete."]

---

## Propositions not in the map

[CORE propositions with no empirical counterpart. Each is either moved to
`scope_notes.md` or demoted from CORE. State which, for each.]

---

## Regression correspondence (for Stage 9 and Stage 10)

| Hypothesis | Coefficient that tests it | Predicted sign |
|------------|--------------------------|----------------|
| H1 | [the coefficient in the specification] | [+ / − / conditional on ...] |
| H2 | [the interaction coefficient] | [+ / − / conditional] |
| H3 | [the subgroup difference or triple interaction] | [+ / − / conditional] |
```
