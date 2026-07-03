# Candidate Propositions

**Date:** 2026-06-29
**Stage:** 6 — Proposition Generator

All propositions assume workers are rational, F is continuous with full support on [0,∞), the
model primitives of Stage 4 hold, and the assumptions of Stage 5 (A1–A8) apply unless otherwise noted.

---

## Proposition Summary Table

| ID | Type | One-line statement | Role | Difficulty | Novelty |
|----|------|--------------------|------|-----------|---------|
| P_E1 | Existence | Under A1–A3, A7, a unique STNE threshold θ* ∈ (0,∞) exists | CORE | MEDIUM | MEDIUM |
| P_C1 | Comp. Statics | θ* and the involution rate Φ* are decreasing/increasing in γ | CORE | MEDIUM | HIGH |
| P_C2 | Comp. Statics | Expected fertility n* is decreasing in γ (under A4, A5) | CORE | MEDIUM | HIGH |
| P_W1 | Welfare | Nash threshold θ* < social planner threshold θ^{SP}; fertility gap Δn > 0 | CORE | MEDIUM | HIGH |
| P_M1 | Mechanism | Optimal overtime tax τ* > 0 implements θ^{SP}; τ* increasing in γ | CORE | EASY | MEDIUM |
| P_U1 | Multiplicity | If π = π(Φ,γ) with ∂π/∂Φ > 0, multiple STNE may exist (tipping) | EXTENSION | HARD | HIGH |
| P_B1 | Boundary | As γ → ∞, θ* → 0 (universal involution); as γ → 0, θ* → θ̄ ≡ (δ_H − δ_L)/B(h_H) | SUPPORTING | EASY | LOW |
| L_SC | Lemma | V(h_H;θ,θ*)−V(h_L;θ,θ*) is strictly increasing in θ (SC holds) | SUPPORTING | EASY | LOW |

---

## Dependency Graph

```
L_SC (Lemma — Single-crossing)
└── P_E1 (Existence, depends on L_SC, A1–A3, A7)
    ├── P_U1 (Multiplicity extension, depends on P_E1, relaxed A3)
    ├── P_C1 (Comp. statics in γ, depends on P_E1)
    │   └── P_C2 (Comp. statics of n*, depends on P_C1, A4, A5)
    │       └── P_W1 (Welfare gap, depends on P_C1, A4)
    │           └── P_M1 (Optimal tax, depends on P_W1)
    └── P_B1 (Boundary, depends on P_E1; also independent)
```

---

## Detailed Proposition Statements

---

### [L_SC] — Lemma: Single-Crossing

**Statement:**
Under Assumptions A2 (SC) and A5 (A), the payoff differential
  ΔV(θ, θ*) ≡ V(h_H; θ, θ*) − V(h_L; θ, θ*)
is strictly increasing in θ for all θ* ∈ (0,∞).

**Formal statement:**
```latex
\begin{lemma}[Single-Crossing]
\label{lem:SC}
Under Assumptions \ref{A:SC} and \ref{A:A},
$\partial \Delta V / \partial \theta = B(h_H) > 0$ for all $\theta \geq 0$
and all $\theta^* \in (0,\infty)$.
\end{lemma}
```

**Required assumptions:** A2 (SC: B(h_H) > 0 and B(h_L) = 0); A5 (A: income does not enter μ)
**Expected proof technique:** Direct differentiation: ΔV = π(γ) + θ·B(h_H) + α[n(h_H,θ*) − n(h_L,θ*)] − (δ_H − δ_L); ∂ΔV/∂θ = B(h_H) > 0. Trivial.
**Proof difficulty:** EASY
**Novelty:** LOW (standard single-crossing; included for completeness)
**Role:** SUPPORTING

**Economic content:** Workers with higher θ (stronger Confucian norms, greater family pressure) have a larger private incentive to involute, independent of the aggregate involution rate. This justifies the threshold equilibrium concept.

---

### [P_E1] — Existence of Unique Threshold Equilibrium

