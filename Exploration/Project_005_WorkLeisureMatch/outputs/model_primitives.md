# Model Primitives

**Date:** 2026-06-29
**Stage:** 4 — Model Primitives

Inherits from: Mortensen (1988) marriage search; Burdett-Coles (1997) heterogeneous types;
Akerlof (1976) rat-race externality; Hosios (1990) search welfare.
New elements: endogenous leisure via threshold participation game; cross-market fertility gap.

---

## Model Overview

A continuum of workers, heterogeneous in their involution type θ (a composite of Confucian duty norms, subjective responsibility, and family economic pressure), play a two-period game. In Period 1, each worker chooses whether to involute (work long hours h_H) or not (work standard hours h_L). This binary choice is endogenous: worker i involutes iff their type θ_i exceeds a Nash threshold θ*. Period 1 leisure is ℓ = T − h, where h ∈ {h_L, h_H}. In Period 2, workers search for romantic partners in a Poisson marriage market. The meeting rate μ(ℓ_i, L̄) depends on individual leisure ℓ_i and on the economy-wide average leisure L̄ (thick-market externality). Upon matching, a couple decides on completed fertility n, which is decreasing in the expected time-to-match E[T_match] = 1/μ(ℓ_i, L̄). In the Nash equilibrium, each worker ignores the effect of their involution on L̄ and hence on others' meeting rates — this generates an externality. The social planner internalizes this externality and sets a higher threshold θ^{SP} > θ*, producing a lower involution rate, a thicker marriage market, earlier marriages, and higher completed fertility.

---

## 1. Agents

| Label | Name | Count | Characteristics |
|-------|------|-------|----------------|
| W_i | Worker i | Continuum on [0,1] | Heterogeneous type θ_i ~ F(·) on [0,∞); privately observed by i |
| Gov | Government (social planner) | 1 | Benevolent; maximizes aggregate welfare; sets tax/policy instrument τ |

Workers are the only strategic agents. The government appears only in the welfare/policy analysis (Section 8). There is no employer as a formal player — the wage structure {W(h_L), W(h_H)} is taken as given by workers (competitive labor market). The marriage market has no separate strategic agents: matches form via a random Poisson process.

---

## 2. Timing

1. **Nature** draws each worker's type θ_i ~ F(θ) i.i.d. on [0,∞); F is absolutely continuous with density f(θ) > 0.

2. **Period 1 (Labor Market):** Each worker i simultaneously and independently observes their own θ_i (private information) and chooses h_i ∈ {h_L, h_H}, with h_H > h_L > 0.
   - Resulting leisure: ℓ_i = T − h_i ∈ {ℓ_H, ℓ_L}, with ℓ_L = T − h_L > ℓ_H = T − h_H > 0.
   - Wage received: W(h_i) ∈ {W_L, W_H} where W_H > W_L (rat-race wage premium π = W_H − W_L > 0).
   - Aggregate involution rate: Φ = 1 − F(θ*) (measure of workers who choose h_H).
   - Aggregate average leisure: L̄(θ*) = F(θ*) · ℓ_L + (1 − F(θ*)) · ℓ_H = ℓ_L − Φ · Δℓ,
     where Δℓ = ℓ_L − ℓ_H > 0.

3. **Period 2 (Marriage Market):** All workers simultaneously search for a partner via a Poisson process.
   - Worker i's individual meeting rate: μ_i = μ(ℓ_i, L̄) where μ: ℝ₊ × ℝ₊ → ℝ₊.
   - Assumption M1 (Thick-Market): μ is strictly increasing and concave in both arguments (∂μ/∂ℓ_i > 0, ∂²μ/∂ℓ_i² ≤ 0; ∂μ/∂L̄ > 0).
   - Expected time-to-match: E[T_match,i] = 1/μ_i (Poisson process).
   - Upon matching (at time T_match,i), worker i enters a couple.

