# Counterexamples and Edge Cases

**Date:** 2026-06-23
**Stage:** 8 — Counterexample Finder

Three items flagged by Gate 4 (W1, W2, W3) plus additional robustness checks.

---

## EC1 — P3 Elasticity Bound: When Does $\partial\bar{p}/\partial\lambda < 0$ Fail?

**Gate 4 flag W1:** The IFT proof of P3 requires $\partial G/\partial p|_{\bar{p}} > 0$, i.e., the originator's profit is increasing at the lower threshold. This requires $\varepsilon((1-\lambda)\bar{p}) < \bar{p}/(\bar{p}-c_o)$.

**Counterexample attempt.**

Consider demand with very high elasticity at $\bar{p}$: take $D(s) = A \cdot \exp(-\kappa s)$ (exponential demand, $\varepsilon(s) = \kappa s$).

At the threshold $\bar{p}$: $\varepsilon((1-\lambda)\bar{p}) = \kappa(1-\lambda)\bar{p}$.

The IFT denominator condition requires: $\kappa(1-\lambda)\bar{p} < \bar{p}/(\bar{p}-c_o)$, i.e., $\kappa(1-\lambda)(\bar{p}-c_o) < 1$.

**Violation case:** If $\kappa$ is very large (very elastic exponential demand), $\kappa(1-\lambda)(\bar{p}-c_o) > 1$, and the denominator $\partial G/\partial p|_{\bar{p}} < 0$. In this case, $\bar{p}$ is NOT the lower threshold — it is the upper threshold (decreasing arm of profit). The IFT gives $\partial\bar{p}/\partial\lambda > 0$ (wrong sign) for this upper root.

**Resolution:** The violation occurs only when $\bar{p}$ is the UPPER participation threshold (on the decreasing arm of the profit function). For VBP analysis, the relevant threshold is always the lower one (VBP drives prices DOWN; the concern is that prices fall below the minimum sustainable price). For the lower threshold, single-peakedness (H2) guarantees $\partial G/\partial p|_{\bar{p}} > 0$ by construction — the lower root is always on the increasing arm.

**Conclusion:** P3 is robust. The apparent counterexample is not a counterexample to P3 but a reminder that for the upper threshold (above the profit-maximizing price), the sign reverses. The paper should clarify that $\bar{p}$ refers to the lower threshold throughout.

**Implication for the manuscript:** Add one sentence in the proof: "Since $\bar{p}$ is the lower participation threshold (profit increasing at $\bar{p}$; see P2), $\partial G/\partial p|_{\bar{p}} > 0$ is guaranteed by single-peakedness."

---

## EC2 — Sign of $\Omega(\lambda)$: Does Generous Insurance Make Variety Preservation More Likely?

**Gate 4 flag W2:** $\Omega(\lambda) = NV_o - F - N(c_o - c_g) D((1-\lambda)\bar{p}(\lambda))$. How does $\Omega$ vary with $\lambda$?

**Computation of $d\Omega/d\lambda$:**

$$\frac{d\Omega}{d\lambda} = -N(c_o-c_g) \frac{d}{d\lambda}\left[D((1-\lambda)\bar{p}(\lambda))\right]$$

Let $\sigma(\lambda) = (1-\lambda)\bar{p}(\lambda)$ (the OOP price at the threshold). Then:

$$\frac{d\sigma}{d\lambda} = -\bar{p}(\lambda) + (1-\lambda)\frac{\partial\bar{p}}{\partial\lambda} = -\bar{p} + (1-\lambda) \cdot \frac{\partial\bar{p}}{\partial\lambda}$$

Since $\partial\bar{p}/\partial\lambda < 0$ (P3), both terms are negative:
$$\frac{d\sigma}{d\lambda} = -\bar{p} + (1-\lambda)\underbrace{(\partial\bar{p}/\partial\lambda)}_{< 0} < 0$$

So $\sigma(\lambda)$ is strictly decreasing in $\lambda$: higher insurance reduces the OOP price at the threshold.

