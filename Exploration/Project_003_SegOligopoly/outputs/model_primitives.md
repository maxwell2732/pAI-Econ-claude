# Model Primitives

**Date:** 2026-06-15
**Stage:** 4 — Model Primitives

---

## Model Overview

A single dominant firm (the "price leader") sells a homogeneous good in two geographically segmented markets — urban (u) and rural (r) — facing different competitive fringes and different consumer demand conditions in each market. The dominant firm sets prices simultaneously in both markets and supplies whatever residual demand remains after fringe firms respond. A binding production and distribution capacity constraint K links the two markets: allocating more capacity to one market necessarily reduces the quantity available for the other. This constraint introduces a shadow cost of capacity λ > 0 that equates the "effective marginal cost" across both markets, generating a genuine cross-market interaction absent from the separable dominant firm model. The model is static (one-shot), complete information, and produces closed-form equilibrium prices and quantities under the maintained linear specification.

---

## 1. Agents

| Label | Name | Count | Characteristics |
|-------|------|-------|----------------|
| D | Dominant firm | 1 | Profit-maximizer; constant marginal cost c; total capacity constraint K; price leader in both markets |
| F_m | Fringe firms in market m | Continuum (measure N_m → ∞) in each market m ∈ {u, r} | Price-takers; identical within each market; upward-sloping supply; zero strategic interaction with D |
| C_m | Consumers in market m | Continuum in each market m ∈ {u, r} | Price-takers; downward-sloping inverse demand; no strategic behavior |

**Note on fringe structure:** Each individual fringe firm i in market m has quadratic cost c_i^F(q_i) = q_i² / (2g_m), where g_m > 0 is a productivity parameter. This yields individual supply q_i^{F*}(p) = g_m · p at price p (from FOC: q_i / g_m = p). Aggregating over N_m identical firms: S_m(p) = N_m · g_m · p ≡ e_m · p, where e_m ≡ N_m · g_m > 0 is the aggregate fringe supply elasticity parameter. As N_m → ∞ with g_m → 0 such that e_m remains finite, fringe firms individually become atomistic price-takers — the competitive fringe assumption is a limit of a Cournot game with N_m → ∞ firms.

---

## 2. Timing

1. **Nature** sets all primitive parameters publicly: (a_m, b_m, e_m) for m ∈ {u, r}; dominant firm parameters (c, K). All parameters are common knowledge.
2. **Dominant firm D** simultaneously sets prices p_u ∈ ℝ₊ and p_r ∈ ℝ₊ in both markets.
3. **Fringe firms F_m** in each market m observe p_m and supply S_m(p_m) = e_m · p_m. (Each fringe firm i supplies q_i^{F*}(p_m) = g_m · p_m.)
4. **Residual demand** in market m is determined: R_m(p_m) = D_m(p_m) − S_m(p_m). If R_m(p_m) < 0, the dominant firm exits market m (supplies 0); fringe supplies all demand.
5. **Dominant firm** supplies q_m = R_m(p_m) in each market m (if capacity allows; see capacity constraint in Section 5).
6. **Markets clear** at prices (p_u, p_r): total supply equals total demand in each market.
7. **Payoffs realized**: dominant firm earns Π_D; fringe firms earn Π_{F_m}; consumers receive surplus CS_m.

**Game type:** Static (one-shot)
**Commitment:** The dominant firm commits to prices (p_u, p_r) before fringe firms and consumers respond. This commitment is inherent in the price-leadership structure: the dominant firm announces prices publicly, and fringe firms and consumers take these prices as given. No capacity commitment is needed (capacity K is an exogenous endowment, not a choice variable).

---

## 3. Information Structure

**Complete information:** There is no private information in this model. All parameters are publicly known.

**Public information (known to all agents):**
- Demand parameters in each market: (a_m, b_m) for m ∈ {u, r}
- Fringe supply parameters: e_m for m ∈ {u, r}
- Dominant firm's marginal cost c and capacity K
- Prices (p_u, p_r) set by the dominant firm (observed by all before fringe responds)