**Statement:**
Under Assumptions A1 (continuous F with full support), A2 (SC), A3 (exogenous π), and A7 (binary h), there exists a unique Symmetric Threshold Nash Equilibrium threshold θ* ∈ (0,∞) satisfying the indifference condition:

  π(γ) + θ* · B(h_H) − α[n(h_L, θ*) − n(h_H, θ*)] − (δ_H − δ_L) = 0

**Formal statement:**
```latex
\begin{proposition}[Equilibrium Existence and Uniqueness]
\label{prop:existence}
Under Assumptions \ref{A:dist}--\ref{A:exog}~and~\ref{A:binary},
there exists a unique $\theta^* \in (0,\infty)$ such that
$\Delta V(\theta^*, \theta^*) = 0$. In the unique STNE,
worker $i$ involutes if and only if $\theta_i > \theta^*$.
\end{proposition}
```

**Required assumptions:** A1 (F continuous, full support), A2 (SC), A3 (exogenous π), A7 (binary h)
**Expected proof technique:**
(i) Note that ΔV(θ, θ*) is strictly increasing in θ (Lemma L_SC), so for each θ*, ΔV(·, θ*) has at most one zero.
(ii) ΔV is also continuous and strictly decreasing in θ* (because n(h_L, θ*) − n(h_H, θ*) is decreasing in θ* via L̄: higher θ* → more non-involuters → higher L̄ → higher μ for h_L workers → higher n for h_L workers relative to h_H workers → ΔV falls).
(iii) At θ* = 0: ΔV(θ*, θ*) = ΔV(0, 0) < 0 (since π − (δ_H − δ_L) + α[n(h_H, 0) − n(h_L, 0)] < 0 when universal involution reduces L̄ enough that even h_H workers match faster than in partial involution — this requires a boundary condition on parameters).
(iv) At θ* → ∞: ΔV(θ*, θ*) → +∞ (since θ* · B(h_H) → ∞).
(v) By the intermediate value theorem, a unique crossing exists.
**Proof difficulty:** MEDIUM
**Novelty:** MEDIUM (threshold equilibrium structure is standard; the application to the marriage market is novel)
**Role:** CORE

**Economic content:** An interior equilibrium always exists: some workers involute, some do not. The equilibrium threshold is uniquely determined by the balance between the wage premium and non-pecuniary benefit of involution (favoring h_H) and the fertility cost plus effort disutility (favoring h_L).

---

### [P_C1] — Comparative Statics: Threshold and Involution Rate in γ

**Statement:**
Under Assumptions A1–A3, A7, the equilibrium threshold θ* is strictly decreasing in the rat-race intensity parameter γ, and the equilibrium involution rate Φ* = 1 − F(θ*) is strictly increasing in γ:

  dθ*/dγ < 0   and   dΦ*/dγ > 0.

**Formal statement:**
```latex
\begin{proposition}[Comparative Statics in Rat-Race Intensity]
\label{prop:cs-gamma}
Under Assumptions \ref{A:dist}--\ref{A:exog}~and~\ref{A:binary},
the equilibrium threshold $\theta^*$ is strictly decreasing in $\gamma$,
and the equilibrium involution rate $\Phi^* = 1-F(\theta^*)$
is strictly increasing in $\gamma$:
\[
\frac{d\theta^*}{d\gamma} < 0 \quad \text{and} \quad \frac{d\Phi^*}{d\gamma} > 0.
\]
\end{proposition}
```

**Required assumptions:** A1, A2, A3, A7; plus π'(γ) > 0 (wage premium strictly increasing in γ)
**Expected proof technique:** Implicit function theorem applied to the indifference condition G(θ*, γ) ≡ ΔV(θ*, θ*) = 0. By the IFT: dθ*/dγ = −(∂G/∂γ)/(∂G/∂θ*). ∂G/∂γ = π'(γ) > 0 (exogenous premium increases in γ). ∂G/∂θ* < 0 (from the uniqueness proof above). Therefore dθ*/dγ = −π'(γ)/(∂G/∂θ*) < 0. QED.
**Proof difficulty:** EASY–MEDIUM (standard IFT application)
**Novelty:** HIGH (first application of this comparative statics to the involution/marriage market context)
**Role:** CORE