Therefore: $D(\sigma(\lambda))$ is increasing in $\lambda$ (since $D' < 0$ and $\sigma$ decreases as $\lambda$ increases, so $D(\sigma)$ increases).

$$\frac{d\Omega}{d\lambda} = -N(c_o-c_g)\underbrace{D'(\sigma)\frac{d\sigma}{d\lambda}}_{> 0 \text{ (since }D' < 0, d\sigma/d\lambda < 0\text{)}} < 0$$

**Result:** $\Omega(\lambda)$ is **strictly decreasing** in $\lambda$.

**Interpretation:** More generous insurance lowers the OOP threshold price $\sigma$, which increases demand at the threshold $D(\sigma)$, which INCREASES the supply-cost penalty term $N(c_o-c_g)D(\sigma)$, which DECREASES $\Omega$. 

**Paradox:** Higher $\lambda$ makes originator entry LESS welfare-beneficial (reduces $\Omega$). This is because higher insurance raises demand at $\bar{p}$, and the originator serves this demand at higher cost $c_o > c_g$, imposing a larger supply-cost penalty on welfare. So more generous insurance does NOT make variety preservation more desirable — it makes it less so (from the supply-cost side).

**However,** higher $\lambda$ also lowers $\bar{p}$ (P3), making originator participation available at a lower price. So there is a trade-off:
- P3: higher $\lambda$ → lower $\bar{p}$ → originator can be kept at lower VBP prices (good: larger feasible range for originator participation).
- EC2: higher $\lambda$ → lower $\Omega$ → originator variety is less welfare-valuable at the threshold.

The paper should acknowledge both effects. The net effect on whether the social optimum involves originator participation depends on which dominates.

**Implication for the manuscript:** Add a remark: "Although higher insurance generosity lowers the exit threshold (P3), it also reduces the net variety premium $\Omega$ at the threshold. The two effects work in opposite directions: generous insurance makes aggressive VBP sustainable but also makes originator variety less welfare-valuable. Policy design must balance these competing forces."

---

## EC3 — Knife-Edge: $p^{SB}_o = \bar{p}$ (Social Optimum at the Participation Threshold)

**Gate 4 flag W3:** What happens when the interior optimum $p^{SB}_o = c_o/(1-\lambda)$ exactly coincides with the participation threshold $\bar{p}$?

**Setup:** Suppose $c_o/(1-\lambda) = \bar{p}$, i.e., $\bar{p}(1-\lambda) = c_o$.

**Left derivative of $W$ at $\bar{p}$:**

On the generic piece ($p < \bar{p}$, $c(p) = c_g$):
$$\frac{dW}{dp}\bigg|_{\bar{p}^-} = N(1-\lambda)D'(s)\left[s - c_g\right]\bigg|_{s=(1-\lambda)\bar{p}}$$

At $\bar{p}$: $s = (1-\lambda)\bar{p} = c_o > c_g$. So $[s - c_g] = c_o - c_g > 0$ and $D'(s) < 0$:
$$\frac{dW}{dp}\bigg|_{\bar{p}^-} = N(1-\lambda) \cdot D'(c_o) \cdot (c_o - c_g) < 0$$

**Right derivative of $W$ at $\bar{p}$:**

On the originator piece ($p \geq \bar{p}$, $c(p) = c_o$):
$$\frac{dW}{dp}\bigg|_{\bar{p}^+} = N(1-\lambda)D'(s)\left[s - c_o\right]\bigg|_{s=(1-\lambda)\bar{p} = c_o} = 0$$

**Subdifferential analysis:**

At $p = \bar{p}$: the left derivative is negative (welfare is decreasing as $p$ approaches $\bar{p}$ from below) and the right derivative is zero (welfare is at its interior maximum on the originator piece). Combined with the welfare jump $\Omega$ at the kink:

- If $\Omega > 0$: $W(\bar{p}^+) > W(\bar{p}^-)$, and the right derivative is 0. The global optimum is exactly $p^{SB} = \bar{p} = p^{SB}_o$ — interior optimum coincides with kink, and welfare is higher on the originator side.
- If $\Omega < 0$: $W(\bar{p}^+) < W(\bar{p}^-)$. The optimum on the generic piece requires minimizing (going below $\bar{p}$), but the left derivative at $\bar{p}^-$ is negative (welfare is still decreasing approaching $\bar{p}$). The optimum on the generic piece is $p^{SB}_g = c_g/(1-\lambda) < \bar{p}$.
- If $\Omega = 0$: $W$ is continuous at $\bar{p}$, right derivative is 0. The global maximum is $p = \bar{p}$ with a one-sided saddle.