**Private information:** None.

**Common knowledge:** All parameters, the timing of the game, and all agents' rationality are common knowledge.

---

## 4. Preferences

### Dominant Firm (D)

**Payoff function:**
> Π_D(p_u, p_r; c, K) = (p_u − c) · R_u(p_u) + (p_r − c) · R_r(p_r)

where R_m(p_m) = D_m(p_m) − S_m(p_m) = (a_m − b_m · p_m) − e_m · p_m = a_m − (b_m + e_m) · p_m is the residual demand in market m at price p_m.

**Maximizes:** Profit Π_D, subject to the capacity constraint q_u + q_r ≤ K (see Section 5).

**Risk attitude:** Risk-neutral (standard assumption for a firm maximizing expected profit).

---

### Fringe Firms in Market m (F_m)

**Payoff function for individual fringe firm i in market m:**
> π_i^F(q_i; p_m) = p_m · q_i − q_i² / (2g_m)

**Maximizes:** Profit π_i^F, taking p_m as given (price-taker).

**Optimal supply:** q_i^{F*}(p_m) = g_m · p_m (from FOC: p_m = q_i / g_m).

**Individual fringe profit at optimum:** π_i^{F*}(p_m) = p_m · (g_m · p_m) − (g_m · p_m)² / (2g_m) = g_m · p_m² / 2 ≥ 0.

---

### Consumers in Market m (C_m)

**Inverse demand (market demand aggregated over consumers):**
> P_m(Q_m) = (a_m / b_m) − (1/b_m) · Q_m

equivalently: D_m(p_m) = a_m − b_m · p_m (linear demand).

Consumers are price-takers; they purchase up to the point where their marginal valuation equals p_m. Consumer surplus in market m at price p_m (given total quantity Q_m = D_m(p_m)):
> CS_m(p_m) = (1 / (2b_m)) · (a_m − b_m · p_m)² = b_m · [P̄_m − p_m]² / 2

where P̄_m = a_m / b_m is the choke price in market m.

---

## 5. Action and Strategy Spaces

### Dominant Firm (D)

**Action space:**
> A_D = {(p_u, p_r) ∈ ℝ₊² : R_m(p_m) ≥ 0 for m ∈ {u, r}, and R_u(p_u) + R_r(p_r) ≤ K}

**Capacity constraint** (cross-market linkage):
> q_u + q_r = R_u(p_u) + R_r(p_r) ≤ K

where K > 0 is the dominant firm's total production and distribution capacity.

**Strategy:** Pure strategy — the dominant firm chooses (p_u, p_r) ∈ A_D to maximize Π_D.

**Optimization problem (Lagrangian form):**
> L(p_u, p_r, λ) = (p_u − c) R_u(p_u) + (p_r − c) R_r(p_r) − λ[R_u(p_u) + R_r(p_r) − K]
> = (p_u − c − λ) R_u(p_u) + (p_r − c − λ) R_r(p_r) + λK

**FOC for market m (when capacity constraint binds, λ > 0):**
> ∂L/∂p_m = R_m(p_m) + (p_m − c − λ) R'_m(p_m) = 0

where R'_m(p_m) = −(b_m + e_m) < 0. Rearranging:
> p_m* − (c + λ) = −R_m(p_m*) / R'_m(p_m*)

This is the **inverse elasticity rule on residual demand** with effective marginal cost c + λ. The shadow price λ ≥ 0 equates the effective marginal cost across both markets.

**KKT conditions:**
- FOC for p_m (m ∈ {u, r}): shown above
- Complementary slackness: λ ≥ 0, R_u(p_u*) + R_r(p_r*) ≤ K, λ[R_u(p_u*) + R_r(p_r*) − K] = 0
- Non-negativity: R_m(p_m*) ≥ 0 (dominant firm does not supply negative quantity)