**Economic content:** Higher rat-race intensity lowers the equilibrium involution threshold, drawing more workers into over-work. This is the formal expression of the "involution spiral" narrative: intensification of competitive labor market pressure pushes more workers to involute, regardless of their individual norms or family circumstances.

---

### [P_C2] — Comparative Statics: Fertility in γ

**Statement:**
Under Assumptions A1–A5, A7, M1, the equilibrium aggregate expected fertility n* is strictly decreasing in γ:

  dn*/dγ < 0.

Furthermore, the effect operates through two margins: (i) the extensive margin (more involuters have lower ℓ_H → lower μ → lower n), and (ii) the aggregate leisure margin (higher Φ* → lower L̄ → lower μ for all agents via the thick-market externality):

  dn*/dγ = (dn*/dΦ*) · (dΦ*/dγ) < 0.

**Formal statement:**
```latex
\begin{proposition}[Fertility Decline in Rat-Race Intensity]
\label{prop:fertility}
Under Assumptions \ref{A:dist}--\ref{A:A}, \ref{A:binary},~and~\ref{A:M1},
the equilibrium aggregate expected fertility
$n^* = \int_0^{\infty} n(h(\theta), \theta^*) dF(\theta)$
is strictly decreasing in $\gamma$:
\[
\frac{dn^*}{d\gamma} = \frac{dn^*}{d\Phi^*} \cdot \frac{d\Phi^*}{d\gamma} < 0.
\]
The sign holds because (i) $d\Phi^*/d\gamma > 0$ (Proposition~\ref{prop:cs-gamma}),
(ii) $dn^*/d\Phi^* < 0$ under Assumption~\ref{A:M1}~($\partial\mu/\partial L̄ > 0$) and
Assumption~\ref{A:A} (leisure dominates income in the meeting rate).
\end{proposition}
```

**Required assumptions:** A1–A5, A7, M1
**Expected proof technique:**
(i) From P_C1: dΦ*/dγ > 0 (more involuters as γ rises).
(ii) Each additional involuter shifts from ℓ_L to ℓ_H < ℓ_L, reducing L̄ by Δℓ · f(θ*) per marginal involuter.
(iii) Lower L̄ → lower μ(ℓ_i, L̄) for all searchers (A4, M1: ∂μ/∂L̄ > 0).
(iv) Lower μ → higher E[T_match] → lower n (biological fertility clock A6).
(v) Under A5, income effects do not offset the leisure effect in μ.
Chain rule delivers dn*/dγ < 0.
**Proof difficulty:** MEDIUM
**Novelty:** HIGH (first formal proof that rat-race intensity depresses fertility via the marriage search channel)
**Role:** CORE

**Economic content:** Rising competitive labor market pressure mechanically reduces fertility not through the opportunity cost of child-rearing (the standard Becker channel) but through the leisure-compression/marriage-search channel: more over-work → thinner marriage market → later marriage → fewer children. This gives a novel theoretical foundation for the observed negative correlation between urban hours and fertility in China.

**Connection to prior literature (VERIFIED citations only):**
Links to Akerlof (1976) [rat-race; QJE 90(4)] for the source of over-work; to Mortensen (1988) [marriage search] for the meeting-rate mechanism; to Becker (1965) [time allocation; EJ 75(299)] for the time-vs-income trade-off.

---

### [P_W1] — Welfare: Suboptimality of Nash Threshold

**Statement:**
Under Assumptions A1–A4, A7, M1, the Nash equilibrium threshold θ* is strictly less than the social planner's optimal threshold θ^{SP}:

  θ* < θ^{SP},

and the equilibrium aggregate fertility n* is strictly below the social optimum n^{SP}:

  n* < n^{SP}.

