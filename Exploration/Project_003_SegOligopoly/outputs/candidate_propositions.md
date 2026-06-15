# Candidate Propositions

**Date:** 2026-06-15
**Stage:** 6 — Proposition Generator

---

## Proposition Summary Table

| ID | Type | One-line statement | Role | Difficulty | Novelty |
|----|------|--------------------|------|-----------|---------|
| P_E1 | Existence + Uniqueness | Under A1–A4 and H2, a unique dominant firm equilibrium in closed form exists | SUPPORTING | EASY | LOW |
| P_C1 | Comparative Statics (sign) | Urban price exceeds rural price iff residual demand is less elastic in the urban market | SUPPORTING | EASY | LOW |
| P_C2 | Comparative Statics (cross-market) | Stronger rural fringe reduces prices in both markets but strictly widens the urban-rural price gap | CORE | MEDIUM | HIGH |
| P_C3 | Comparative Statics (capacity) | Capacity expansion reduces both prices uniformly — leaving the price gap unchanged | CORE | MEDIUM | MEDIUM |
| P_W1 | Welfare | Market segmentation reduces total output and total welfare relative to uniform pricing, but benefits rural consumers and urban fringe | CORE | MEDIUM | MEDIUM |
| P_B1 | Boundary / Limit | As capacity becomes non-binding (K → K̄), all cross-market effects vanish and the model collapses to two independent dominant firm problems | SUPPORTING | EASY | LOW |

---

## Dependency Graph

```
P_E1 (Existence + Uniqueness)
├── P_C1 (Price Gap Sign — depends on P_E1 + A4)
├── P_C2 (Cross-market Comp. Statics — depends on P_E1 + A3)
│   └── P_C3 (Capacity Comp. Statics — depends on P_E1 + A3)
│       └── P_B1 (Boundary — depends on P_C2 + P_C3)
└── P_W1 (Welfare — depends on P_E1 + P_C1 + P_C2)
```

---

## Detailed Proposition Statements

---

### [P_E1] — Existence and Uniqueness of Dominant Firm Equilibrium

**Statement:**
> Under Assumptions A1–A4, H2 (interior solution: p_m* < a_m/(b_m + e_m) for m ∈ {u, r}), and the binding capacity condition A3 (K < K̄), there exists a **unique** dominant firm equilibrium (p_u*, p_r*, λ*) ∈ ℝ₊₊² × ℝ₊₊ given explicitly by:
>
> p_m* = (c + λ*)/2 + a_m / [2(b_m + e_m)],   m ∈ {u, r}
>
> λ* = (a_u + a_r − 2K) / (b_u + e_u + b_r + e_r) − c > 0
>
> with dominant firm quantities q_m* = [a_m − (b_m + e_m)(c + λ*)]/2 > 0, fringe quantities s_m* = e_m · p_m* > 0, and q_u* + q_r* = K.

**Formal statement:**
```
\begin{proposition}[Existence and Uniqueness]\label{prop:existence}
Under Assumptions A1--A4 and H2, and letting $B \equiv b_u + e_u + b_r + e_r$,
there exists a unique dominant firm equilibrium. The equilibrium prices, quantities,
and capacity shadow price are given by:
\begin{align}
p_m^* &= \frac{c + \lambda^*}{2} + \frac{a_m}{2(b_m + e_m)}, \quad m \in \{u,r\}, \\
\lambda^* &= \frac{a_u + a_r - 2K}{B} - c > 0, \\
q_m^* &= \frac{a_m - (b_m + e_m)(c + \lambda^*)}{2} > 0, \\
s_m^* &= e_m p_m^* > 0.
\end{align}
\end{proposition}
```

**Required assumptions:** A1, A2, A3, A4, H2
**Expected proof technique:** Strict concavity of the dominant firm's quadratic profit function in (p_u, p_r); the Hessian is diagonal with negative entries −2(b_m + e_m) < 0; a unique interior maximum exists by Weierstrass on the compact, convex feasible set; KKT conditions are necessary and sufficient under strict concavity; λ* > 0 follows from A3.
**Proof difficulty:** EASY
**Novelty:** LOW — the existence of a dominant firm equilibrium is standard; the novelty is in the capacity-constrained cross-market variant
**Role:** SUPPORTING

**Economic content:** The closed-form solution shows that both prices increase linearly in the capacity shadow price λ* and decrease in the fringe supply elasticity parameters e_m (through the a_m/[2(b_m + e_m)] term). The shadow price λ* summarizes the scarcity of capacity and appears symmetrically in both markets' pricing formulas — this symmetry is what links the two markets.