---

### Fringe Firms in Market m (F_m)

**Action space:** q_i ∈ ℝ₊ for each fringe firm i.

**Strategy:** Supply function q_i^{F*}(p_m) = g_m · p_m (best response to any price p_m; dominant strategy for a price-taker with quadratic cost).

**Aggregate fringe supply:** S_m(p_m) = e_m · p_m, e_m = N_m · g_m.

---

### Consumers in Market m (C_m)

**Action:** Purchase quantity D_m(p_m) = a_m − b_m · p_m at price p_m (individually, each consumer purchases up to their marginal valuation; aggregate demand is taken as given).

---

## 6. State Variables and Outcome Space

**Exogenous parameters (state variables):**

| Parameter | Meaning | Domain |
|---|---|---|
| a_m | Demand intercept in market m | a_m > 0 |
| b_m | Demand slope in market m | b_m > 0 |
| e_m | Fringe supply elasticity parameter in market m | e_m > 0 |
| c | Dominant firm's constant marginal cost | c > 0 |
| K | Dominant firm's total capacity | 0 < K < K̄ (see A3) |

**Endogenous outcome variables:**

| Variable | Meaning | Domain |
|---|---|---|
| p_m* | Equilibrium price in market m | p_m* > c |
| q_m* | Dominant firm's quantity in market m | q_m* = R_m(p_m*) ≥ 0 |
| s_m* | Aggregate fringe supply in market m | s_m* = S_m(p_m*) = e_m · p_m* ≥ 0 |
| λ* | Shadow price of capacity constraint | λ* ≥ 0 |
| Π_D* | Dominant firm equilibrium profit | Π_D* ≥ 0 |
| CS_m* | Consumer surplus in market m | CS_m* ≥ 0 |
| Π_{F_m}* | Aggregate fringe surplus in market m | Π_{F_m}* ≥ 0 |

**Outcome function (linear specification):**

> p_m* = (c + λ*)/2 + a_m / [2(b_m + e_m)]

> q_m* = [a_m − (b_m + e_m)(c + λ*)] / 2

> λ* = (a_u + a_r) / (b_u + e_u + b_r + e_r) − c − 2K / (b_u + e_u + b_r + e_r)

(valid when the constraint binds; requires K < K̄ = [a_u + a_r − (b_u + e_u + b_r + e_r)c] / 2 — see A3)

---

## 7. Equilibrium Concept Candidates

### Candidate A: Dominant Firm Equilibrium (Price Leadership Equilibrium)

**When appropriate:** When one firm (the "leader") is large enough to set the market price, and many smaller firms (the "fringe") take the price as given and supply according to their individual supply curves. This is the classical solution concept for price leadership models (Carlton-Perloff, Ch. 6).

**What it requires:**
- The dominant firm is the price leader: it commits to (p_u, p_r) before fringe firms respond.
- Fringe firms are competitive price-takers: they maximize profit taking p_m as given (their best response is q_i^{F*}(p_m) = g_m · p_m).
- The dominant firm correctly anticipates the fringe's supply response when choosing its prices: the dominant firm's optimization accounts for S_m(p_m) when computing residual demand R_m(p_m).
- This is a Stackelberg-in-prices equilibrium: the dominant firm is the "leader" and the fringe is the "follower," but the fringe's response is not strategic — it is a supply curve.

**Formal definition:** An equilibrium is a price pair (p_u*, p_r*) such that:
1. Fringe firms supply s_m* = e_m · p_m* in each market m (best response to p_m*)
2. The dominant firm supplies q_m* = R_m(p_m*) in each market m
3. (p_u*, p_r*) solves: max Π_D(p_u, p_r) subject to q_u + q_r ≤ K and R_m(p_m) ≥ 0 for m ∈ {u, r}
4. Markets clear: total supply q_m* + s_m* = D_m(p_m*) in each market m