The welfare gap ΔW = W^{SP}(θ^{SP}) − W^{SP}(θ*) > 0 is strictly positive and increasing in the rat-race intensity γ.

**Formal statement:**
```latex
\begin{proposition}[Welfare: Sub-optimal Involution]
\label{prop:welfare}
Under Assumptions \ref{A:dist}--\ref{A:M1}~and~\ref{A:binary},
\[
\theta^* < \theta^{SP}, \quad n^* < n^{SP}, \quad
\Delta W(\gamma) \equiv W^{SP}(\theta^{SP}) - W^{SP}(\theta^*) > 0,
\]
with $d\Delta W/d\gamma > 0$.
The source of the inefficiency is the cross-market search externality:
each involuting worker reduces $\bar{L}$ and thereby reduces the
meeting rate of all other searchers (via $\partial\mu/\partial\bar{L} > 0$),
but does not internalize this effect in their private involution decision.
\end{proposition}
```

**Required assumptions:** A1, A2, A3, A4, A7, M1 (note: A5 is NOT needed for this welfare result — the welfare gap exists even if income affects meeting rates, because the externality operates through L̄)
**Expected proof technique:**
(i) Social planner's FOC: evaluated at θ* (the Nash threshold), the social marginal benefit of raising the threshold by dθ̂ includes the externality term α · (∂n/∂L̄) · (∂L̄/∂θ̂) · (1/f(θ*)) > 0 (via A4/M1).
(ii) The Nash indifference condition (each worker sets this externality term to zero) implies the FOC for the individual is strictly less than the social FOC, confirming that the social planner would push the threshold higher.
(iii) Since W^{SP} is concave in θ̂ (concavity of μ, A4), θ^{SP} is the unique maximizer and θ* < θ^{SP}.
(iv) ΔW > 0 follows; ΔW increases in γ by composition with P_C1 (higher γ → lower θ* further from θ^{SP}).
**Proof difficulty:** MEDIUM
**Novelty:** HIGH (welfare result in a cross-market search externality setting is new; standard Hosios condition does not cover cross-market cases)
**Role:** CORE

**Economic content:** The competitive labor market rat-race generates an over-involution externality that propagates into the marriage market and produces a fertility shortfall relative to the social optimum. The paper is the first (to our knowledge) to formally characterize this cross-market welfare gap and show it widens with competitive intensity. This provides a formal theoretical basis for pronatalist labor-market policies.

---

### [P_M1] — Optimal Corrective Policy

**Statement:**
Under Assumptions A1–A4, A7, M1, the social planner can implement the first-best threshold θ^{SP} via a corrective overtime tax τ* > 0 on hours h_H, where:

  τ* = π(γ) − [π(γ) − α · (∂n/∂L̄)|_{L̄=L̄^{SP}} · Δℓ / f(θ^{SP})]

Equivalently, τ* equals the social marginal externality cost of a marginal involuter evaluated at the social optimum: τ* = α · (∂E[n]/∂L̄) · Δℓ / f(θ^{SP}) > 0.

The optimal tax is strictly increasing in γ (higher rat-race intensity requires a larger corrective tax), and decreasing in α (lower fertility weight in utility reduces the externality cost).

**Formal statement:**
```latex
\begin{proposition}[Optimal Corrective Policy]
\label{prop:policy}
Under Assumptions \ref{A:dist}--\ref{A:M1}~and~\ref{A:binary},
there exists a unique overtime tax $\tau^* > 0$ such that the
STNE under tax $\tau^*$ has threshold $\theta^*(\tau^*) = \theta^{SP}$.
The optimal tax equals the marginal search externality:
\[
\tau^* = \alpha \cdot \frac{\partial \mathbb{E}[n]}{\partial \bar{L}} \cdot
\frac{\Delta\ell}{f(\theta^{SP})} > 0,
\]
and satisfies $d\tau^*/d\gamma > 0$ and $d\tau^*/d\alpha > 0$.
\end{proposition}
```

