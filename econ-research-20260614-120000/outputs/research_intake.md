# Research Intake

**Date:** 2026-06-14
**Hypothesis ID:** HYP-001
**Pipeline:** theoretical-economics-claude-skill

---

## Raw Input (verbatim)

> Investigate whether a principal facing a privately informed agent can achieve first-best efficiency through a forcing contract when the agent's outside option is type-dependent, and characterize how the optimal contract structure changes as the correlation between the agent's type and outside option increases from zero to one.
>
> Specifically:
> 1. Is first-best achievable when the outside option and productivity type are perfectly correlated? What about imperfectly correlated?
> 2. Characterize the optimal mechanism under each informational regime.
> 3. What does this imply for the classic "no distortion at the top" result — does it survive, break, or require restatement?
> 4. What are the welfare implications for the agent, principal, and total surplus as a function of the correlation parameter?
>
> The target output is a structured set of research documents suitable for beginning a theoretical economics working paper, with clearly stated propositions and proof sketches.

---

## Structured Extraction

**Core claim or puzzle:**
Whether first-best efficiency is achievable in a principal-agent screening model when the agent's outside option (reservation utility) depends on the agent's privately known type, and how the achievability of first-best and the structure of the optimal contract vary with the degree of correlation between the agent's type and their outside option.

**Economic phenomenon targeted:**
Monopolistic screening / adverse selection in contracting. The phenomenon is the classical distortion introduced by information asymmetry in principal-agent relationships — specifically, whether and when type-dependent participation constraints can eliminate or amplify this distortion.

**Proposed mechanism:**
When the agent's outside option is positively correlated with their type, the binding participation constraint may shift from the lowest type to higher types. This change in which constraint binds can alter the principal's rent-extraction problem in a way that makes first-best achievable (or impossible) depending on the strength and form of the correlation.

**Agent types mentioned:**
- Principal (P) — contract designer / mechanism designer
- Agent (A) — privately informed, has outside option dependent on type

**Environment or setting:**
Principal-agent screening / mechanism design. Bilateral contracting under adverse selection. Implied static model with a continuum (or finite set) of agent types.

**Mathematical intuition:**
The correlation between type θ and outside option U̲(θ) determines whether the incentive compatibility (IC) constraints or participation (IR) constraints are binding. When U̲(θ) is sufficiently increasing in θ, the IR constraint may bind throughout the type distribution, eliminating informational rents and potentially delivering first-best.

**Empirical or stylized motivation:**
Not specified explicitly. The question has policy relevance for procurement, regulation, and labor markets where outside options (e.g., competitive wages, alternative suppliers) are systematically related to agent productivity.

**Normative dimension:**
Yes — welfare implications for agent, principal, and total surplus are explicitly asked for. The question involves whether the optimal mechanism achieves efficiency and how surplus is distributed across the correlation spectrum.

**Comparable models or literature mentioned:**
Not explicitly named, but the question clearly relates to:
- The Mirrlees (1971) / Mussa-Rosen (1978) screening framework
- The "no distortion at the top" result in standard screening models
- The literature on countervailing incentives (type-dependent IR constraints)

**Open questions explicitly stated:**
1. Is first-best achievable under perfect correlation? Under imperfect correlation?
2. What is the optimal mechanism in each case?
3. Does the "no distortion at the top" result survive with type-dependent outside options?
4. What are the welfare implications as a function of the correlation parameter ρ (or equivalent)?

---

## Research Classification

**Research type (all that apply):**
- [x] Existence result — Does an equilibrium (here: a first-best-achieving contract) exist?
- [x] Comparative statics — How does the optimal contract change with the correlation parameter?
- [x] Welfare / efficiency — Is the equilibrium optimal, and for whom?
- [x] Mechanism design / implementation — Can a mechanism be designed to achieve first-best?
- [x] Information / asymmetry — What are the implications of private information with type-dependent IR?

**Theory branch(es) (all that apply):**
- [x] Contract theory / principal-agent
- [x] Mechanism design / social choice
- [x] Information economics

---

## Completeness Assessment

**Elements present in the raw input:** Core claim, proposed mechanism, agent types, environment, mathematical intuition, normative dimension, open questions.

**Elements missing:** Empirical or stylized motivation (not specified), specific functional form of outside option, whether the model is finite-type or continuum.

**Ambiguities that may affect Stage 1:**
- "Correlation" — is this a statistical correlation (bivariate distribution), a functional relationship (U̲ = f(θ)), or a structural correlation parameter ρ ∈ [0,1]?
- "Forcing contract" — does this mean a contract that leaves the agent indifferent between accepting and rejecting at every type, or a take-it-or-leave-it offer with no menu?
- "First-best" — first-best for total surplus, or first-best for the principal?