**Potential issues:** The equilibrium concept assumes the dominant firm can commit to prices before fringe responds. This is appropriate when: (a) distribution contracts are set before production schedules; (b) the dominant firm's price is publicly observed (e.g., retail list prices); (c) fringe firms are atomistic and cannot coordinate. All three conditions are plausibly satisfied in China's fast-moving consumer goods market.

---

### Candidate B: Subgame Perfect Nash Equilibrium (SPNE)

**When appropriate:** When the model is formalized as an extensive-form game with two stages: (1) dominant firm sets prices; (2) fringe firms choose quantities given prices. SPNE requires backward induction: in stage 2, fringe firms play Nash given the dominant firm's prices; in stage 1, the dominant firm anticipates stage-2 play and optimizes accordingly.

**What it requires:** The fringe firms' stage-2 Nash equilibrium must be unique (it is: q_i^{F*}(p_m) = g_m · p_m is each fringe firm's strictly dominant strategy given price p_m). Backward induction then gives the dominant firm's stage-1 optimization as described in Candidate A.

**Note:** Candidate B is the formal game-theoretic underpinning of Candidate A. They are formally equivalent in this model. Candidate A is the standard terminology in the IO price leadership literature; Candidate B is the game-theoretic justification.

---

### Candidate C: Nash Equilibrium (Simultaneous Move)

**When appropriate:** If the dominant firm and fringe firms are assumed to choose quantities simultaneously (Cournot), with no price leadership.

**What it requires:** Each firm i chooses q_i to maximize profit, taking all other firms' quantities as given. In the limit N_m → ∞ with fringe firms becoming atomistic, the Cournot equilibrium converges to the competitive equilibrium (fringe prices at marginal cost). The dominant firm, however, remains a strategic agent with market power.

**Potential issues:** In the Cournot formulation, the dominant firm would have to choose quantities in each market (not prices). The capacity constraint then becomes a constraint on total quantity: q_u + q_r ≤ K. This formulation is equivalent to the price leadership model in the linear case but is harder to connect to the price discrimination literature (where the firm sets prices, not quantities). Candidate A is preferred because it maps directly onto Varian's third-degree PD framework.

---

### ★ Recommended Equilibrium Concept: Dominant Firm Equilibrium (Price Leadership)

**Justification:** The research puzzle is framed around the dominant firm's pricing decision — how it sets different prices across two segmented markets. The price leadership (dominant firm equilibrium) concept is the natural solution concept for this setting: it directly delivers the firm's optimal pricing strategy as the solution to a constrained optimization problem, and it maps cleanly onto the third-degree price discrimination framework (Varian 1985) with residual demand substituted for total demand. The fringe firms' competitive behavior (price-taking) is justified by the N → ∞ Cournot limit, making Candidate A the formal limit of Candidate C with atomistic fringe. Candidate B (SPNE) is the game-theoretic foundation of Candidate A and is used to justify the price-leadership timing structure.

---

## 8. Social Planner Benchmarks

### Benchmark 1 — Segmented Market Equilibrium (this paper)

**Description:** The dominant firm sets (p_u*, p_r*) as described above. Markets are segmented; the dominant firm engages in third-degree price discrimination across residual demands.

**Welfare:**
> W^{SEG} = CS_u(p_u*) + CS_r(p_r*) + Π_D* + Π_{F_u}* + Π_{F_r}*

---

### Benchmark 2 — Uniform Price Counterfactual (Varian welfare comparison)

**Description:** The dominant firm is constrained to set the same price p in both markets (no price discrimination). This could result from: regulation against geographic price discrimination; identical distribution contracts; uniform retail pricing.

**Optimization:**
> max_{p} (p − c) · [R_u(p) + R_r(p)]   subject to  R_u(p) + R_r(p) ≤ K

FOC (with binding constraint):
> [R_u(p) + R_r(p)] + (p − c − λ^U) · [R'_u(p) + R'_r(p)] = 0

where λ^U is the shadow price of the capacity constraint under uniform pricing.