---

### [P_C1] — Urban-Rural Price Gap: Sign and Magnitude

**Statement:**
> Under the equilibrium of Proposition P_E1, the price gap in general demand is:
>
> p_u* − p_r* = a_u/[2(b_u + e_u)] − a_r/[2(b_r + e_r)].
>
> This is strictly positive under **Assumption A4'** (a_u/(b_u + e_u) > a_r/(b_r + e_r)), the condition that the urban residual demand intercept exceeds the rural residual demand intercept. Under symmetric consumer demand (a_u = a_r = a, b_u = b_r = b), A4' reduces to A4 (e_r > e_u) and:
>
> p_u* − p_r* = (a/2) · [1/(b + e_u) − 1/(b + e_r)] > 0.
>
> The price gap is independent of the capacity level K, of the capacity shadow price λ*, and of the dominant firm's marginal cost c.

**Formal statement:**
```
\begin{proposition}[Urban-Rural Price Gap]\label{prop:pricegap}
In the dominant firm equilibrium of Proposition~\ref{prop:existence}, the
urban-rural price gap equals:
\begin{equation}
p_u^* - p_r^* = \frac{a_u}{2(b_u+e_u)} - \frac{a_r}{2(b_r+e_r)}.
\end{equation}
This is strictly positive under Assumption~A4' ($a_u/(b_u+e_u) > a_r/(b_r+e_r)$).
Under symmetric demand ($a_u = a_r = a$, $b_u = b_r = b$), A4' reduces to
Assumption~A4 ($e_r > e_u$) and $p_u^* - p_r^* = (a/2)[1/(b+e_u) - 1/(b+e_r)] > 0$.
The price gap is strictly increasing in $e_r - e_u$ (under symmetric demand) and
is independent of $K$, $\lambda^*$, and $c$ for any demand specification.
\end{proposition}
```

**Required assumptions:** A1, A3, A4' (general); A4 sufficient under symmetric demand; H2
**Expected proof technique:** Direct substitution of closed-form p_m* into p_u* − p_r*; the λ* terms cancel exactly, leaving only the a_m/[2(b_m + e_m)] terms.
**Proof difficulty:** EASY
**Novelty:** LOW for the direction of the gap (inverse elasticity rule on residual demand is well known); MEDIUM for the independence from K and c — this is a non-obvious structural result.
**Role:** SUPPORTING (establishes baseline; the independence from K is the interesting feature)

**Economic content:** The price gap is determined entirely by the asymmetry in fringe supply structures. The capacity constraint and cost structure affect price *levels* but not the price *gap*. This clean separation is a distinctive implication of the linear model: the cross-market capacity linkage operates through a common additive term (c + λ*)/2 in both prices, which cancels in the difference.

---

### [P_C2] — Cross-Market Comparative Statics: The Main Result

**Statement:**
> Under Assumption A3 (K < K̄) and the equilibrium of Proposition P_E1, consider an increase in the rural fringe supply elasticity e_r. Then:
>
> (a) **Shadow price effect:** dλ*/de_r = −(a_u + a_r − 2K) / B² < 0. The capacity shadow price decreases — capacity becomes less scarce as the dominant firm values rural residual demand less.
>
> (b) **Urban price effect:** dp_u*/de_r = (1/2) · dλ*/de_r < 0. The urban price falls.
>
> (c) **Rural price effect:** dp_r*/de_r = (1/2) · dλ*/de_r − a_r / [2(b_r + e_r)²] < 0. The rural price falls by more than the urban price.
>
> (d) **Price gap effect:** d(p_u* − p_r*)/de_r = a_r / [2(b_r + e_r)²] > 0. The urban-rural price gap strictly widens.
>
> (e) **Capacity reallocation:** dq_u*/de_r = (b_u + e_u)(a_u + a_r − 2K) / (2B²) > 0 and dq_r*/de_r < 0. The dominant firm reallocates capacity toward the urban market.
>
> (f) **The capacity constraint is necessary:** Under K ≥ K̄ (non-binding constraint, λ* = 0), dp_u*/de_r = 0 and dq_u*/de_r = 0. All cross-market effects in (a)–(e) are exclusively caused by the binding capacity constraint.