**Required assumptions:** A1–A4, A7, M1 (does not require A5)
**Expected proof technique:** The tax τ shifts the indifference condition from ΔV(θ*, θ*) = 0 to ΔV(θ*, θ*) − τ = 0. Setting θ*(τ) = θ^{SP} uniquely determines τ* (since the threshold is continuous and monotone in τ). The formula for τ* follows from the social planner's FOC.
**Proof difficulty:** EASY
**Novelty:** MEDIUM (corrective tax for search externalities is standard; the cross-market application and the explicit formula linking τ* to the fertility externality are novel)
**Role:** CORE

**Economic content:** A Pigouvian overtime tax that equals the marginal social cost of each additional involuter (measured through their contribution to marriage market thinning and resulting fertility decline) restores the social optimum. The optimal tax is increasing in γ — when competition intensifies, the required corrective intervention grows. This provides a formal basis for regulating maximum working hours as a fertility policy.

---

### [P_U1] — Extension: Multiplicity and Tipping (relaxing A3)

**Statement:**
Suppose Assumption A3 is relaxed: let π = π(Φ; γ) with ∂π/∂Φ > 0 (wage premium increasing in involution rate — strategic complementarity). Then:

(a) The best-response map BR(θ*) may be non-monotone, and multiple STNE may exist.