**Uniform price equilibrium:**
> p^U* = (c + λ^{U*})/2 + (a_u + a_r) / [2(b_u + e_u + b_r + e_r)]

**Welfare:**
> W^{UNI} = CS_u(p^{U*}) + CS_r(p^{U*}) + Π_D^{U*} + Π_{F_u}^{U*} + Π_{F_r}^{U*}

**Welfare comparison (Varian test on residual demand):**
> W^{SEG} ≥ W^{UNI} iff Q^{SEG} ≡ q_u* + q_r* ≥ Q^{UNI} ≡ q^{U*}

Since both equilibria are subject to the same capacity constraint K and the constraint binds in both cases: Q^{SEG} = Q^{UNI} = K. Therefore:

> W^{SEG} − W^{UNI} = [CS_u(p_u*) + CS_r(p_r*)] − [CS_u(p^{U*}) + CS_r(p^{U*})] + [Π_{F_u}* + Π_{F_r}* − Π_{F_u}^{U*} − Π_{F_r}^{U*}]

When the capacity constraint binds in both regimes, the dominant firm profit is the same (both produce K units total), and the welfare comparison reduces to differences in consumer surplus and fringe profits. **This is a key proposition to derive in Stage 6.**

---

### Benchmark 3 — First-Best (Social Planner with Full Information)

**Description:** A benevolent social planner maximizes total welfare subject only to the capacity constraint K and market feasibility.

**Optimization:**
> max_{q_u, q_r, s_u, s_r} ∫₀^{q_u+s_u} P_u(x)dx + ∫₀^{q_r+s_r} P_r(x)dx − c(q_u + q_r) − C_u^F(s_u) − C_r^F(s_r)
> subject to: q_u + q_r ≤ K, q_m ≥ 0, s_m ≥ 0

where C_m^F(s_m) = s_m² / (2e_m) is the aggregate fringe cost in market m (from individual quadratic costs).

**Social planner condition:** The planner equates the marginal social value of production with the marginal social cost:
- For the dominant firm: social marginal cost = c (constant); so the planner uses the dominant firm up to capacity K.
- For fringe firms: social marginal cost in market m = s_m / e_m; the planner sets P_m(q_m + s_m) = s_m / e_m.
- Dominant firm allocation: since c < P_m for all relevant quantities, and dominant firm cost is lower than the fringe cost at the margin (for low quantities), the planner always prefers to fill capacity with dominant firm output before using fringe.

**Note:** The first-best is used as a normative upper bound; the segmented vs. uniform price welfare comparison (Benchmark 2) is the paper's main welfare result.

---

## 9. Internal Consistency Check

| Check | Status | Notes |
|-------|--------|-------|
| All variables defined before use | ✓ | Every symbol in Sections 4–6 has an explicit domain in Section 6 notation table |
| Equilibrium concept compatible with action/information space | ✓ | Price leadership equilibrium (Candidate A) is fully compatible with complete information static game; fringe's dominant strategy (price-taking) is compatible with atomistic fringe limit |
| Budget/resource constraints consistent across agents | ✓ | Capacity constraint q_u + q_r ≤ K is the only cross-agent constraint; market clearing (total supply = demand) is automatically satisfied by the residual demand formulation |
| Timing internally consistent | ✓ | Dominant firm sets prices before fringe responds; fringe observes prices and supplies; no agent conditions on future events |
| Model generates the tension from Stage 1 | ✓ | The tension (dominant firm pricing power constrained asymmetrically by fringe supply in two markets) is directly generated: R_m(p_m) depends on e_m, so pricing power differs across markets; capacity constraint K links the two markets' FOCs through λ* |
| Existence (preliminary) | ✓ | Under A1–A4, the dominant firm's optimization problem is strictly concave in (p_u, p_r) (linear residual demand → quadratic profit); closed-form solution exists; fringe supply is uniquely determined |
| Payoff consistency | ✓ | All payoff functions are well-defined for all parameter values satisfying A1–A4; consumer surplus is finite (quadratic integral over linear demand); fringe profits are non-negative |

