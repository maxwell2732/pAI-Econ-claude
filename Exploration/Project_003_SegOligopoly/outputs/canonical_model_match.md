# Canonical Model Match

**Date:** 2026-06-15
**Stage:** 3b — Canonical Model Matching

---

## Summary

The research puzzle — capacity-constrained dominant firm pricing across two segmented markets (urban/rural) with asymmetric competitive fringes — is the confluence of two canonical model families. The primary ancestor is **Third-Degree Price Discrimination** (Varian 1985 / Pigou 1920 tradition) and the secondary ancestor is **Dominant Firm + Competitive Fringe** (price leadership; Carlton-Perloff Ch. 6 / Stackelberg tradition). The cross-market capacity constraint is the key structural addition, and its closest ancestor in the library is **Dixit (1980)** — but the mechanism runs in reverse: instead of investing in capacity to commit to a quantity threat, the dominant firm faces a *binding* capacity constraint that links the two markets' marginal conditions.

---

## Candidate Models Evaluated

| Library File | Relevance | Role in Research |
|---|---|---|
| `io/price-discrimination.md` | **PRIMARY** | Core structure: MR₁ = MR₂ = MC across two markets; Varian (1985) welfare condition |
| `io/oligopoly-competition.md` | **PRIMARY** | Dominant firm as Stackelberg leader; fringe as N → ∞ Cournot followers (competitive limit) |
| `io/entry-deterrence.md` | **SECONDARY** | Dixit (1980) capacity model is the structural ancestor of the capacity constraint mechanism |
| `hotelling-product-differentiation.md` | **REJECTED** | Horizontal differentiation framing; persona council decided demand-elasticity differences (not spatial preferences) are the correct driver |
| `screening.md` | **NOT APPLICABLE** | Requires private consumer type information; third-degree PD uses observable group membership (urban/rural) |
| `moral-hazard.md`, `signaling.md` | **NOT APPLICABLE** | No hidden actions or hidden cost types in the core model |

---

## Primary Ancestor 1: Third-Degree Price Discrimination (Varian 1985)

**Match quality:** HIGH

**What the model provides:**
- The core optimization structure: firm sets p₁ in market 1 and p₂ in market 2 to maximize joint profit
- Optimality condition: MR₁(p₁) = MR₂(p₂) = MC
- Welfare result: total welfare rises iff total output rises (Varian 1985, AER 75(4): 870–875 — VERIFIED)
- No-arbitrage constraint: markets must be physically or legally separable (China urban-rural distribution channels satisfy this)

**What the research adds beyond the ancestor:**
- In the standard Varian model, the firm is a monopolist — its full demand curve is the market demand. In this research, the firm faces a **residual demand curve** in each market: R_m(p_m) = D_m(p_m) − S_m(p_m). The fringe supply S_m(p_m) shifts the effective demand curve that matters for the dominant firm.
- The optimality condition becomes: **MR₁^R(p₁) = MR₂^R(p₂) = MC + λ** where MR^R is marginal revenue on residual demand, and λ ≥ 0 is the shadow price of the capacity constraint K.
- The welfare comparison is also richer: consumer surplus, dominant firm profit, and **fringe firm surplus** all enter total welfare.

**Fit score:** 4/5 — direct ancestor, with meaningful structural additions.

---

## Primary Ancestor 2: Dominant Firm + Competitive Fringe (Price Leadership)

**Match quality:** HIGH

**What the model provides:**
- Dominant firm sets price p; fringe firms are price-takers and supply S(p) at that price
- Residual demand: R(p) = D(p) − S(p); dominant firm maximizes (p − c)·R(p)
- FOC: R(p*) + (p* − c)·R'(p*) = 0 → the inverse elasticity rule on residual demand
- As S'(p) → ∞ (fringe perfectly elastic supply), the dominant firm's pricing power disappears: p* → c

**Textbook treatment:** Carlton & Perloff, *Modern Industrial Organization*, 4th ed., Ch. 6 (standard reference).

**What the research adds beyond the ancestor:**
- The standard model has one market. This research has **two markets** with different fringe supply elasticities ε_r^S ≠ ε_u^S.
- In each market, the dominant firm faces a different residual demand curve, so the optimal price differs — this is the dominant firm model nested within the Varian third-degree PD structure.
- The **capacity constraint** linking the two markets is absent from the standard dominant firm model, which assumes unlimited production capacity.

**Fit score:** 4.5/5 — the most direct ancestor. The residual demand structure is identical; the extension is to two markets with a capacity constraint.

---

## Secondary Ancestor: Dixit (1980) Capacity Commitment

**Match quality:** MODERATE (mechanism repurposed)