**Formal statement:**
```
\begin{proposition}[Cross-Market Comparative Statics]\label{prop:crossmarket}
In the dominant firm equilibrium of Proposition~\ref{prop:existence}, under
Assumption~A3 ($K < \bar{K}$):
\begin{align}
\frac{d\lambda^*}{de_r} &= -\frac{a_u + a_r - 2K}{B^2} < 0, \\
\frac{dp_u^*}{de_r} &= \frac{1}{2}\cdot\frac{d\lambda^*}{de_r} < 0, \\
\frac{d(p_u^* - p_r^*)}{de_r} &= \frac{a_r}{2(b_r + e_r)^2} > 0, \\
\frac{dq_u^*}{de_r} &= \frac{(b_u+e_u)(a_u+a_r-2K)}{2B^2} > 0.
\end{align}
Furthermore, if $K \geq \bar{K}$ (capacity non-binding), then $dp_u^*/de_r = 0$
and $dq_u^*/de_r = 0$: the cross-market effects in parts (a)--(e) are generated
exclusively by the binding capacity constraint.
\end{proposition}
```

**Required assumptions:** A1, A2, A3 (strictly), A4 (for signs); H2
**Expected proof technique:** Direct differentiation of the closed-form expressions p_m*(e_r) and q_m*(e_r), using the chain rule through λ*(e_r). All derivatives are available in closed form for the linear model. Part (f) follows by setting K ≥ K̄ so λ* = 0 and p_u* = c/2 + a_u/[2(b_u + e_u)], which is independent of e_r.
**Proof difficulty:** MEDIUM — algebra is clear but the economic decomposition (shadow price effect vs. direct elasticity effect on rural price) requires careful attribution
**Novelty:** HIGH — the cross-market comparative static dp_u*/de_r < 0 is absent from the separable dominant firm model; this result is the paper's main theoretical contribution. The decomposition into "shadow price channel" and "direct residual demand channel" is new.
**Role:** CORE

**Economic content:** An increase in rural fringe competition reduces the dominant firm's profit margin in the rural market. With a binding capacity constraint, the dominant firm responds by reallocating capacity toward the urban market (where fringe is weaker and profit margins are higher). This reallocation increases urban quantity (q_u* rises) and — via the falling shadow price λ* — reduces both prices. But the rural price falls more than the urban price, because the rural market directly absorbs the fringe elasticity effect. The price gap widens. The entire cross-market effect is mediated by the shadow price of capacity and vanishes when capacity is non-binding — establishing that the capacity constraint is the sole mechanism generating cross-market interaction.

---

### [P_C3] — Capacity Level Comparative Statics

**Statement:**
> Under Assumption A3 and the equilibrium of Proposition P_E1:
>
> (a) **Uniform price-level effect:** dp_m*/dK = −1/B < 0 for both m ∈ {u, r}. As capacity increases, both prices fall at the same rate. Equivalently, the capacity shadow price falls: dλ*/dK = −2/B < 0.
>
> (b) **Price gap invariance to K:** d(p_u* − p_r*)/dK = 0. The urban-rural price gap is invariant to the capacity level K.
>
> (c) **Convergence to the unconstrained equilibrium:** As K → K̄ from below, λ* → 0 and p_m* → p_m^{nc} ≡ c/2 + a_m/[2(b_m + e_m)] (the unconstrained dominant firm prices). The cross-market comparative static dp_u*/de_r → 0 as K → K̄.

**Formal statement:**
```
\begin{proposition}[Capacity Comparative Statics]\label{prop:capacity}
In the dominant firm equilibrium of Proposition~\ref{prop:existence}:
\begin{align}
\frac{dp_m^*}{dK} &= -\frac{1}{B} < 0 \quad \text{for } m \in \{u,r\}, \\
\frac{d(p_u^* - p_r^*)}{dK} &= 0, \\
\lim_{K \to \bar{K}^-} p_m^* &= p_m^{nc} \equiv \frac{c}{2} + \frac{a_m}{2(b_m + e_m)}.
\end{align}
\end{proposition}
```

**Required assumptions:** A3 (strictly, K < K̄); H2
**Expected proof technique:** Direct differentiation of λ*(K) = (a_u + a_r − 2K)/B − c → dλ*/dK = −2/B; dp_m*/dK = (1/2) · dλ*/dK = −1/B; the price gap formula a_u/[2(b_u + e_u)] − a_r/[2(b_r + e_r)] contains no K.
**Proof difficulty:** EASY
**Novelty:** MEDIUM — the invariance of the price gap to K is a non-obvious structural result; it says capacity expansion acts as a uniform cost reduction (same effect in both markets) and therefore compresses profit levels without changing relative pricing.
**Role:** CORE

