# Candidate Propositions

**Date:** 2026-06-23
**Stage:** 6 — Proposition Generator
**Council directive:** Primary result = ΔW at exit threshold p̄; Secondary = ∂p̄/∂λ < 0; Tertiary = insurer-planner wedge.

---

## Standing Assumptions

The following assumptions are in force throughout all propositions unless otherwise noted.

**A1 (Demand regularity):** $D: \mathbb{R}_+ \to \mathbb{R}_+$ is $C^2$, strictly decreasing ($D' < 0$), and weakly convex ($D'' \leq 0$). $U'(D(s)) = s$ (demand is the inverse of marginal utility).

**A2 (Fixed coinsurance):** $\lambda \in (0,1)$ is an exogenous parameter; not a choice variable in the baseline model.

**A3 (Originator fixed cost):** The originator has strictly positive fixed costs $F > 0$ and marginal cost $c_o > c_g > 0$.

**A4 (Market viability):** $\max_{p \geq c_g}(p - c_o) \cdot N \cdot D((1-\lambda)p) > F$. The originator's variable profit can cover fixed costs at some price.

**H1 (Tie-breaking):** At $p = \bar{p}$, the originator participates (participates when indifferent).

**H2 (Unique threshold):** The originator's variable profit $(p - c_o) \cdot N \cdot D((1-\lambda)p)$ is single-peaked in $p$, so $\bar{p}$ is uniquely defined. Sufficient condition: demand is log-concave (includes linear and log-linear demand).

**Notation fix (correction from Stage 4):** The insurer's cost-minimizing FOC at an interior solution satisfies $\varepsilon((1-\lambda)p^{cost*}) = 1$, where $\varepsilon(s) = -s D'(s)/D(s)$ is the demand elasticity at OOP price $s$. The Stage 4 manuscript stated $|\varepsilon| = 1/(1-\lambda)$; this was a derivation error arising from failing to substitute $s = (1-\lambda)p$ in the expression $p \cdot (1-\lambda) \cdot D'(s)/D(s) = -\varepsilon(s)$. The correct unit-elastic condition is $\varepsilon(s^*) = 1$, equivalent to the standard revenue-maximization condition on the OOP-price demand curve. This correction does not change the qualitative insurer-planner comparison (see P6 below).

---

## Proposition 1 — Expenditure Tipping Effect

**Label:** P1 (Expenditure Tipping Effect — Moral Hazard Amplification)
**Type:** Comparative statics lemma (sign reversal)
**Council direction:** Supporting result for P4 and P6.

**Statement:**

Define the insurer's expenditure function $E_I(p) = \lambda \cdot p \cdot N \cdot D((1-\lambda)p)$ and the OOP price $s(p) = (1-\lambda)p$. Then:

$$\frac{dE_I}{dp} = \lambda N D(s) \cdot [1 - \varepsilon(s)] \quad \text{where } s = (1-\lambda)p$$

**Tipping price:** Define $\hat{p}$ implicitly by $\varepsilon((1-\lambda)\hat{p}) = 1$ (unit-elastic OOP price). Then:

(i) For $p > \hat{p}$ (inelastic range, $\varepsilon < 1$): $dE_I/dp > 0$. A VBP price reduction (lower $p$) **reduces** insurance expenditure. The per-unit cost savings dominate the demand amplification.

(ii) For $p < \hat{p}$ (elastic range, $\varepsilon > 1$): $dE_I/dp < 0$. A VBP price reduction **raises** insurance expenditure. The moral hazard amplification effect dominates: demand rises faster than the per-unit cost falls.

**Corollary (Expenditure-increasing VBP):** If the VBP price crosses $\hat{p}$ from above, the insurer paradoxically experiences rising total drug expenditure despite per-unit procurement prices falling. This is the expenditure analog of the Lerner condition.

**Proof sketch:** Differentiate directly:
$$\frac{dE_I}{dp} = \lambda N \left[D(s) + p(1-\lambda)D'(s)\right] = \lambda N D(s)\left[1 + \frac{(1-\lambda)p \cdot D'(s)}{D(s)}\right] = \lambda N D(s)\left[1 - \varepsilon(s)\right]$$
where the last step uses $s = (1-\lambda)p$ so $(1-\lambda)p \cdot D'(s)/D(s) = s \cdot D'(s)/D(s) = -\varepsilon(s)$. Sign follows from $D(s) > 0$ and the sign of $[1 - \varepsilon(s)]$. $\square$