**Conclusion:** The knife-edge case $p^{SB}_o = \bar{p}$ is well-defined and the second-best is still characterized by P5's piecewise comparison. No pathology arises; the case is a special instance of Regime A (at the boundary).

**Implication:** No change to P5 needed. The knife-edge is included within the Regime A analysis.

---

## EC4 — Originator Market Share $\beta < 1$ (Robustness Check on A7)

**Concern (from Assumption Audit A7):** Stage 5 flagged $\beta = 1$ as a referee-risk assumption. What happens if the originator captures only fraction $\beta \in (0,1)$ of the market?

**Modified participation constraint:** $\Pi_O(\beta, p) = (p - c_o) \cdot \beta N \cdot D((1-\lambda)p) - F \geq 0$.

**Modified threshold:** $\bar{p}(\beta)$ satisfies $({\bar{p}} - c_o) \cdot \beta N \cdot D((1-\lambda)\bar{p}) = F$.

**Monotonicity in $\beta$:** $\partial\bar{p}/\partial\beta < 0$. Lower market share $\to$ higher exit threshold.

**P3 robustness:** $\partial\bar{p}/\partial\lambda < 0$ still holds for any fixed $\beta$ (the IFT proof is unchanged; $\beta$ enters as a multiplicative constant and doesn't affect the sign of the derivatives). The counterintuitive comparative statics result is preserved.

**P4 robustness:** The welfare kink at $\bar{p}(\beta)$ still exists. The jump magnitude $\Omega$ now uses $\bar{p}(\beta)$:
$$\Omega(\beta) = NV_o - F - N(c_o - c_g)D((1-\lambda)\bar{p}(\beta))$$

Since $\bar{p}(\beta)$ is higher when $\beta$ is lower, $D((1-\lambda)\bar{p}(\beta))$ is lower (demand is evaluated at a higher price). So $\Omega$ may be larger (less supply-cost penalty) when originator market share is smaller. This is a nontrivial interaction.

**Conclusion:** All main propositions (P2, P3, P4, P5, P6) hold qualitatively for any $\beta \in (0,1)$ under mild conditions. The $\beta = 1$ baseline is without loss of generality for the qualitative results.

---

## EC5 — Existence of $\hat{p}$ (Tipping Price from P1)

**Concern:** P1 defines $\hat{p}$ by $\varepsilon((1-\lambda)\hat{p}) = 1$. Does such a price always exist in $[c_g, \infty)$?

**Conditions for existence:**
- If $\varepsilon(s) < 1$ for all $s > 0$ (everywhere inelastic, e.g., $D(s) = A e^{-\kappa s}$ with $\kappa s < 1$): no tipping price; expenditure always decreasing as $p$ rises. Insurer always prefers lower $p$.
- If $\varepsilon(s) > 1$ for all $s > 0$ (everywhere elastic): no tipping price; expenditure always decreasing as $p$ falls. Insurer prefers higher $p$.
- If $\varepsilon$ is continuous and crosses 1 (as for linear demand): unique $\hat{p}$ exists.

**Conclusion:** The tipping price $\hat{p}$ may not exist for constant-elasticity demand. P1 should be stated conditionally: "If $\varepsilon$ crosses 1, there exists a tipping price $\hat{p}$..." For constant-elasticity demand, the expenditure is monotone (no kink in the expenditure-minimization problem). The main result of P1 (the sign of $dE_I/dp$ depends on $\varepsilon$) holds unconditionally.

---

## EC6 — Welfare at $c_g/(1-\lambda)$ vs $\bar{p}$: When Is Variety-Preserving VBP Globally Optimal?

**Question:** Under what conditions is the global second-best $p^{SB} = c_o/(1-\lambda)$ (variety-preserving, moral hazard corrected with originator) vs $p^{SB} = c_g/(1-\lambda)$ (generic-only, moral hazard corrected)?

**Welfare comparison:**

$W(p^{SB}_o) = N[U(D(c_o)) - c_o D(c_o)] - F + NV_o$ (on originator piece, DWL = 0)
$W(p^{SB}_g) = N[U(D(c_g)) - c_g D(c_g)]$ (on generic piece, DWL = 0)

Difference:
$$W(p^{SB}_o) - W(p^{SB}_g) = N\left[U(D(c_o)) - c_o D(c_o) - U(D(c_g)) + c_g D(c_g)\right] - F + NV_o$$

Since $c_g < c_o$, $D(c_o) < D(c_g)$ (originator price is higher, demand lower). The first bracket is negative (social surplus is higher with lower-cost generic supply and associated higher efficient demand). So:

$$W(p^{SB}_o) > W(p^{SB}_g) \quad \Leftrightarrow \quad NV_o > F + N\left[\underbrace{U(D(c_g)) - c_g D(c_g) - U(D(c_o)) + c_o D(c_o)}_{\text{generic surplus advantage} \geq 0}\right]$$

The right side is $F$ plus the social surplus gain from using generic supply (which is nonnegative). So the condition is stricter than $NV_o > F$: the variety benefit must exceed both the originator's fixed cost AND the allocative efficiency loss from higher originator cost. This is the EC1 analog at the global optimum level.

**Policy implication:** Originator-variety-preserving VBP is globally optimal only if $V_o$ is large enough to overcome both the fixed cost and the allocative cost of switching from generic to originator supply. Empirically, for many generically equivalent drugs (GQCE-certified), $V_o$ may be small, making generic-only supply the global optimum.

---

## Summary of Counterexample Findings

| Item | Proposition Affected | Finding | Action |
|------|---------------------|---------|--------|
| EC1 | P3 | Counterexample only applies to upper threshold (irrelevant for VBP); P3 robust | Add clarifying sentence in P3 proof |
| EC2 | P4 | $\Omega$ decreasing in $\lambda$: generous insurance reduces variety welfare value at threshold | Add remark to Section 5/P4 |
| EC3 | P5 | Knife-edge $p^{SB}_o = \bar{p}$ is well-defined; no pathology | No change needed |
| EC4 | A7 ($\beta$) | All main propositions qualitatively robust to $\beta < 1$ | Note in paper; robustness footnote |
| EC5 | P1 | Tipping price may not exist for constant-elasticity demand; P1 sign result holds unconditionally | Condition the tipping-price discussion |
| EC6 | P5 | Global variety-preserving condition strictly harder than $\Omega > 0$ | Note in welfare comparison discussion |

**No proposition is overturned.** All counterexample attempts either (a) apply to a boundary case already handled, (b) reveal a nuance to be noted in the manuscript, or (c) confirm robustness.

---

# Stage 8 Addendum — Numerical Handoff Triage (Stage 7b)

**Date:** 2026-07-03
**Trigger:** Gate 4b CONDITIONAL PASS [MAJOR]; handoff block in `numerical_simulation_report.md`; researcher's HiL-N3 preference: WEAKEN P2 (restrict domain).

## Attempt 9a: Bounded participation set — linear-demand baseline (N-CE1)

**Numerical finding:** At the linear baseline (a=10, b=1, λ=0.7, c_o=2, F=0.5, N=1), Π_O(p)=0 has two roots: p̄_low = 2.0533, p̄_high = 33.2801. For p > p̄_high, p ≥ p̄ holds but Π_O(p) < 0 — the "⇐" direction of P2's biconditional fails. A1–A4 and H2's log-concavity sufficient condition all hold.

**Analytical verification:** Π_O(p) = (p−2)(10−0.3p) − 0.5 = 0 ⇔ 0.3p² − 10.6p + 20.5 = 0 ⇔ p = (10.6 ± √87.76)/0.6 = {2.0533, 33.2801}. Exact match with the numerics — the finding is real, not an artifact.

**Diagnosis:** PROPOSITION-DOMAIN ISSUE. Not a coding error (closed form reproduces the roots); not a solver error (root-finder converged; brentq on sign changes); not a parameter issue (A1–A4 verified: peak variable profit 73.63 ≫ F); not an assumption failure in H2 itself — single-peakedness holds; the flawed step is the *inference* "single-peaked variable profit ⇒ participation set = [p̄, ∞)". Single-peakedness implies a unique crossing on the **increasing arm only**. Any demand reaching zero at a choke price (linear) or collapsing fast enough (CES ε₀ > 1) produces a second crossing on the decreasing arm. This is the formal, quantified version of the "upper threshold" already glimpsed in EC1.

**Restricted-domain claim (formalization of the fix):** Let $p_O^{\max} = \arg\max_p (p-c_o) N D((1-\lambda)p)$ (the peak of variable profit; identical to the profit-maximizing price since $F$ is constant). Under A1–A4 and H2, variable profit is strictly increasing on $(c_o, p_O^{\max})$, so $\Pi_O$ crosses zero exactly once there; A4 guarantees the crossing exists. Hence:

> **P2′ (revised).** Under A1–A4 and H2, there exists a unique $\bar{p} \in (c_o, p_O^{\max})$ such that **for all $p \in [c_g, p_O^{\max}]$**: $\Pi_O(p) \geq 0 \Leftrightarrow p \geq \bar{p}$. (Outside this domain, participation also fails for $p$ large enough that demand collapse pushes variable profit back below $F$; the VBP-relevant price range lies below $p_O^{\max}$ by construction, since VBP compresses prices downward from the pre-VBP level.)

**Verification of P2′ on both T2 families:** linear: p̄_low = 2.0533 < p_O^max = 17.667 < p̄_high = 33.28 ✓; CES ε₀=2: p̄_low = 2.222 < p_O^max = ε₀c_o/(ε₀−1) = 4 < p̄_high = 20 ✓. In both cases the second root lies strictly outside the restricted domain, and the biconditional holds on it.

**Recommended resolution: WEAKEN (restrict domain)** — matches the researcher's HiL-N3 preference. RETAIN would leave a false biconditional; SPLIT INTO REGIMES (interval statement) is correct but heavier than needed since the upper root is economically irrelevant for VBP; DROP is unwarranted (P2′ is fully proved).

**Downstream impact:** P3 unaffected (lower threshold; EC1's clarifying sentence already requires "p̄ is the lower threshold"). P4/P5 use the indicator 1[p ≥ p̄], which is correct on the restricted domain; the welfare function's domain statement should carry the same restriction. The Stage-10 block on the original P2 is lifted once P2′ replaces it.

## Attempt 9b: CES bounded-participation scan (N-CE2, 180 combinations)

**Diagnosis:** Same PROPOSITION-DOMAIN ISSUE as 9a. Note: CES demand violates H2's log-concavity *sufficient condition* but satisfies H2's actual content (single-peaked variable profit, peak at ε₀c_o/(ε₀−1)); hence these cases are covered by P2′ with no further assumptions.

## Attempt 9c: P6 wedge reversal for ε₀ ≥ 1 (21/28 scanned values)

**Diagnosis:** PROPOSITION-DOMAIN ISSUE (scope statement, not an error). P6's headline sign ("insurer sets price too low") is its Case 1, stated for inelastic essential-drug demand; P6's own Case 2 already documents the elastic reversal. **Resolution: RETAIN**, with an explicit scope sentence in the manuscript wherever the wedge sign is asserted.

## Updated Summary of Counterexample Findings

| Item | Proposition Affected | Finding | Action |
|------|---------------------|---------|--------|
| N-CE1 | P2 | Biconditional fails for p > p̄_high within stated assumptions (linear baseline; verified in closed form) | **Replace P2 with P2′ (domain restricted to [c_g, p_O^max]); add upper-boundary remark** |
| N-CE2 | P2 | 180 CES analogues (single-peakedness holds; log-concavity does not) | Covered by P2′ |
| N-CE3 | P6 | Wedge sign reverses for ε₀ ≥ 1 (matches P6 Case 2) | Retain; add scope sentence |

**One proposition revised (P2 → P2′); no proposition dropped.** Stage-10 block on the original P2 lifts upon adoption of P2′ at HiL-6.
