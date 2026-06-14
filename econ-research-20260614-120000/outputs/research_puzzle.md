# Research Puzzle

**Date:** 2026-06-14
**Stage:** 1 — Puzzle Refinement

---

## Central Research Question

Under what conditions on the relationship between an agent's privately known type and their type-dependent outside option does a principal's optimal mechanism achieve first-best efficiency, and how does the distortion in the optimal mechanism — and the distribution of surplus — change as this relationship moves from independence to perfect correlation?

---

## Central Tension

**Tension:** In the standard screening model, the principal must leave informational rents to high types to prevent them from mimicking low types — this makes first-best unachievable. But when high types also have high outside options, the cost of attracting them rises, which tightens their participation constraint and may erode those rents. These two forces — rent preservation (from IC) and rent erosion (from IR tightening) — run in opposite directions and their balance determines whether first-best is achievable.

**Why neither side obviously wins:**
If outside options are independent of type, the standard "no distortion at the top" result holds and first-best is not achievable for all but the highest type. If outside options are perfectly correlated with type, the IR constraint binds everywhere, potentially eliminating the IC constraint's role entirely. Between these extremes, the distortion is determined by the relative rates at which the IR and IC constraints bind across the type distribution — a non-trivial interaction that depends on the functional form of both the surplus function and the outside option.

---

## Core Mechanism

**Causal chain:**
[Degree of correlation between type θ and outside option U̲(θ)] → [Which constraints (IC or IR) bind at each type in the optimal mechanism] → [Magnitude and direction of distortion in the optimal allocation; distribution of surplus]

**Expanded description:**
In a standard screening model, the principal's problem is to maximize profit subject to incentive compatibility (IC: each type prefers its own contract) and participation (IR: each type prefers to participate over taking the outside option). The standard solution has IR binding only at the bottom (θ_L) and IC binding throughout. With type-dependent U̲(θ), the IR constraint becomes type-specific. If U̲(θ) rises fast enough with θ, the IR constraint may bind not just at the bottom but at intermediate or high types as well. When IR binds at the top, the "no distortion at the top" logic breaks: the principal can no longer offer the high type an undistorted allocation because doing so would leave insufficient surplus to satisfy IR. Conversely, in specific correlation structures, binding IR constraints everywhere can leave no slack for IC binding, making first-best the least-cost mechanism to satisfy both constraints simultaneously.

---

## What a Complete Answer Requires

A complete paper addressing this question would need to establish:

1. **Characterization of the binding constraint structure** as a function of the correlation structure: which constraints (IC, IR, or both) bind at each type in the optimal mechanism.
2. **Conditions for first-best achievability**: a necessary and sufficient condition on the relationship between U̲(θ) and the social surplus function S(q, θ) under which the first-best allocation is implementable.
3. **Optimal mechanism characterization** for the general case (non-first-best): the form of the optimal distortion as a function of the correlation parameter, including whether it exhibits the standard downward distortion, no distortion, or potentially upward distortion.
4. **Welfare analysis**: how total surplus, principal profit, and agent rents each change with the correlation parameter — including whether there exists a correlation level at which all parties are better off than in the standard model.

---

## Welfare Dimension

**Is there a conflict between private incentives and social optimality?**
Yes. The principal maximizes profit, not total surplus. Even in cases where the optimal mechanism achieves first-best allocations, the principal may extract all surplus from some agent types (zero agent rent), which is socially efficient but distributionally extreme. The welfare question is both about total surplus (efficiency) and its distribution.

**The normative question:**
Relative to the first-best (social planner's solution with full information), how much surplus is destroyed by the information asymmetry, and does this loss decrease as the correlation between type and outside option increases? Is there a policy intervention (e.g., minimum outside option floor) that could improve welfare?

---

## Primary Economic Phenomenon

**What this paper illuminates about how economies work:**
This paper speaks to a fundamental question in contracting: when does private information lead to inefficiency, and when does it not? The answer turns out to depend critically on whether agents' outside options reflect their private information. In many real markets — labor markets (where productivity correlates with outside wages), procurement (where supplier efficiency correlates with alternative contracts), and regulation (where firm type correlates with profitability of the unregulated option) — outside options are systematically related to the agent's type. The paper provides a formal account of why the degree of this correlation can dramatically change the nature of the optimal contract and the extent of the efficiency loss from information asymmetry.

---

## Main Difficulty

**The hardest part of answering this question:**
Characterization. When both IC and IR constraints can bind at the same type simultaneously (a "coincidence of binding constraints"), the standard first-order approach to screening breaks down. The analysis requires careful case-by-case treatment of which constraints bind, and the solution may be non-monotone or require ironing (à la Myerson/Mussa-Rosen). The interaction between the IR constraint shape and the IC constraint shape across the type space is where the technical difficulty lies.

---

## Triviality Check

**Would the answer be trivially yes or no without a model?**
No. A careful economist familiar with screening theory would know that type-dependent outside options change the problem, and might conjecture that first-best becomes achievable in some cases — but they could not characterize *when* without working through the model. The boundary conditions, the shape of the optimal distortion, and the welfare comparative statics all require formal analysis. The literature result (Lewis & Sappington 1989, Jullien 2000) shows that even the sign of the distortion can reverse in these models, making informal intuition unreliable.

---

## Refined Hypothesis

**The paper's working hypothesis:**
When the agent's outside option is sufficiently positively correlated with their type (in a sense to be made precise), the principal's optimal mechanism achieves first-best efficiency for all types simultaneously, and the "no distortion at the top" result must be replaced by a "no distortion anywhere" result; for lower correlations, a distortion remains but its direction and magnitude depend on the shape of the outside option function, and total welfare is monotonically increasing in the correlation.

---

## Scope Boundaries

**What this paper IS about:**
- Static bilateral contracting with a single informed agent and a single principal
- The role of the functional relationship between agent type and outside option in determining the optimal mechanism
- Comparative statics in the correlation parameter
- Welfare comparison across correlation levels

**What this paper is NOT about:**
- Dynamic contracting or renegotiation
- Multi-agent models (auctions, competitive mechanisms)
- Behavioral deviations from expected utility maximization
- Empirical testing of the model's predictions