**Economic content:** Capacity expansion is equivalent to a uniform reduction in the dominant firm's effective marginal cost (the shadow price λ* falls one-for-one with K, and both prices fall at rate 1/B). Because both markets' prices respond identically to capacity expansion, the gap p_u* − p_r* is unaffected. This provides a clear empirical prediction: policies that increase the dominant firm's distribution capacity (e.g., cold-chain investment subsidies) reduce both urban and rural prices equally — they are neutral with respect to urban-rural price equity — while policies that strengthen rural fringe competition (A4-type shocks) widen the gap.

---

### [P_W1] — Welfare: Market Segmentation Reduces Total Output and Total Welfare

**Statement:**
> Under A1–A4 with symmetric consumer demand (a_u = a_r = a, b_u = b_r = b), and when both the segmented and uniform-price equilibria face the same binding capacity constraint K:
>
> (a) **Total market output comparison:**
> Q^{SEG} − Q^{UNI} = a(e_r − e_u)·[e_u/(b + e_u) − e_r/(b + e_r)] / (2B) < 0 when e_r > e_u.
> Market segmentation reduces total market output (dominant firm + fringe) relative to the uniform-price benchmark.
>
> (b) **Total welfare comparison (Varian criterion on residual demand):**
> By the Varian (1985) criterion applied to total market output: W^{SEG} < W^{UNI}.
> Market segmentation reduces total welfare relative to uniform pricing.
>
> (c) **Distributional welfare effects:**
> Rural consumers gain: CS_r^{SEG} > CS_r^{UNI} (since p_r* < p^{U*}).
> Urban consumers lose: CS_u^{SEG} < CS_u^{UNI} (since p_u* > p^{U*}).
> Urban fringe gains: Π_{F_u}^{SEG} > Π_{F_u}^{UNI} (since p_u* > p^{U*}).
> Rural fringe loses: Π_{F_r}^{SEG} < Π_{F_r}^{UNI} (since p_r* < p^{U*}).
> Dominant firm gains: Π_D^{SEG} ≥ Π_D^{UNI} (segmentation is the dominant firm's preferred strategy).
>
> (d) **Net welfare loss mechanism:** The dominant firm gains from segmentation by charging a supra-uniform price in the urban market, where fringe competition is weaker. The supra-uniform urban price reduces total output (urban market is underserved) more than the sub-uniform rural price increases total output (rural market is only partially served by the fringe at the higher prices under uniform pricing). The net effect is an output reduction and welfare loss.

**Formal statement:**
```
\begin{proposition}[Welfare: Segmentation vs. Uniform Pricing]\label{prop:welfare}
Under A1--A4, symmetric demand ($a_u = a_r = a$, $b_u = b_r = b$), and $K <
\bar{K}$ (both regimes face a binding capacity constraint), total market output
under segmented pricing is strictly less than under uniform pricing:
\begin{equation}
Q^{\mathrm{SEG}} - Q^{\mathrm{UNI}} = \frac{a(e_r - e_u)}{2B}\left[
\frac{e_u}{b+e_u} - \frac{e_r}{b+e_r}\right] < 0.
\end{equation}
Consequently, total welfare satisfies $W^{\mathrm{SEG}} < W^{\mathrm{UNI}}$.
Despite the aggregate welfare loss, rural consumers and urban fringe firms
benefit from segmentation while urban consumers and rural fringe firms lose.
\end{proposition}
```

**Required assumptions:** A1, A2, A3, A4' (general sufficient condition); A4 sufficient under symmetric demand; symmetric demand used for closed-form Q^{SEG} − Q^{UNI} formula; Varian (1985) welfare criterion
**Expected proof technique:** (a) Compute Q^{SEG} = K + e_u p_u* + e_r p_r* and Q^{UNI} = K + (e_u + e_r) p^{U*}; substitute closed-form prices; Q^{SEG} − Q^{UNI} = e_u(p_u* − p^{U*}) + e_r(p_r* − p^{U*}); compute each price difference from the closed-form expressions; factor and sign. (b) Apply Varian (1985) criterion: total welfare W = ∫₀^Q P(x)dx − cK − Σ_m C_m^F(s_m*); this is increasing in Q when the fringe supply cost is bounded; hence Q^{SEG} < Q^{UNI} implies W^{SEG} < W^{UNI}. (c) Sign each component from the price comparison p_u* vs. p^{U*} and p_r* vs. p^{U*}.
**Proof difficulty:** MEDIUM — the aggregate output comparison requires careful algebra; the distributional statements are straightforward from the price comparisons
**Novelty:** MEDIUM — Varian's welfare criterion is well-known; the application to residual demand in a two-market dominant-fringe model with a binding capacity constraint is new. The distributional decomposition (rural consumers gain, urban consumers lose) is an empirically relevant novel characterization.
**Role:** CORE

**Economic content:** The welfare result is a generalization of Varian (1985) to the dominant firm + fringe setting with a capacity constraint. The standard Varian result says segmentation raises welfare iff total output rises; here total output falls under segmentation (the dominant firm's price increase in the high-markup urban market is not fully offset by the price decrease in the rural market). The distributional analysis reveals a politically interesting pattern: market segmentation benefits the rural consumers who are typically poorer, but harms them as a group relative to the fringe firms who lose revenue in the rural market.

**Citation (verified):** Varian, H.R. (1985) "Price Discrimination and Social Welfare," *American Economic Review* 75(4): 870–875. **VERIFIED.**

---

### [P_B1] — Boundary Result: Capacity Non-Binding Limit

**Statement (corrected in Stage 7, confirmed by Stage 8 adversarial testing):**
> As K → K̄ from below, equilibrium **price levels** converge continuously to the unconstrained dominant firm equilibrium:
> lim_{K → K̄⁻} p_m* = p_m^{nc} = c/2 + a_m/[2(b_m + e_m)] for m ∈ {u, r},
> and lim_{K → K̄⁻} λ* = 0.
>
> However, the cross-market **comparative static** dp_u*/de_r is DISCONTINUOUS at K = K̄:
> — For K < K̄: dp_u*/de_r = −(a_u + a_r − 2K)/(2B²) → −c/(2B) as K → K̄⁻.
> — For K ≥ K̄: dp_u*/de_r = 0.
>
> The mechanism switches off abruptly at K = K̄: price levels are continuous but the cross-market sensitivity jumps by c/(2B) at the transition point.
>
> **Remark:** The discontinuity size c/(2B) → 0 as c → 0. A dominant firm with zero marginal cost has a continuous cross-market effect at K = K̄.

**Formal statement:**
```
\begin{proposition}[Non-Binding Capacity Limit]\label{prop:boundary}
As $K \to \bar{K}^-$, equilibrium prices converge continuously:
$\lim_{K \to \bar{K}^-} p_m^* = p_m^{nc} \equiv c/2 + a_m/[2(b_m+e_m)]$,
and $\lambda^* \to 0$. However, the cross-market comparative static
$dp_u^*/de_r$ is discontinuous at $K = \bar{K}$:
\begin{equation}
\lim_{K \to \bar{K}^-} \frac{dp_u^*}{de_r} = -\frac{c}{2B} \neq 0
= \frac{dp_u^*}{de_r}\bigg|_{K \geq \bar{K}}.
\end{equation}
The jump discontinuity has magnitude $c/(2B)$ and vanishes as $c \to 0$.
\end{proposition}
```

**Required assumptions:** A1, A2; H2; K → K̄ (A3 approaches equality in the limit)
**Expected proof technique:** Direct limit of dp_u*/de_r = −(a_u + a_r − 2K)/(2B²) as K → K̄⁻ gives −(a_u + a_r − 2K̄)/(2B²) + (2·Bc/2)/(2B²) → Bc/(2B²) = c/(2B). For K ≥ K̄, λ* = 0 and p_u* = c/2 + a_u/[2(b_u + e_u)] is independent of e_r, so dp_u*/de_r = 0 exactly.
**Proof difficulty:** EASY
**Novelty:** LOW-MEDIUM — the price continuity is standard; the discontinuity in the comparative static is a novel structural observation
**Role:** SUPPORTING (establishes that the capacity constraint mechanism switches on sharply; validates A3 as the key driver)

**Economic content:** The price level continuity confirms that A3 is not a knife-edge for price determination — as capacity becomes marginally non-binding, prices transition smoothly to the unconstrained level. However, the comparative static discontinuity reveals that the cross-market responsiveness mechanism switches off abruptly: a dominant firm with K just below K̄ still reduces urban prices when rural competition strengthens (though by only c/(2B)), while a firm with K just above K̄ does not respond at all. This has policy content: near-capacity-constrained dominant firms are qualitatively different from unconstrained ones in how they respond to competitive shocks in distant markets.

---

## What the Model CANNOT Establish

1. **Long-run fringe entry/exit:** The model takes e_m as exogenous. It cannot establish whether increased rural fringe supply (higher e_r) reflects efficient entry (desirable) or distorted competition (undesirable). The welfare implications of changes in e_r require a model of fringe entry costs.

2. **Dynamic effects of the capacity constraint:** The model is static — the dominant firm cannot invest in capacity over time. It cannot establish whether the dominant firm would optimally expand capacity in response to changes in fringe supply, nor whether the binding constraint is self-perpetuating (e.g., dominant firm strategically limits capacity to maintain the price gap).

3. **Strategic behavior by the fringe:** The model assumes price-taking fringe. If individual fringe firms have significant market power (e.g., Wahaha or Nongfu Spring), the equilibrium changes qualitatively. This case requires a Cournot model with N heterogeneous firms.

4. **Identification of the empirical mechanism:** The model cannot establish whether observed urban-rural price gaps in China's beverage market are caused by demand elasticity differences, fringe supply asymmetry, or capacity constraints — all three are simultaneously present in the real market. Empirical identification of the mechanism requires data on fringe supply curves, not just price data.

5. **Welfare claims about specific consumer groups within each market:** The model aggregates over all consumers in each market (representative consumer). It cannot establish distributional implications within markets (e.g., whether low-income urban consumers are more harmed by the higher urban price than high-income consumers).

6. **Results for more than two markets:** The propositions are derived for exactly two markets (urban, rural). Extension to N > 2 markets with a common capacity constraint follows the same structure (N FOCs linked by one shadow price λ*) but requires additional regularity conditions for interior solutions in all markets.

---

## Connection to Prior Literature

All citations in this section have been verified in Stage 2 (literature_positioning.md).

**Varian (1985) — Third-Degree PD and Welfare:**
Proposition P_W1 applies Varian's welfare criterion (welfare rises iff total output rises) to the dominant firm + fringe setting. The extension is non-trivial: in Varian's monopoly model, total output equals the firm's output; here total output equals dominant firm output (K, constant across regimes) plus fringe output (which differs across regimes because prices differ). The welfare result therefore follows from fringe output differences, not dominant firm output differences — a novel application of the Varian criterion. **Citation: Varian, H.R. (1985) AER 75(4): 870–875. VERIFIED.**

**Gaskins (1971) — Dynamic Limit Pricing:**
The capacity constraint in this model can be interpreted as a static version of Gaskins' (1971) dynamic capacity accumulation problem. In Gaskins, the dominant firm optimally limits pricing to control the rate of fringe entry. Here, the dominant firm's capacity K is fixed — the shadow price λ* plays the same role as Gaskins' marginal value of slowing fringe growth. **Citation: Gaskins, D.W. (1971) JET 3: 306–322. VERIFIED.**

---

## Contribution Assessment

**Core propositions count:** 3 (P_C2, P_C3, P_W1)

**Supporting propositions count:** 3 (P_E1, P_C1, P_B1)

**Overall strength of contribution:** MODERATE to STRONG

The paper's contribution is built around three non-trivial results: (1) a cross-market comparative static (P_C2) showing that stronger rural fringe competition reduces both prices but widens the gap, mediated entirely by the capacity shadow price; (2) an invariance result (P_C3) showing that capacity expansion is price-gap neutral; (3) a welfare result (P_W1) showing that market segmentation reduces total output and welfare in this setting. All three results are new relative to the canonical dominant firm model and the standard Varian (1985) welfare analysis.

The contribution is appropriate for **RAND Journal of Economics** or **Journal of Industrial Economics** as an applied theory paper. The results are clean, economically interpretable, and have direct policy relevance for competition authorities considering whether to allow geographic price discrimination in dominant firm markets.

**What would strengthen the contribution:**
- An extension to asymmetric consumer demand (a_u ≠ a_r, b_u ≠ b_r) with sufficient conditions for the main results to hold qualitatively (currently stated only for symmetric demand in P_C1 and P_W1).
- A calibration section applying the model to China's carbonated beverage market using publicly available market share and price data — providing quantitative estimates of the cross-market elasticity effect (magnitude of dp_u*/de_r).
- An extension to convex dominant firm cost C(q) = c·q + (γ/2)·q² to verify robustness of P_C2 and P_W1 when both cost and capacity channels are present.