**Binding assumptions:** A1 (differentiability of $D$).
**Novelty:** Reframes the moral hazard amplification as a price-elasticity condition on the OOP demand curve, providing a clean empirical test (is $\varepsilon > 1$ at current procurement prices?) for whether VBP raises or lowers insurance expenditure.

---

## Proposition 2 — Existence and Uniqueness of Originator Exit Threshold

**Label:** P2 (Participation Threshold — Existence, Uniqueness, Properties)
**Type:** Existence proposition
**Council direction:** Foundation for P3 and P4.

**Statement (P2′ — revised 2026-07-03 after Stage 7b numerical counterexample; see counterexamples_and_edge_cases.md, Attempt 9a):**

Under A1–A4 and H2, there exists a unique threshold $\bar{p} \in (c_o, p_O^{\max})$ such that **for all $p \in [c_g, p_O^{\max}]$** (where $p_O^{\max}$ is the peak of the originator's variable profit):

$$\Pi_O(p) = (p - c_o) \cdot N \cdot D((1-\lambda)p) - F \geq 0 \quad \Leftrightarrow \quad p \geq \bar{p}$$

*Domain remark:* the biconditional does NOT extend to $[c_g, \infty)$ — participation also fails on the decreasing arm of variable profit ($p > \bar{p}_{high}$, e.g., $\bar{p}_{high} = 33.28$ at the linear baseline vs. $p_O^{\max} = 17.67$). The VBP-relevant price range lies below $p_O^{\max}$, since VBP compresses prices downward from the pre-VBP level.

**Original (superseded) statement:** unique $\bar{p} \in (c_o, \infty)$ with $\Pi_O(p) \geq 0 \Leftrightarrow p \geq \bar{p}$ — falsified within stated assumptions by the Stage 7b counterexample (Gate 4b CONDITIONAL PASS [MAJOR]); blocked from Stage 10 in that form.

with tie-breaking by H1 (participation at $p = \bar{p}$). The threshold $\bar{p}$ is implicitly defined by:

$$({\bar{p}} - c_o) \cdot N \cdot D((1-\lambda)\bar{p}) = F$$

**Properties:**
(a) $\bar{p} > c_o$: the threshold strictly exceeds the originator's marginal cost (since $\Pi_O(c_o) = -F < 0$).
(b) $\bar{p} < p_O^{\max}$: the threshold is below the profit-maximizing originator price (since $\Pi_O(p_O^{\max}) > F$ by A4 and profit is increasing at $\bar{p}$).
(c) $\bar{p}$ is decreasing in $N$ (larger market $\to$ lower threshold) and increasing in $F$ (higher fixed costs $\to$ higher threshold). [Formal proofs via IFT; see Stage 7.]

**For linear demand** $D(s) = a - bs$ (a sufficient condition for A1, H2):
$$\bar{p} = \frac{c_o}{2} + \frac{a}{2b(1-\lambda)} - \frac{1}{2}\sqrt{\left(\frac{a}{b(1-\lambda)} - c_o\right)^2 - \frac{4F}{Nb(1-\lambda)}}$$
(smaller root of the quadratic in $p$). Existence requires $N b(1-\lambda)(a/b(1-\lambda) - c_o)^2/4 > F$ (the A4 condition in closed form).

**Proof sketch:** $\Pi_O(c_o) = -F < 0$ and $\Pi_O(p_O^{\max}) > 0$ by A4. Continuity of $\Pi_O$ (from A1) + IVT gives existence of $\bar{p}$ in $(c_o, p_O^{\max})$. Single-peakedness (H2) gives uniqueness: at the lower root, profit is increasing, so only one root on $(c_o, p_O^{\max})$. $\square$

**Binding assumptions:** A1 (continuity), A3 ($F > 0$, so $\Pi_O(c_o) < 0$), A4 (viability).

---

## Proposition 3 — Counterintuitive Comparative Statics (Insurance–Exit Threshold)

**Label:** P3 (Insurance–Exit Threshold Complementarity) ★ SECONDARY KEY RESULT
**Type:** Comparative statics (IFT)
**Council direction:** Secondary key result; must be proved rigorously in Stage 7.

**Statement:**

Under A1–A4 and H2, the originator exit threshold $\bar{p}$ is **strictly decreasing** in the insurance generosity $\lambda$:

$$\frac{\partial \bar{p}}{\partial \lambda} < 0$$

**Interpretation:** More generous public insurance (higher $\lambda$, i.e., lower patient OOP share) **lowers** the VBP price below which the originator exits. Equivalently: under a more generous BMI reimbursement scheme, the insurer can set a lower VBP price without triggering originator withdrawal.

**Mechanism:** Higher $\lambda$ reduces OOP price $(1-\lambda)\bar{p}$ at any given $\bar{p}$, which increases patient demand $D((1-\lambda)\bar{p})$. This raises the originator's variable profit at price $\bar{p}$, allowing the fixed cost $F$ to be recovered at a lower price. Formally, insurance generosity and originator participation are **complements**, not substitutes.

**Policy implication (counterintuitive):** Policymakers sometimes fear that generous insurance weakens the case for aggressive VBP (because insured patients are less price-sensitive). P3 shows the opposite: generous insurance enables MORE aggressive VBP (lower prices) without triggering originator exit. The two instruments are complementary.

**Proof sketch (Implicit Function Theorem):**

Define $G(p, \lambda) \equiv (p - c_o) \cdot N \cdot D((1-\lambda)p) - F = 0$ at $(p, \lambda) = (\bar{p}, \lambda)$.

By IFT: $\frac{\partial\bar{p}}{\partial\lambda} = -\frac{\partial G/\partial\lambda}{\partial G/\partial p}\bigg|_{(\bar{p},\lambda)}$

**Numerator** ($\partial G/\partial\lambda$):
$$\frac{\partial G}{\partial\lambda} = (\bar{p} - c_o) \cdot N \cdot D'((1-\lambda)\bar{p}) \cdot (-\bar{p}) = -(\bar{p}-c_o) \cdot N \cdot \bar{p} \cdot D'((1-\lambda)\bar{p}) > 0$$
(positive since $D' < 0$, $\bar{p} > c_o$).

**Denominator** ($\partial G/\partial p$ at $p = \bar{p}$):
$$\frac{\partial G}{\partial p}\bigg|_{\bar{p}} = N \cdot D((1-\lambda)\bar{p}) + (\bar{p}-c_o) \cdot N \cdot D'((1-\lambda)\bar{p}) \cdot (1-\lambda)$$
$$= N \cdot D(s) \cdot \left[1 - \frac{(\bar{p}-c_o)(1-\lambda)\varepsilon(s)}{s}\right] = N \cdot D(s) \cdot \left[1 - \frac{(\bar{p}-c_o)}{{\bar{p}}} \cdot \varepsilon(s)\right]$$

Since $\bar{p}$ is the lower participation threshold (increasing arm of profit curve), $\partial G/\partial p|_{\bar{p}} > 0$.

Required condition: $((\bar{p}-c_o)/\bar{p}) \cdot \varepsilon(s) < 1$, i.e., the Lerner markup times elasticity is less than 1. At the zero-profit lower threshold, this is guaranteed by single-peakedness (H2): if profit were decreasing at $\bar{p}$, it would be the upper threshold (but we defined $\bar{p}$ as the lower one).

Therefore: $\partial\bar{p}/\partial\lambda = -(\partial G/\partial\lambda)/(\partial G/\partial p) = -(+)/(+) < 0$. $\square$

**Binding assumptions:** A1, A3, A4, H2.
**Referee risk:** LOW. The IFT proof is clean; the economic mechanism is intuitive once stated.

---

## Proposition 4 — Welfare Kink at the Exit Threshold

**Label:** P4 (Welfare Discontinuity at $\bar{p}$ — The Central Result) ★ PRIMARY KEY RESULT
**Type:** Characterization proposition + welfare comparison
**Council direction:** Primary key result. The central claim of the paper.

**Statement:**

The social welfare function $W(p)$ has a **discrete jump** at $\bar{p}$:

$$W(\bar{p}^+) - W(\bar{p}^-) = N \cdot V_o - F$$

where $W(\bar{p}^+) = \lim_{p \downarrow \bar{p}} W(p)$ and $W(\bar{p}^-) = \lim_{p \uparrow \bar{p}} W(p)$.

**Sign of the jump determines the optimal VBP strategy:**

**(i) Variety-valuable regime** ($N \cdot V_o > F$): $W(\bar{p}^+) > W(\bar{p}^-)$. The welfare gain from originator variety exceeds its fixed cost. The optimal VBP price satisfies $p^* \geq \bar{p}$ — the insurer should not push the price below the exit threshold. VBP should be calibrated to preserve originator participation.

**(ii) Variety-costly regime** ($N \cdot V_o < F$): $W(\bar{p}^+) < W(\bar{p}^-)$. The originator's fixed cost exceeds its variety benefit. A VBP price that triggers originator exit is welfare-improving at the kink. Generic-only supply (at $p < \bar{p}$) dominates.

**(iii) Knife-edge** ($N \cdot V_o = F$): $W$ is continuous at $\bar{p}$; welfare is independent of whether the originator exits.

**Global optimum (piecewise characterization):**

Define:
$$p^{SB}_o = \frac{c_o}{1-\lambda}, \quad p^{SB}_g = \frac{c_g}{1-\lambda}$$

These are the interior second-best optima on $[\bar{p}, \infty)$ and $[c_g, \bar{p})$ respectively (correcting the moral hazard distortion by setting OOP price = marginal cost). The global second-best optimum $p^{SB}$ is:

$$p^{SB} = \begin{cases}
p^{SB}_o = c_o/(1-\lambda) & \text{if } p^{SB}_o \geq \bar{p} \text{ and } W(p^{SB}_o) \geq W(p^{SB}_g) \\
\bar{p} & \text{if } p^{SB}_o < \bar{p} \leq c_o/(1-\lambda) \text{ and variety-valuable} \\
p^{SB}_g = c_g/(1-\lambda) & \text{if } p^{SB}_g < \bar{p} \text{ and variety-costly}
\end{cases}$$

**Proof sketch:**

The welfare function is:
$$W(p) = N\left[U(D((1-\lambda)p)) - c(p) \cdot D((1-\lambda)p)\right] - F \cdot \mathbf{1}[p \geq \bar{p}] + N V_o \cdot \mathbf{1}[p \geq \bar{p}]$$

At $p = \bar{p}$, the supply cost jumps from $c_g$ (generic) to $c_o$ (originator), and the fixed cost $-F$ and variety term $+NV_o$ switch on. Taking left and right limits:
$$W(\bar{p}^+) = N\left[U(D((1-\lambda)\bar{p})) - c_o \cdot D((1-\lambda)\bar{p})\right] - F + N V_o$$
$$W(\bar{p}^-) = N\left[U(D((1-\lambda)\bar{p})) - c_g \cdot D((1-\lambda)\bar{p})\right]$$

Difference:
$$W(\bar{p}^+) - W(\bar{p}^-) = N(c_g - c_o) D((1-\lambda)\bar{p}) - F + N V_o$$

This is not simply $NV_o - F$ unless $c_g = c_o$. 

**Correction:** When the originator enters at $p = \bar{p}$, supply shifts from generic ($c_g$) to originator ($c_o > c_g$). The social welfare impact of this supply cost switch is:
$$\Delta W_{\text{cost}} = -N(c_o - c_g) D((1-\lambda)\bar{p}) < 0$$
Plus the variety benefit net of fixed cost:
$$\Delta W_{\text{variety}} = N V_o - F$$

Total:
$$W(\bar{p}^+) - W(\bar{p}^-) = N V_o - F - N(c_o - c_g) D((1-\lambda)\bar{p})$$

**Restated Proposition 4 (corrected):**

$$W(\bar{p}^+) - W(\bar{p}^-) = N V_o - F - N(c_o - c_g) D((1-\lambda)\bar{p})$$

Define the net variety premium:
$$\Omega \equiv N V_o - F - N(c_o - c_g) D((1-\lambda)\bar{p})$$

The welfare jump is $\Omega$, which:
- Includes the variety benefit $NV_o$
- Minus the originator fixed cost $F$
- Minus the supply cost penalty from switching to higher-cost originator supply $N(c_o - c_g)D((1-\lambda)\bar{p})$

The variety-valuable regime is $\Omega > 0$; variety-costly is $\Omega < 0$.

**Special case:** If $V_o$ is large enough to offset both $F$ and the supply cost penalty ($N V_o > F + N(c_o - c_g)D$), then $p^* \geq \bar{p}$ (preserve originator). $\square$

**Binding assumptions:** A1, A2, A3, A4, H1 (tie-breaking at $\bar{p}$).
**Referee risk:** LOW — the piecewise structure is explicit and verifiable.

---

## Proposition 5 — Second-Best VBP Price (Social Optimum with Fixed λ)

**Label:** P5 (Second-Best VBP Price — Moral Hazard Correction with Supply Constraints)
**Type:** Characterization + welfare policy prescription

**Statement:**

Given $\lambda$ fixed (A2), the social welfare-maximizing VBP price satisfies the second-best condition. On each smooth piece:

**(i) With originator in market ($p \geq \bar{p}$):**

The interior FOC of $W(p)$ gives:
$$N(1-\lambda)D'((1-\lambda)p)\left[(1-\lambda)p - c_o\right] = 0 \implies (1-\lambda)p^{SB}_o = c_o \implies \boxed{p^{SB}_o = \frac{c_o}{1-\lambda}}$$

At $p^{SB}_o$, patient OOP price equals originator marginal cost: moral hazard is fully corrected. This is feasible (in $[\bar{p}, \infty)$) iff $p^{SB}_o \geq \bar{p}$, i.e., $c_o/(1-\lambda) \geq \bar{p}$.

**(ii) With generic supply only ($p < \bar{p}$):**

$$\boxed{p^{SB}_g = \frac{c_g}{1-\lambda}}$$

Patient OOP price equals generic marginal cost; moral hazard is fully corrected for generic supply. Feasible iff $p^{SB}_g < \bar{p}$, i.e., $c_g/(1-\lambda) < \bar{p}$.

**(iii) Feasibility condition:**

Since $c_g < c_o < \bar{p}$:
- $p^{SB}_g = c_g/(1-\lambda)$ is below $\bar{p}$ iff $c_g/(1-\lambda) < \bar{p}$, which holds iff $\lambda < 1 - c_g/\bar{p}$.
- $p^{SB}_o = c_o/(1-\lambda)$ is above $\bar{p}$ iff $c_o/(1-\lambda) > \bar{p}$, i.e., $\bar{p} < c_o/(1-\lambda)$.

These conditions may or may not hold jointly. The paper's empirically interesting regime is $\bar{p} \in (c_o, c_o/(1-\lambda))$ — the participation threshold lies above originator marginal cost but below the social optimum. In this regime, the second-best requires a price above $\bar{p}$ to keep the originator in the market AND cover the moral hazard cost.

**(iv) When is VBP welfare-improving?**

Starting from pre-VBP monopoly price $p_M \gg c_o$, VBP reduces $p \to p_{VBP}$. Welfare is increasing on the move from $p_M$ to $p^{SB}_o$ (if originator stays) because:
$$\frac{dW}{dp}\bigg|_{p \in [p^{SB}_o, p_M]} = N(1-\lambda)D'(s)\left[s - c_o\right] < 0$$
(since $s = (1-\lambda)p > (1-\lambda)p^{SB}_o = c_o$ implies $[s - c_o] > 0$ and $D' < 0$, so welfare is decreasing in $p$ above $p^{SB}_o$ — equivalently welfare rises as $p$ falls from $p_M$ toward $p^{SB}_o$). VBP is welfare-improving in this range.

**Binding assumptions:** A1, A2.
**Referee risk:** LOW — the FOC derivation is textbook; the interest is in the piecewise feasibility analysis.

---

## Proposition 6 — Insurer-Planner Wedge

**Label:** P6 (Cost-Minimizing Insurer vs. Social Welfare Maximizer — Systematic Divergence)
**Type:** Comparison proposition (two-objective wedge)
**Council direction:** Tertiary result; provides the policy motivation for comparing the two objectives.

**Statement:**

The cost-minimizing insurer's optimal VBP price $p^{cost*}$ and the social welfare-maximizing price $p^{SB}$ differ systematically. In general, **the insurer sets a price that is too low** (amplifying moral hazard), while the social planner sets a price that corrects the moral hazard externality.

**Insurer's problem:**

$$\min_{p \geq c_g} E_I(p) = \lambda p N D((1-\lambda)p)$$

Interior FOC (if $E_I$ has a unique interior extremum): $\varepsilon((1-\lambda)p^{cost*}) = 1$ — the OOP demand elasticity is unit-elastic. However, for most demand curves (including linear demand), the expenditure function $E_I(p)$ is **single-peaked** in $p$ (inverted-U shaped), with:
- $E_I$ increasing in $p$ when $\varepsilon < 1$ (inelastic range)
- $E_I$ decreasing in $p$ when $\varepsilon > 1$ (elastic range)
- $E_I$ maximized at $\varepsilon = 1$

This means the interior critical point $\varepsilon = 1$ is a **maximum** of $E_I$, not a minimum. The expenditure-minimizing price is therefore at the **boundary** of the feasible set.

**Case 1 — Inelastic demand throughout [$c_g, \bar{p}$] ($\varepsilon < 1$ for all $p \in [c_g, \bar{p}]$):**

$E_I$ is increasing in $p$ throughout; insurer minimizes expenditure by setting $p = c_g$ (the procurement floor):

$$p^{cost*} = c_g$$

Compare to social optimum: $p^{SB}_g = c_g/(1-\lambda) > c_g$.

**Wedge:**
$$p^{SB}_g - p^{cost*} = \frac{c_g}{1-\lambda} - c_g = \frac{c_g \lambda}{1-\lambda} > 0$$

The insurer drives price below the social optimum. At $p^{cost*} = c_g$, patients pay OOP price $(1-\lambda)c_g < c_g$, consuming MORE than the socially optimal quantity $D(c_g)$. The moral hazard distortion is LARGER under the cost-minimizing insurer than under the social planner.

**Case 2 — Elastic demand throughout ($\varepsilon > 1$ for all $p \in [c_g, \bar{p}]$):**

$E_I$ is decreasing in $p$; insurer perversely wants to set $p$ HIGH (to reduce demand and cut total expenditure). The insurer would prefer $p$ near the choke price. This case is less relevant for essential drugs (which have inelastic demand) but is included for completeness.

**Case 3 — Mixed elasticity ($\varepsilon < 1$ at low $p$, $\varepsilon > 1$ at high $p$):**

$E_I$ is inverted-U shaped; minimum is at one of the two endpoints. Insurer compares $E_I(c_g)$ and $E_I(p_{choke})$; selects the lower.

**Summary of the insurer-planner wedge (Case 1, the essential-drug case):**

| | Price | OOP Price | Demand | DWL |
|---|---|---|---|---|
| Insurer's optimum | $c_g$ | $(1-\lambda)c_g$ | $D((1-\lambda)c_g)$ | Large |
| Social optimum (generic) | $c_g/(1-\lambda)$ | $c_g$ | $D(c_g)$ | Zero |
| Social optimum (originator) | $c_o/(1-\lambda)$ | $c_o$ | $D(c_o)$ | Zero |

The insurer, by minimizing its expenditure, sets a price that exacerbates moral hazard beyond the social optimum. Paradoxically: the insurer's "cost containment" policy creates more over-consumption than the social planner would tolerate.

**Binding assumptions:** A1, A2.
**Referee risk:** MEDIUM — the corner-solution result ($p^{cost*} = c_g$) may surprise referees who expect an interior solution. Must be carefully motivated: the insurer is not a monopolist facing a demand curve; it is a procurement authority whose expenditure is monotone in $p$ for inelastic essential drugs.

---

## Summary Table

| Proposition | Type | Key Statement | Binding Assumptions |
|------------|------|--------------|---------------------|
| **P1** | Comparative statics | $dE_I/dp \gtrless 0$ iff $\varepsilon \lessgtr 1$ at OOP price | A1 |
| **P2** | Existence | Unique $\bar{p}$ exists under A4; $\bar{p} > c_o$ | A1, A3, A4, H2 |
| **P3** ★★ | Comparative statics | $\partial\bar{p}/\partial\lambda < 0$: insurance and VBP are complements | A1, A3, A4, H2 |
| **P4** ★★★ | Welfare characterization | $W(\bar{p}^+) - W(\bar{p}^-) = NV_o - F - N(c_o-c_g)D(\cdot)$; sign determines VBP optimality | A1, A2, A3, A4, H1 |
| **P5** | Policy prescription | $p^{SB} = c/(1-\lambda)$ on each piece; piecewise feasibility analysis | A1, A2 |
| **P6** | Two-objective wedge | $p^{cost*} < p^{SB}$ for inelastic demand; insurer amplifies moral hazard | A1, A2 |

**Primary result:** P4 (welfare kink at exit threshold)
**Secondary result:** P3 (∂p̄/∂λ < 0)
**Tertiary result:** P6 (insurer-planner wedge)

---

## Notes for Stage 7 (Proof Sketches)

1. **P2 uniqueness:** Prove single-peakedness of $(p-c_o)\cdot D((1-\lambda)p)$ under A1 (convex demand) and H2. Show the lower root is $\bar{p}$.
2. **P3 sign of denominator:** Verify $\partial G/\partial p|_{\bar{p}} > 0$ formally by showing $(\bar{p}-c_o)\varepsilon(s)/\bar{p} < 1$ at the lower participation threshold.
3. **P4 sign condition:** Express $\Omega = NV_o - F - N(c_o-c_g)D((1-\lambda)\bar{p})$ in terms of model primitives; provide sufficient conditions for $\Omega > 0$ and $\Omega < 0$.
4. **P5 feasibility:** Enumerate the 4 regime-cases (whether $p^{SB}_o \geq \bar{p}$ and $p^{SB}_g < \bar{p}$) and provide a single diagram summarizing the piecewise welfare landscape.
5. **P6 corner solution:** Formally verify that for log-linear demand $D(s) = As^{-\varepsilon_0}$ with $\varepsilon_0 < 1$ (constant inelastic demand), the insurer always prefers $p = c_g$. Then discuss the elastic-demand (constant $\varepsilon_0 > 1$) case.
6. **Correction note for P4:** The statement "$W(\bar{p}^+) - W(\bar{p}^-) = NV_o - F$" (stated in Stage 4 Gate 2) omits the supply-cost penalty $-N(c_o-c_g)D(\cdot)$. The correct expression includes this term. The welfare kink analysis must use the corrected $\Omega$, not the simplified $NV_o - F$.