**What the model provides:**
- Capacity k is an irreversible sunk investment; post-entry competition occurs with k as an endogenous cost parameter
- Capacity binds the dominant firm's post-entry quantity choice
- The shadow price of capacity appears in the post-entry FOC

**How the mechanism is repurposed in this research:**
- In Dixit (1980), capacity is a *choice variable* used to deter entry. In this research, capacity K is an *exogenous parameter* (the dominant firm's installed production and distribution capacity in the relevant market).
- The shadow price λ of the capacity constraint K plays the same role as Dixit's sunk capital cost: it shifts the dominant firm's effective marginal cost upward, affecting its pricing in both markets.
- The analogy: a binding capacity constraint in this two-market model is structurally identical to a binding capacity constraint in the Dixit post-entry subgame — both generate a shadow price that equates across markets/subgames.

**Fit score:** 3/5 — relevant structural ancestor for the capacity constraint mechanism, but the *purpose* of capacity differs (commitment device vs. cross-market linkage).

---

## The Canonical Model: Formal Specification

Based on the match analysis, the canonical ancestor is:

> **A capacity-constrained dominant firm implements third-degree price discrimination across two segmented markets with asymmetric competitive fringes.**

**Primitives (pre-Stage 4, for orientation):**
- Two markets m ∈ {u, r} (urban, rural)
- Market demand: D_m(p_m) with D'_m < 0, |ε_m^D| = |p_m D'_m / D_m|
- Fringe aggregate supply: S_m(p_m) with S'_m ≥ 0, ε_m^S = p_m S'_m / S_m
- Residual demand: R_m(p_m) = D_m(p_m) − S_m(p_m), R'_m = D'_m − S'_m < 0
- Dominant firm: cost C(q_u + q_r) = c(q_u + q_r), constant marginal cost c; total capacity constraint q_u + q_r ≤ K
- Dominant firm maximizes: Σ_m (p_m − c) · R_m(p_m) subject to Σ_m R_m(p_m) ≤ K

**Lagrangian FOC (when constraint binds, λ > 0):**
> (p_m − c − λ) = −R_m(p_m) / R'_m(p_m) for m ∈ {u, r}

Equivalently: the Lerner index on residual demand equals a common "effective marginal cost" c + λ in both markets.

**Key comparative statics to derive in Stage 4:**
1. ∂p_m*/∂ε_r^S — how does urban price change when rural fringe supply becomes more elastic?
2. ∂(p_u* − p_r*)/∂ε_r^S — how does the urban-rural price gap change?
3. ∂λ*/∂K — shadow cost of capacity as a function of total capacity
4. Welfare comparison: segmented equilibrium vs. uniform-price counterfactual (Varian welfare test applied to residual demand)

---

## Comparison with Non-Ancestor Models

**Why not Cournot oligopoly (symmetric firms)?**
The dominant firm + competitive fringe model is structurally distinct from symmetric Cournot: the fringe firms do not form beliefs about the dominant firm's output — they are price-takers. This generates a much simpler fringe best-response (the supply curve S_m(p_m)) and a clean residual demand formulation. Symmetric Cournot would require specifying fringe firms' beliefs, would generate more complex equilibrium conditions, and would not produce the clean third-degree PD structure.

**Why not Stackelberg (two firms)?**
The research involves many fringe firms, not a single follower. Stackelberg with one follower would overstate the follower's market power. The competitive-fringe limit (N → ∞ Cournot followers converging to price-taking behavior) is the correct derivation of the fringe structure from first principles. The dominant firm acts as the Stackelberg leader in the quantity sense, but the fringe is a supply curve, not a strategic follower.

**Why not Hotelling spatial competition?**
Hotelling generates horizontal differentiation between products, which would model the dominant firm (Coca-Cola) and fringe (local brands) as competing for consumers in a taste space. The research puzzle, however, is about pricing power and market structure — the urban vs. rural distinction is a *market segmentation* (different markets) not a product differentiation problem (different products in the same market). Hotelling would be appropriate if the research asked "why do consumers prefer local brands in rural areas?"; it is not appropriate for "how does the dominant firm price across the two markets given the fringe structure?"

---

## Gate 2b: Tractability Assessment

**Question:** Can the canonical model generate clean analytic propositions without numerical methods?

**Assessment:**

With the linear specification suggested by the Mathematical Referee in Stage 3:
- D_m(p) = a_m − b_m · p (linear demand)
- S_m(p) = e_m · p (linear supply through origin, elasticity parameter e_m)
- R_m(p) = (a_m) − (b_m + e_m) · p

The dominant firm's FOC in market m (with binding capacity constraint):
> a_m − (b_m + e_m) · p_m + (p_m − c − λ) · (−(b_m + e_m)) = 0
> → a_m − 2(b_m + e_m) · p_m + (b_m + e_m)(c + λ) = 0
> → **p_m* = [a_m + (b_m + e_m)(c + λ)] / [2(b_m + e_m)]**
> = (c + λ)/2 + a_m / [2(b_m + e_m)]

This is a **closed-form solution** in (a_m, b_m, e_m, c, λ). The quantity produced in market m is:
> q_m* = R_m(p_m*) = a_m − (b_m + e_m) · p_m* = [a_m − (b_m + e_m)(c + λ)] / 2

The capacity constraint pins λ by requiring q_u* + q_r* = K (when binding):
> [a_u − (b_u + e_u)(c + λ)] / 2 + [a_r − (b_r + e_r)(c + λ)] / 2 = K
> → **(a_u + a_r) − (b_u + e_u + b_r + e_r)(c + λ) = 2K**
> → **λ* = [(a_u + a_r − 2K) / (b_u + e_u + b_r + e_r)] − c**

This is fully explicit: λ* is closed-form in the primitives. Substituting back gives closed-form p_m*(e_u, e_r, K, ...) for each market.

**Comparative statics are fully tractable via direct differentiation:**
- ∂p_u*/∂e_r = ∂p_u*/∂λ · ∂λ*/∂e_r — both terms have closed-form expressions
- The sign of ∂(p_u* − p_r*)/∂e_r is determinable analytically

**Gate 2b Verdict: PASS** — the linear specification yields closed-form equilibrium and fully signed comparative statics without numerical methods. The general (non-linear) version can use IFT for qualitative results, and the linear version provides explicit quantitative propositions.

---

## Gate 2c: Match Quality Assessment

**Question:** Is the canonical model a genuine theoretical ancestor, or is it merely "the closest model we have"?

**Assessment:**

The dominant firm + competitive fringe model with third-degree price discrimination is not merely the closest available model — it is the **exact structural form** of the research puzzle:
- The research setup *is* a price leadership model with two markets
- The welfare question *is* the Varian (1985) welfare test applied to residual demand
- The capacity constraint is a *natural* extension that generates the cross-market mechanism identified in Stage 3

The only structural addition relative to the canonical ancestor is the capacity constraint. This addition:
1. Is economically motivated (Coca-Cola has finite production and distribution capacity)
2. Is formally tractable (Kuhn-Tucker; closed-form λ*)
3. Generates new non-trivial comparative statics (∂p_u*/∂e_r has a cross-market sign that is absent from the separable model)
4. Yields a new welfare result (the capacity constraint changes the welfare comparison relative to Varian's result on unconstrained PD)

**There is no concern that the model is a poor fit.** The research puzzle was reverse-engineered from the dominant firm + fringe structure (Stage 1's central question was explicitly about "residual demand" and "price-taking fringe"), so the canonical match is by construction strong.

**Gap between ancestor and proposed model:**
The one genuine gap is that the dominant firm model is typically framed for a single market. The extension to two markets with a capacity constraint is the paper's theoretical contribution — a clean, well-motivated departure from the ancestor that yields new results.

**Gate 2c Verdict: PASS** — the canonical model is a genuine ancestor. The extension (two markets + capacity constraint) is non-trivial, well-motivated, and tractable.

---

## Summary for Stage 4

**Canonical ancestor:** Dominant Firm + Competitive Fringe + Third-Degree Price Discrimination (capacity-constrained variant)

**Model primitives to specify in Stage 4:**
- Linear demand D_m(p) and linear fringe supply S_m(p) for each market m ∈ {u, r}
- Dominant firm capacity constraint q_u + q_r ≤ K
- Constant marginal cost c < min_m [a_m / (b_m + e_m)] (ensures interior solution)
- No-arbitrage between markets (rural distribution costs prohibit resale to urban market)

**Parameter restrictions to state in Stage 4:**
1. Interior solution: e_m and b_m such that monopoly price exceeds c in each market independently
2. Binding capacity constraint: K < K̄ (threshold K̄ defined by the sum of unconstrained optimal quantities)
3. Competitive fringe: each fringe firm has measure zero market share; free entry with constant marginal cost c_m^F > c (fringe is less efficient than dominant firm); N → ∞ makes fringe competitive

**Assumptions requiring justification in Stage 5:**
1. Price-taking fringe (defensible via large-N Cournot limit + constant marginal cost for fringe firms)
2. Market segmentation (defensible via distribution channel separation + high rural-to-urban transport costs for beverages)
3. Capacity binds (must impose K < K̄ as a parameter restriction; motivated by supply-chain bottlenecks for multinationals in rural China)