(b) If ∂²π/∂Φ² = 0 (linear strategic complementarity) and π is sufficiently responsive to Φ (formally: ∂π/∂Φ > (δ_H − δ_L)/F'(θ*)), there exist at least two STNE: a low-θ* equilibrium (high involution, low fertility) and a high-θ* equilibrium (low involution, high fertility).

(c) The low-θ* equilibrium is stable under best-response dynamics; the high-θ* equilibrium is unstable. A sufficiently large policy intervention (τ > τ_c for some critical tax level) can cause the economy to "tip" from the low-θ* equilibrium to the high-θ* equilibrium.

**Formal statement:**
```latex
\begin{proposition}[Multiplicity and Tipping under Strategic Complementarity]
\label{prop:tipping}
Suppose $\pi = \pi(\Phi; \gamma)$ with $\partial\pi/\partial\Phi > 0$.
If $\partial\pi/\partial\Phi \cdot f(\theta^*) > B(h_H) \cdot f(\theta^*)$
[sufficient condition for non-monotone BR], then there exist at least
two STNE $\theta_1^* < \theta_2^*$. The low threshold $\theta_1^*$
is stable under best-response dynamics; $\theta_2^*$ is unstable.
A policy that reduces the effective wage premium to involution by $\tau > \tau_c$
implements a jump from $\theta_1^*$ to a stable equilibrium $\theta_3^* > \theta_2^*$.
\end{proposition}
```

**Required assumptions:** A1, A2, A7, M1; A3 RELAXED (endogenous π)
**Expected proof technique:** Fixed-point analysis of the best-response map BR(θ*) under the modified indifference condition. Multiplicity follows when BR is non-monotone (the curve ΔV(θ*, θ*(π)) = 0 has multiple crossings). Stability follows from the derivative of BR at each fixed point.
**Proof difficulty:** HARD
**Novelty:** HIGH (the tipping result in the cross-market context with demographic implications is new)
**Role:** EXTENSION (presented after the main propositions)

**Economic content:** If the wage premium to involution rises with the share of involuters (plausible in contexts where long hours have become a social norm), the economy can become "trapped" in a universal-involution equilibrium with very low fertility. A large enough policy shock can shift the economy to a better equilibrium — a "demographic trap" escape result with direct policy relevance for China.

---

### [P_B1] — Boundary / Limit Results

**Statement:**
Under Assumptions A1–A3, A7:

(a) As γ → 0 (no rat-race pressure): θ* → θ̄ ≡ (δ_H − δ_L)/B(h_H) > 0. At this limit, only workers with sufficiently high duty norms or family pressure (θ > θ̄) involute; the involution rate is Φ* = 1 − F(θ̄) < 1.

(b) As γ → ∞ (extreme rat-race pressure): θ* → 0 and Φ* → 1. In the limit, all workers involute regardless of their type.

(c) At γ = γ_0 (defined by π(γ_0) = (δ_H − δ_L) − α·[n(h_L, 0) − n(h_H, 0)]): the equilibrium shifts from partial involution (θ* > 0) to universal involution (θ* = 0, Φ* = 1). γ_0 is the "tipping point" in the baseline model (without strategic complementarity).

**Required assumptions:** A1, A2, A3, A7
**Expected proof technique:** Evaluate the indifference condition at θ* = 0 and θ* → ∞; apply limits to π(γ).
**Proof difficulty:** EASY
**Novelty:** LOW (boundary results are standard; included for completeness and policy narrative)
**Role:** SUPPORTING

**Economic content:** The model predicts that in the absence of competitive pressure, some workers involute for cultural/family reasons — but this natural rate of involution is below the socially harmful level. The boundary results delimit the range of γ for which the model generates interior solutions and policy-relevant fertility effects.

---

## Connection to Prior Literature (Verified Citations Only)

The following citations are used in the connection statements above and have been web-verified in this session:

- Akerlof (1976): "The Economics of Caste and of the Rat Race and Other Woeful Tales." *QJE* 90(4), 599–617.
- Becker (1965): "A Theory of the Allocation of Time." *EJ* 75(299), 493–517.
- Mortensen (1988): "Matching: Finding a Partner for Life or Otherwise." *AJS* 94 (supplement), S215–S240.
- Hosios (1990): "On the Efficiency of Matching and Related Models of Search and Unemployment." *REStud* 57(2), 279–298.

Do NOT cite these papers in manuscript sections for specific results without re-checking the specific relevant content of each paper against the result being cited.

---

## What the Model CANNOT Establish

The following claims are out of scope and should not be made in the manuscript:

1. **Empirical calibration**: The model cannot quantify the fertility gap Δn in absolute terms without calibration to Chinese data. The propositions are qualitative (sign results), not quantitative.
2. **Individual-level predictions**: The model predicts aggregate outcomes (n*, Φ*) under distributional assumptions; it cannot predict whether any specific worker involutes or how many children they have.
3. **Dynamic path**: The model is static (two periods). It cannot characterize the *speed* at which the economy transitions from a high-involution equilibrium to a low-involution equilibrium under policy.
4. **Gender-specific predictions**: The baseline model is symmetric; it cannot predict differential effects for men vs. women without the two-sided extension (P_U1 extension).
5. **Causation from involution to fertility in the data**: The model is theoretical. The propositions concern comparative statics in a model, not causal identification in observational data.

---

## Contribution Assessment

**Core propositions count:** 5 (P_E1, P_C1, P_C2, P_W1, P_M1)
**Extension propositions count:** 1 (P_U1)
**Supporting:** 2 (L_SC, P_B1)

**Overall strength of contribution:** MODERATE–STRONG

The five core propositions constitute a coherent set of results: existence → comparative statics → fertility decline → welfare gap → optimal policy. Each proposition adds a distinct layer of insight, and the chain is internally consistent. The welfare result (P_W1) and the fertility-comparative-statics result (P_C2) are the most novel. The policy result (P_M1) is the most policy-relevant. Together, these constitute a publishable contribution at the AEJ:Micro / JET level, with potential for REStud/QJE if the tipping extension (P_U1) is fully proved.

**What would strengthen the contribution:**
- Completing the proof of P_U1 (multiplicity / tipping) — this is the highest-upside result
- A Corollary to P_M1 comparing the effectiveness of τ (overtime tax) vs. norm-shift (reducing the Confucian component of θ distribution) — novel policy comparison not in any existing paper
- A Lemma establishing the sufficient condition under which the income effect (A5) can be relaxed — would make A5 a quantitative condition rather than a qualitative assumption