4. **Fertility Choice:** Each matched couple chooses completed fertility:
   n_i = max{0, (T̄ − T_match,i) / τ}
   where T̄ > 0 is the biological fertility cutoff (age by which childbearing must occur) and τ > 0 is the inter-birth interval. Later matches → fewer fertile years → lower fertility.
   *Note: This is a reduced-form fertility function, treated as deterministic conditional on T_match. A stochastic extension is possible in an appendix.*

5. **Payoffs realized.**

**Game type:** Two-period finite dynamic game with simultaneous moves within each period.
**Commitment:** Workers commit to h_i before observing others' choices (simultaneous choice in Period 1). No commitment over fertility conditional on T_match.

---

## 3. Information Structure

**Complete / Incomplete information:** Incomplete in θ (each worker knows own type; others' types are private). Complete information about the payoff functions, wage structure, meeting function, and the distribution F(·).

**Private information:**
- Worker i privately observes: θ_i ∈ [0,∞)
- Distribution: θ_i ~ F(θ) with density f(θ) > 0 on [0,∞); F is commonly known.

**Public information:**
- The wage schedule {W_L, W_H} and the rat-race intensity parameter γ (which governs the size of the wage premium π(γ) = W_H(γ) − W_L(γ), with π'(γ) > 0)
- The meeting function μ(·, ·) and its parameters
- The fertility function parameters (T̄, τ)
- The time endowment T and the hours choices {h_L, h_H}
- The equilibrium threshold θ* (determined in Nash equilibrium; common knowledge in equilibrium)
- The aggregate leisure L̄(θ*) (computed from the equilibrium threshold)

**Common knowledge:** Rationality; the distribution F(θ); all payoff parameters; the meeting function; the timing.

---

## 4. Preferences

### Worker i

Worker i's total payoff from Period 1 and Period 2:

V_i(h_i; θ_i, θ*) = W(h_i) + θ_i · B(h_i) + α · n_i(h_i, θ*)  −  δ(h_i)

where:

- W(h_i) ∈ {W_L, W_H}: wage income from Period 1 labor choice
- θ_i · B(h_i): non-pecuniary payoff from involution, with B(h_H) > B(h_L) = 0 (normalized); θ_i scales the non-pecuniary benefit of choosing h_H — higher θ captures stronger Confucian duty norms, responsibility, or family economic pressure that makes involution intrinsically rewarding or necessary
- α > 0: weight on fertility in the utility function
- n_i(h_i, θ*) = max{0, (T̄ − 1/μ(ℓ_i, L̄(θ*))) / τ}: expected completed fertility as a function of h_i and the equilibrium threshold θ* (which determines L̄)
- δ(h_i): direct disutility of hours worked; δ(h_H) > δ(h_L) = 0 (normalized); captures fatigue, health costs of long hours

**Workers maximize:** V_i over h_i ∈ {h_L, h_H}, taking θ* as given (in Nash equilibrium).
**Risk attitude:** Risk-neutral (payoffs are linear in income and fertility count).
**Income effect on marriage attractiveness:** For tractability, assumed to affect match surplus conditional on meeting but NOT the meeting rate μ (i.e., the meeting rate depends only on leisure and the aggregate pool, not on income). This is Assumption A from the persona council: the leisure-elasticity of μ exceeds the income-elasticity of partner attractiveness in the extensive meeting margin. Discussed in Section 9 (robustness).

### Social Planner

Welfare objective (utilitarian aggregate):

W^{SP}(θ̂) = ∫₀^∞ V_i(h_i(θ_i, θ̂); θ_i, θ̂) dF(θ_i)

where θ̂ is the chosen (possibly non-Nash) threshold. The planner chooses θ̂ to maximize W^{SP}, internalizing the effect of θ̂ on L̄(θ̂) and hence on all workers' meeting rates.

---

## 5. Action and Strategy Spaces

### Worker i

- **Action space:** A_i = {h_L, h_H}
- **Strategy:** σ_i: [0,∞) → {h_L, h_H}; mapping from own type θ_i to hours choice
- **Threshold strategy (focus of analysis):** σ_i(θ_i) = h_H if θ_i > θ*; σ_i(θ_i) = h_L if θ_i < θ*; σ_i(θ*) = either (indifferent)
- **Constraints:** h_i must be in {h_L, h_H}; no budget constraint (income effects handled through W(h_i))

### Social Planner

- **Action space:** τ ∈ ℝ (overtime tax, applied to h_H; positive τ raises effective cost of involution)
- **Equivalently:** Choose threshold θ̂ directly (if the planner can implement any threshold via a tax)
- **Strategy:** Choose τ* (or θ̂*) to maximize W^{SP}

---

## 6. State Variables and Outcome Space

**State variables:**
- θ_i ∈ [0,∞): worker i's type (private)
- γ ∈ ℝ₊: rat-race intensity parameter (determines wage premium π(γ))
- L̄(θ*) = ℓ_L − (1−F(θ*)) · Δℓ: aggregate leisure (endogenous, depends on equilibrium threshold)
- T̄ ∈ ℝ₊: biological fertility horizon (exogenous)

**Outcome space:**
- θ* ∈ [0,∞): Nash equilibrium threshold (primary equilibrium object)
- Φ(θ*) = 1 − F(θ*): equilibrium involution rate
- L̄(θ*): equilibrium aggregate leisure
- M*(θ*) = μ(ℓ_i, L̄(θ*)) for each type: individual meeting rate in equilibrium
- E[T_match,i]: expected time-to-match (= 1/M*)
- n*(θ*): expected completed fertility (function of meeting rate)
- W^* = W(θ*): aggregate welfare in Nash equilibrium

**Outcome function:**
- Given a threshold θ*, all workers i with θ_i > θ* choose h_H; all with θ_i < θ* choose h_L.
- L̄ = ℓ_L − (1−F(θ*)) · Δℓ (computed from the threshold).
- Each worker's meeting rate, match timing, and fertility follow from μ(ℓ_i, L̄) and the fertility function.

---

## 7. Equilibrium Concept Candidates

### Candidate A: Symmetric Threshold Nash Equilibrium (STNE)
- **When appropriate:** Each worker takes the aggregate threshold θ* as given and maximizes their own payoff V_i(h_i; θ_i, θ*). In a Nash equilibrium, no worker wants to deviate from σ_i(θ*). The threshold structure is the standard equilibrium concept for participation games with a continuous type distribution.
- **What it requires:** (i) Indifference condition at the threshold: V_i(h_H; θ*, θ*) = V_i(h_L; θ*, θ*); (ii) Single-crossing: V(h_H; θ, θ*) − V(h_L; θ, θ*) strictly increasing in θ (verified under Assumption SC below); (iii) Consistency: θ* is a fixed point of the best-response map BR(θ*).
- **Assumption SC (Single-Crossing):** The non-pecuniary benefit θ · B(h_H) is linear in θ with B(h_H) > 0, and the fertility loss from involution n(h_L, θ*) − n(h_H, θ*) ≥ 0 does not depend on θ. Then V(h_H; θ, θ*) − V(h_L; θ, θ*) = [W_H − W_L] + θ · B(h_H) − α[n(h_L, θ*) − n(h_H, θ*)] − [δ(h_H) − δ(h_L)], which is strictly increasing in θ. SC is satisfied under this specification. ✓
- **Potential issues:** Strategic complementarity in the wage premium π(Φ; γ) (if π increases in Φ = 1−F(θ*)) may generate multiple fixed points. Section 8 addresses this.

### Candidate B: Subgame Perfect Equilibrium (SPE)
- **When appropriate:** If the game is modeled as a sequential game (workers observe others' choices before acting), SPE is the appropriate concept. However, in the present model, Period 1 choices are simultaneous — workers do not observe each other before choosing. SPE collapses to Nash in the simultaneous-move case.
- **What it requires:** Backward induction from Period 2 (marriage market / fertility) to Period 1 (labor choice).
- **Potential issues:** No additional refinement beyond Nash is needed for the simultaneous Period 1 game. SPE is equivalent to STNE here.

### ★ Recommended equilibrium concept: Symmetric Threshold Nash Equilibrium (STNE)
**Justification:** The Period 1 game is simultaneous among a continuum of workers, each with private type θ. The threshold strategy is the natural equilibrium form for participation games of this type (it is also the equilibrium form used in bank run models, global games, and technology adoption with network effects — all of which share the same structure). The single-crossing condition (Assumption SC) ensures the threshold is well-defined and that the equilibrium is a threshold equilibrium rather than a non-monotone strategy. The consistency / fixed-point requirement pins down θ* and determines whether the equilibrium is unique (when BR is a contraction) or multiple (when strategic complementarity in π(Φ) is strong).

---

## 8. Social Planner Benchmarks

### First-Best (Full Information, No Constraints)

The social planner chooses the threshold θ̂^{FB} to maximize aggregate welfare:

max_{θ̂ ∈ [0,∞)} W^{SP}(θ̂) = ∫₀^{θ̂} V_i(h_L; θ_i, θ̂) dF(θ_i) + ∫_{θ̂}^∞ V_i(h_H; θ_i, θ̂) dF(θ_i)

The first-order condition equates the marginal benefit of raising θ̂ (allowing one more worker to opt out of involution, increasing L̄ by f(θ̂)·Δℓ/1 per unit change in θ̂, which raises meeting rates for all agents) to the marginal cost (the high-θ worker near θ̂ forgoes the non-pecuniary and wage benefit of involution):

[V(h_L; θ̂, θ̂^{FB}) − V(h_H; θ̂, θ̂^{FB})] + α · (∂W^{SP}/∂L̄) · (∂L̄/∂θ̂) = 0

The second term is the social marginal benefit of reducing involution via the thick-market externality. In the Nash equilibrium, each worker ignores this term (sets it to zero), yielding θ* < θ̂^{FB} = θ^{SP}.

### Second-Best (Observable h, Unobservable θ)

If the government can observe the labor choice h_i (working hours) but not the worker's type θ_i, it can implement the first-best threshold θ^{SP} via an overtime tax τ on h_H (or equivalently, a leisure subsidy on ℓ_L). The tax shifts the indifference condition:

V(h_H; θ*, θ*, τ) = V(h_L; θ*, θ*, τ)
⟺ [W_H − τ − W_L] + θ* · B(h_H) − α[n(h_L, θ*) − n(h_H, θ*)] − [δ_H − δ_L] = 0

The optimal tax τ* solves this equation at θ* = θ^{SP}:
τ* = [W_H − W_L] + θ^{SP} · B(h_H) − α[n(h_L, θ^{SP}) − n(h_H, θ^{SP})] − [δ_H − δ_L]
   = π(γ) + [θ^{SP} − θ*] · B(h_H)   (approximately, for small gaps)
   > 0 (since θ^{SP} > θ*; the tax must compensate for the under-internalization of the externality)

The second-best is equivalent to the first-best if h_i is observable (the government can implement the social optimum exactly via τ*). If h_i is unobservable (only aggregate involution rate Φ is known), the second-best may require a different instrument (e.g., norm intervention, flexible work subsidies), studied in Stage 9.

---

## 9. Internal Consistency Check

| Check | Status | Notes |
|-------|--------|-------|
| All variables defined before use | ✓ | All symbols defined in Section 1–6 before appearing in payoffs or conditions |
| Equilibrium concept compatible with action/information space | ✓ | STNE requires simultaneous moves (✓) and private type (✓); threshold strategy is well-defined under SC (✓) |
| Budget/resource constraints consistent across agents | ✓ | Time constraint ℓ + h = T (total time endowment T is not tradeable); no money budget constraint (income differences absorbed in payoff function) |
| Timing internally consistent | ✓ | Period 1 choice determines ℓ_i and L̄; Period 2 meeting rate μ(ℓ_i, L̄) computed from Period 1 outcome; fertility realized after match. No agent conditions on future events not yet realized. |
| Model generates the tension from Stage 1 | ✓ | Nash θ* is determined by individual indifference ignoring the ∂L̄/∂θ* externality term; social planner θ^{SP} internalizes it. The tension (private vs. social optimum in involution threshold) is formally represented by the gap between the individual FOC and the social FOC. |

**Outstanding issues:**
- **Uniqueness of θ***: If π(Φ; γ) is increasing in Φ (strategic complementarity), the best-response map BR(θ*) may be non-monotone, potentially generating multiple STNE. This must be addressed in Stage 6/7 by either (a) imposing a restriction on π (e.g., π is exogenous / does not depend on Φ in the baseline model) or (b) characterizing all equilibria and selecting one (e.g., the stable equilibrium under best-response dynamics). The multiplicity result is economically interesting (tipping into universal involution) and should be a separate proposition, not swept under the rug.
- **Functional form commitment**: The meeting function μ(ℓ_i, L̄) must be specified before proofs can be completed. Candidate: μ(ℓ_i, L̄) = λ · ℓ_i^α · L̄^β with α, β ∈ (0,1) (Cobb-Douglas matching technology). This ensures concavity in both arguments and gives clean comparative statics.

---

## Notation Summary

| Symbol | Meaning | Domain |
|--------|---------|--------|
| θ_i | Worker i's type (involution propensity) | [0, ∞) |
| F(θ) | CDF of the type distribution | Absolutely continuous; f(θ) > 0 on [0,∞) |
| f(θ) | Density of type distribution | f(θ) > 0 on [0,∞) |
| h_i | Hours worked by worker i | {h_L, h_H}; h_H > h_L > 0 |
| ℓ_i | Leisure of worker i | {ℓ_L, ℓ_H} = {T − h_L, T − h_H}; ℓ_L > ℓ_H > 0 |
| Δℓ | Leisure gap: ℓ_L − ℓ_H | Δℓ = h_H − h_L > 0 |
| T | Total time endowment (= 1 period) | T > 0, exogenous |
| W(h) | Wage as a function of hours | W_H = W(h_H) > W_L = W(h_L) |
| π(γ) | Wage premium for involution: W_H − W_L | π'(γ) > 0 |
| γ | Rat-race intensity parameter | γ > 0 |
| B(h_H) | Non-pecuniary benefit of involution | B(h_H) > B(h_L) = 0 |
| δ(h) | Disutility of hours | δ(h_H) > δ(h_L) = 0 |
| θ* | Nash equilibrium involution threshold | θ* ∈ [0,∞) |
| θ^{SP} | Social planner's optimal threshold | θ^{SP} > θ* |
| Φ | Equilibrium involution rate | Φ = 1 − F(θ*) ∈ [0,1] |
| L̄ | Aggregate average leisure | L̄ = ℓ_L − Φ · Δℓ |
| μ(ℓ_i, L̄) | Marriage market meeting rate | μ: ℝ₊ × ℝ₊ → ℝ₊; ∂μ/∂ℓ_i > 0; ∂μ/∂L̄ > 0 |
| E[T_match] | Expected time to find a partner | = 1/μ(ℓ_i, L̄) (Poisson) |
| T̄ | Biological fertility cutoff (age) | T̄ > 0, exogenous |
| τ_birth | Inter-birth interval | τ > 0, exogenous |
| n_i | Completed fertility | n_i = max{0, (T̄ − T_match,i)/τ} |
| α | Fertility weight in utility | α > 0 |
| V(h; θ, θ*) | Worker's total payoff | V = W(h) + θB(h) + αn(h, θ*) − δ(h) |
| W^{SP}(θ̂) | Social welfare at threshold θ̂ | ∫ V_i dF |
| τ | Overtime tax | τ ∈ ℝ (policy instrument) |