**Outstanding issues:** None. All checks pass under Assumptions A1–A4 stated below.

---

## 10. Maintained Assumptions

**A1 (Market Segmentation):** The urban and rural markets are geographically and commercially separated. The per-unit cost of arbitrage (buying rural, reselling urban) strictly exceeds the equilibrium price gap: τ > p_u* − p_r* > 0. No consumer arbitrage occurs in equilibrium.

**A2 (Dominant Firm Cost Advantage):** The dominant firm's marginal cost c is lower than the fringe marginal cost at any relevant output: c < s_m* / e_m = p_m* for all m. (In the linear fringe model, the fringe's supply-weighted marginal cost at equilibrium equals p_m*, while the dominant firm's MC = c < p_m*.) This ensures the dominant firm earns positive profit and the market structure (dominant firm + fringe) is stable.

**A3 (Binding Capacity Constraint):** K < K̄ ≡ [a_u + a_r − (b_u + e_u + b_r + e_r) · c] / 2, where K̄ is the sum of the dominant firm's unconstrained optimal residual demand quantities. This ensures λ* > 0 — the capacity constraint binds in equilibrium and the two markets are genuinely linked.

**A4 (Asymmetric Fringe — Rural More Competitive):** e_r > e_u: the aggregate fringe supply elasticity is higher in the rural market. Under symmetric demand (a_u = a_r = a, b_u = b_r = b), this is sufficient to ensure p_u* > p_r* — the dominant firm charges a higher price in the urban market where fringe competition is weaker.

---

## 11. Notation Summary

| Symbol | Meaning | Domain |
|--------|---------|--------|
| m | Market index | {u, r} (urban, rural) |
| a_m | Demand intercept in market m | ℝ₊₊ |
| b_m | Demand slope in market m | ℝ₊₊ |
| P̄_m = a_m/b_m | Choke price in market m | ℝ₊₊ |
| D_m(p) = a_m − b_m · p | Aggregate consumer demand in market m | ℝ₊ |
| e_m | Fringe aggregate supply elasticity parameter (e_m = N_m · g_m) | ℝ₊₊ |
| S_m(p) = e_m · p | Aggregate fringe supply in market m | ℝ₊ |
| R_m(p) = D_m(p) − S_m(p) | Dominant firm's residual demand in market m | ℝ (can be zero at high p) |
| ε_m^R(p) | Residual demand price elasticity in market m | ε_m^R ≡ p · R'_m / R_m < 0 |
| c | Dominant firm's constant marginal cost | (0, min_m P̄_m) |
| K | Dominant firm's total capacity | (0, K̄) |
| K̄ | Sum of unconstrained residual demands at p_m^{nc} | K̄ = [a_u + a_r − (b_u + e_u + b_r + e_r)c] / 2 |
| λ | Shadow price of capacity constraint | ℝ₊ (= 0 if K ≥ K̄) |
| p_m* | Equilibrium price in market m | (c, P̄_m) |
| q_m* | Dominant firm equilibrium quantity in market m | R_m(p_m*) |
| s_m* | Fringe equilibrium quantity in market m | e_m · p_m* |
| Π_D* | Dominant firm equilibrium profit | ℝ₊ |
| CS_m* | Consumer surplus in market m | ℝ₊ |
| Π_{F_m}* | Aggregate fringe surplus in market m | e_m · (p_m*)² / 2 |
| W^{SEG} | Total welfare under segmented equilibrium | Σ_m [CS_m* + Π_{F_m}*] + Π_D* |
| W^{UNI} | Total welfare under uniform price counterfactual | analogous |
| p^{U*} | Optimal uniform price | solution to single-market FOC with R_u + R_r |
| τ | Per-unit arbitrage cost between markets | τ > p_u* − p_r* (A1) |
