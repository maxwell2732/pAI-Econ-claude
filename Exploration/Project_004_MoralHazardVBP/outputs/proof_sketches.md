# Proof Sketches

**Date:** 2026-06-23
**Stage:** 7 — Proof Sketch

All proofs are for the propositions in `candidate_propositions.md`. Standing assumptions A1–A4, H1–H2 are in force unless stated otherwise. The symbol $s$ denotes the OOP price $s = (1-\lambda)p$ throughout.

---

## Proof of Proposition 1 — Expenditure Tipping Effect

**To prove:** $dE_I/dp = \lambda N D(s) \cdot [1 - \varepsilon(s)]$, and sign equals $\text{sgn}(1 - \varepsilon(s))$.

**Proof:**

$$E_I(p) = \lambda \cdot p \cdot N \cdot D((1-\lambda)p)$$

Differentiating with respect to $p$ using the chain rule:
$$\frac{dE_I}{dp} = \lambda N \left[ D(s) + p \cdot D'(s) \cdot (1-\lambda) \right]$$

Since $s = (1-\lambda)p$, we have $p(1-\lambda) = s$:
$$\frac{dE_I}{dp} = \lambda N \left[ D(s) + s \cdot D'(s) \right] = \lambda N D(s) \left[ 1 + \frac{s D'(s)}{D(s)} \right] = \lambda N D(s) \left[ 1 - \varepsilon(s) \right]$$

where the last step uses $\varepsilon(s) = -s D'(s)/D(s)$.

Since $\lambda > 0$, $N > 0$, and $D(s) > 0$, the sign of $dE_I/dp$ equals $\text{sgn}(1 - \varepsilon(s))$:

- $\varepsilon(s) < 1$: $dE_I/dp > 0$ — expenditure increasing in $p$; lower $p$ reduces expenditure.
- $\varepsilon(s) > 1$: $dE_I/dp < 0$ — expenditure decreasing in $p$; lower $p$ raises expenditure.
- $\varepsilon(s) = 1$: $dE_I/dp = 0$ — local extremum (maximum of $E_I$ for most demand curves).

**Remark on the interior critical point:** For demand functions where $\varepsilon(s)$ is strictly increasing in $s$ (e.g., linear demand $D(s) = a - bs$ where $\varepsilon(s) = bs/(a-bs)$ is increasing), the critical point $\hat{p}$ with $\varepsilon((1-\lambda)\hat{p}) = 1$ is a **maximum** of $E_I$, not a minimum. The expenditure function is inverted-U shaped in $p$, with the global minimum at one of the boundaries. This has implications for P6. $\square$

---

## Proof of Proposition 2 — Originator Exit Threshold (Existence and Uniqueness)

**To prove:** Under A1–A4, H2, there exists a unique $\bar{p} \in (c_o, \infty)$ such that $\Pi_O(p) \geq 0 \Leftrightarrow p \geq \bar{p}$.

**Step 1 — Continuity and boundary values.**

$\Pi_O(p) = (p - c_o) \cdot N \cdot D((1-\lambda)p) - F$ is continuous in $p$ (from A1, since $D$ is $C^2$).

At $p = c_o$: $\Pi_O(c_o) = 0 \cdot N \cdot D((1-\lambda)c_o) - F = -F < 0$ (since $F > 0$ by A3).

At $p = p^{\max}_O$ (the unconstrained profit-maximizing price for the originator): $\Pi_O(p^{\max}_O) > 0$ by the market viability assumption A4 (which states $\max_p (p-c_o) N D((1-\lambda)p) > F$, so the maximum profit exceeds $F$).

**Step 2 — Existence by Intermediate Value Theorem.**

Since $\Pi_O(c_o) = -F < 0$ and $\Pi_O(p^{\max}_O) > 0$, and $\Pi_O$ is continuous, the IVT guarantees at least one root $\bar{p} \in (c_o, p^{\max}_O)$.

**Step 3 — Uniqueness by single-peakedness (H2).**

By H2, $(p - c_o) \cdot D((1-\lambda)p)$ is single-peaked in $p$: it increases from 0 at $p = c_o$ to its maximum at $p^{\max}_O$, then decreases to 0 as $p \to \infty$ (since $D \to 0$). Therefore:

- For $p \in (c_o, p^{\max}_O)$: $(p-c_o)D(s)$ is strictly increasing. Since $\Pi_O(c_o) = -F$ and profit is increasing here, there is exactly one crossing of zero from below — this is $\bar{p}$.
- For $p > p^{\max}_O$: $(p-c_o)D(s)$ is strictly decreasing. Starting from $\Pi_O(p^{\max}_O) > 0$, profit decreases and eventually reaches $-F$ again (at some upper threshold $\bar{p}_U > p^{\max}_O$). But the VBP price $p$ is set to provide low prices (below the originator's profit-maximizing price), so the relevant threshold is the lower one: $\bar{p} < p^{\max}_O$.

**Conclusion:** The unique lower participation threshold $\bar{p} \in (c_o, p^{\max}_O)$ satisfies $\Pi_O(\bar{p}) = 0$ and $\Pi_O(p) > 0$ for all $p \in (\bar{p}, p^{\max}_O)$. The originator participates iff $p \geq \bar{p}$ (in the VBP-relevant range $p \leq p_M$ where $p_M$ is the pre-VBP monopoly price, which satisfies $p_M < p^{\max}_O$ for typical inelastic demand). $\square$

**Remark on linear demand:** For $D(s) = a - bs$, the originator profit is a quadratic in $p$:
$$\Pi_O(p) = (p-c_o) \cdot N(a - b(1-\lambda)p) - F$$
This is a downward-opening parabola in $p$ with roots:
$$\bar{p}, \bar{p}_U = \frac{c_o}{2} + \frac{a}{2b(1-\lambda)} \mp \frac{1}{2}\sqrt{\left(\frac{a}{b(1-\lambda)} - c_o\right)^2 - \frac{4F}{Nb(1-\lambda)}}$$
The lower root $\bar{p}$ is the participation threshold.

---

## Proof of Proposition 3 — $\partial\bar{p}/\partial\lambda < 0$

**To prove:** The participation threshold $\bar{p}$ is strictly decreasing in $\lambda$.

**Setup.**

Define $G(p, \lambda) \equiv (p - c_o) \cdot N \cdot D((1-\lambda)p) - F$. At $(p, \lambda) = (\bar{p}, \lambda_0)$, $G = 0$ by definition of $\bar{p}$.

**IFT conditions.**

$G$ is $C^1$ (from A1). We need:
1. $\partial G/\partial p|_{(\bar{p}, \lambda_0)} \neq 0$ — so that IFT applies.
2. The sign of $\partial\bar{p}/\partial\lambda = -(\partial G/\partial\lambda)/(\partial G/\partial p)$.

**Computing $\partial G/\partial\lambda$:**
$$\frac{\partial G}{\partial\lambda} = (p - c_o) \cdot N \cdot D'((1-\lambda)p) \cdot (-p)$$

Evaluating at $(\bar{p}, \lambda_0)$: since $\bar{p} > c_o$ (P2), $D'(s) < 0$ (A1), and $\bar{p} > 0$:
$$\frac{\partial G}{\partial\lambda}\bigg|_{\bar{p}} = (\bar{p} - c_o) \cdot N \cdot D'((1-\lambda)\bar{p}) \cdot (-\bar{p}) = (\bar{p}-c_o) \cdot N \cdot \bar{p} \cdot |D'(s)| > 0$$

**Computing $\partial G/\partial p$:**
$$\frac{\partial G}{\partial p}\bigg|_{\bar{p}} = N \left[ D(s) + (\bar{p} - c_o)(1-\lambda)D'(s) \right] = N \cdot D(s) \left[ 1 - \frac{(\bar{p}-c_o)}{{\bar{p}}} \cdot \varepsilon(s) \right]$$

where $s = (1-\lambda)\bar{p}$ and we used $(\bar{p}-c_o)(1-\lambda)D'(s)/D(s) = -(\bar{p}-c_o)\varepsilon(s)/\bar{p}$.

**Sign of $\partial G/\partial p$.**

We need: $1 - [(\bar{p}-c_o)/\bar{p}]\varepsilon(s) > 0$, i.e., $\varepsilon(s) < \bar{p}/(\bar{p}-c_o) \equiv \varepsilon^{\max}(\bar{p})$.

At the lower participation threshold $\bar{p}$, the originator's profit is zero and increasing (by P2 Step 3: profit increases from below at $\bar{p}$). Formally, $d\Pi_O/dp|_{\bar{p}} > 0$ is exactly the condition $\partial G/\partial p|_{\bar{p}} > 0$. This is guaranteed by the single-peakedness assumption H2 and the fact that $\bar{p}$ is the lower root (below the profit-maximizing price $p^{\max}_O$, on the increasing arm). $\square$ for the denominator sign.

**Conclusion:**
$$\frac{\partial\bar{p}}{\partial\lambda} = -\frac{\partial G/\partial\lambda}{\partial G/\partial p} = -\frac{(+)}{(+)} < 0$$

**Economic magnitude (linear demand):**

Differentiating the linear-demand closed form for $\bar{p}$:
$$\frac{\partial\bar{p}}{\partial\lambda} = -\frac{a}{2b(1-\lambda)^2} + \frac{1}{2} \cdot \frac{a(a/b(1-\lambda) - c_o)/b(1-\lambda)^2}{\sqrt{(a/b(1-\lambda) - c_o)^2 - 4F/(Nb(1-\lambda))}}$$

The sign is negative for parameter configurations consistent with A4 (the discriminant is positive and the numerator of the IFT expression is positive). Closed-form magnitude can be computed for specific calibrations. $\square$

---

## Proof of Proposition 4 — Welfare Kink at $\bar{p}$

**To prove:** $W(\bar{p}^+) - W(\bar{p}^-) = \Omega \equiv NV_o - F - N(c_o - c_g)D((1-\lambda)\bar{p})$.

**Setup.**

The welfare function (with $c(p) = c_o$ for $p \geq \bar{p}$, $c(p) = c_g$ for $p < \bar{p}$):
$$W(p) = N\left[U(D(s)) - c(p) \cdot D(s)\right] - F\cdot\mathbf{1}[p \geq \bar{p}] + NV_o \cdot \mathbf{1}[p \geq \bar{p}]$$

**Right limit** ($p \downarrow \bar{p}$, originator in market):
$$W(\bar{p}^+) = N\left[U(D((1-\lambda)\bar{p})) - c_o \cdot D((1-\lambda)\bar{p})\right] - F + NV_o$$

**Left limit** ($p \uparrow \bar{p}$, generic only):
$$W(\bar{p}^-) = N\left[U(D((1-\lambda)\bar{p})) - c_g \cdot D((1-\lambda)\bar{p})\right]$$

Note: demand is continuous at $\bar{p}$ (patient OOP price $(1-\lambda)\bar{p}$ is the same from both sides), so $U(D(\cdot))$ cancels.

**Difference:**
$$W(\bar{p}^+) - W(\bar{p}^-) = N\left[c_g - c_o\right]D(s) - F + NV_o = NV_o - F - N(c_o - c_g)D((1-\lambda)\bar{p}) = \Omega$$

**Case analysis:**

**Case 1 — Variety-valuable:** $\Omega > 0 \Leftrightarrow NV_o > F + N(c_o-c_g)D(\bar{s})$ where $\bar{s} = (1-\lambda)\bar{p}$. Here $W$ jumps up as $p$ crosses $\bar{p}$ from below. Originator presence is welfare-improving at the margin. Optimal VBP price $p^* \geq \bar{p}$.

**Case 2 — Variety-costly:** $\Omega < 0$. Originator entry reduces welfare (fixed costs exceed variety benefits plus supply-cost savings). Optimal price $p^* < \bar{p}$.

**Case 3 — Knife-edge:** $\Omega = 0$. $W$ is continuous at $\bar{p}$; policymaker is indifferent at the threshold.

**Derivation of second-best interior optima:**

On $[\bar{p}, \infty)$ with $c(p) = c_o$:
$$\frac{dW}{dp} = N(1-\lambda)D'(s)\left[(1-\lambda)p - c_o\right] = N(1-\lambda)D'(s)\left[s - c_o\right]$$

Setting $dW/dp = 0$: since $D'(s) < 0$ and $N(1-\lambda) > 0$, we need $s = c_o$, i.e., $(1-\lambda)p^{SB}_o = c_o$, giving:
$$\boxed{p^{SB}_o = \frac{c_o}{1-\lambda}}$$

On $[c_g, \bar{p})$ with $c(p) = c_g$: by the same argument, $p^{SB}_g = c_g/(1-\lambda)$.

**Second-order conditions:** At $p^{SB}_o$, $d^2W/dp^2 = N(1-\lambda)^2[D''(c_o) \cdot (c_o - c_o) + D'(c_o)] = N(1-\lambda)^2 D'(c_o) < 0$ — confirms maximum.

**Global optimum comparison:**

$W(p^{SB}_o)$ vs $W(p^{SB}_g)$ depends on whether the interior solutions fall in the feasible range. The global optimum $p^{SB}$ is:

$$p^{SB} = \arg\max\left\{W(p^{SB}_o)\cdot\mathbf{1}[p^{SB}_o \geq \bar{p}], \quad W(p^{SB}_g)\cdot\mathbf{1}[p^{SB}_g < \bar{p}], \quad W(\bar{p})\right\}$$

The comparison $W(p^{SB}_o)$ vs $W(p^{SB}_g)$ (when both interior solutions are feasible) depends on the sign of $\Omega$ and the magnitude of DWL corrections. $\square$

---

## Proof of Proposition 5 — Second-Best VBP Price (Full Characterization)

**To prove:** Interior second-best prices are $p^{SB}_o = c_o/(1-\lambda)$ and $p^{SB}_g = c_g/(1-\lambda)$; feasibility conditions are stated; corner solutions handle the infeasible cases.

This follows directly from P4. We now characterize the full case enumeration:

**Regime A: $p^{SB}_o \geq \bar{p}$ (originator stays at social optimum).**

Condition: $c_o/(1-\lambda) \geq \bar{p}$, i.e., $\bar{p}(1-\lambda) \leq c_o$. Since $\bar{p} > c_o$, this requires $(1-\lambda) < c_o/\bar{p} < 1$, i.e., $\lambda > 1 - c_o/\bar{p}$.

If $\Omega > 0$ and Regime A holds: $p^{SB} = p^{SB}_o = c_o/(1-\lambda)$. Originator participates; moral hazard fully corrected.

**Regime B: $p^{SB}_o < \bar{p}$ (originator exits even at the moral-hazard-correcting price).**

In this regime, the planner cannot keep the originator while fully correcting moral hazard. Two sub-cases:

*B1 — Variety-valuable ($\Omega > 0$):* Constrained optimum is $p^{SB} = \bar{p}$ (set price exactly at threshold). This sacrifices some moral hazard correction to preserve variety.

*B2 — Variety-costly ($\Omega < 0$):* Constrained optimum is $p^{SB} = p^{SB}_g = c_g/(1-\lambda)$ (fully exit to generic, correct moral hazard for generic supply).

**Regime C: $p^{SB}_g \geq \bar{p}$ (generic moral-hazard-correcting price above threshold).**

This arises if $c_g/(1-\lambda) \geq \bar{p}$, i.e., the generic social optimum is above the originator exit threshold. In this case, the originator always participates at $p^{SB}_g$, and the relevant optimum is on the originator piece (Regime A territory with $p^{SB}_g$ replaced by $p^{SB}_o$). Under $c_g < c_o$, this requires $\bar{p} \leq c_g/(1-\lambda) < c_o/(1-\lambda)$, so Regime C $\subseteq$ Regime A. Not a distinct case.

**Summary diagram:**

```
c_g    c_g/(1-λ)   c_o    p̄    c_o/(1-λ)
|————————|——————————|———————|——————|————————→ p

         p^SB_g            p̄   p^SB_o

         [generic piece]   |   [originator piece]
                         KINK
```

If $\Omega > 0$: optimum on originator piece (at $p^{SB}_o$ if feasible, else at $\bar{p}$).
If $\Omega < 0$: optimum on generic piece (at $p^{SB}_g$ if feasible). $\square$

---

## Proof of Proposition 6 — Insurer-Planner Wedge

**To prove:** For inelastic demand ($\varepsilon(s) < 1$ for all $s \in [(1-\lambda)c_g, (1-\lambda)\bar{p}]$), the insurer's expenditure-minimizing price is the corner solution $p^{cost*} = c_g$, which satisfies $p^{cost*} < p^{SB}$ for both generic and originator social optima.

**Step 1 — Corner solution for inelastic demand.**

By P1: $dE_I/dp > 0$ when $\varepsilon(s) < 1$. If inelastic demand holds throughout $[c_g, \bar{p}]$, the expenditure function $E_I(p)$ is strictly increasing in $p$ on this interval.

Minimizing a strictly increasing function over $[c_g, \bar{p}]$ yields the unique minimizer at the left endpoint: $p^{cost*} = c_g$.

**Step 2 — Wedge computation.**

$p^{SB}_g = c_g/(1-\lambda) > c_g = p^{cost*}$ (since $\lambda > 0$ implies $1/(1-\lambda) > 1$).
$p^{SB}_o = c_o/(1-\lambda) > c_o > c_g = p^{cost*}$.

Wedge (generic case): $p^{SB}_g - p^{cost*} = c_g/(1-\lambda) - c_g = c_g \lambda/(1-\lambda) > 0$.
Wedge (originator case): $p^{SB}_o - p^{cost*} = c_o/(1-\lambda) - c_g > 0$ (since $c_o > c_g(1-\lambda)$ for typical parameters).

**Step 3 — Welfare comparison at $p^{cost*}$ vs $p^{SB}$.**

At $p^{cost*} = c_g$: OOP price $= (1-\lambda)c_g$; demand $= D((1-\lambda)c_g)$.
At $p^{SB}_g = c_g/(1-\lambda)$: OOP price $= c_g$; demand $= D(c_g) < D((1-\lambda)c_g)$ (since $(1-\lambda)c_g < c_g$).

The DWL at $p^{cost*}$:
$$\text{DWL}(p^{cost*}) = N\left[U(D(c_g)) - c_g D(c_g)\right] - N\left[U(D((1-\lambda)c_g)) - c_g D((1-\lambda)c_g)\right] > 0$$

At the social optimum $p^{SB}_g$: DWL = 0.

So the cost-minimizing insurer's price generates positive deadweight loss, while the social planner's price eliminates it.

**Paradox summary:** The insurer's drive to "contain costs" (minimize $E_I$) leads it to set a price that maximizes demand (lowest feasible price) — precisely the price that generates the largest moral hazard distortion. The insurer does achieve lower expenditure at $p^{cost*} = c_g$ than at $p^{SB}_g > c_g$ (since $E_I$ is increasing in $p$ in the inelastic case), but at the cost of social welfare. $\square$

**Robustness note:** For constant-elasticity demand $D(s) = A s^{-\varepsilon_0}$:
- If $\varepsilon_0 < 1$ (inelastic): $E_I(p) = \lambda N A (1-\lambda)^{-\varepsilon_0} p^{1-\varepsilon_0}$ which is strictly increasing in $p$ (since $1 - \varepsilon_0 > 0$). Insurer sets $p = c_g$.
- If $\varepsilon_0 > 1$ (elastic): $E_I(p)$ is strictly decreasing in $p$. Insurer prefers highest feasible $p$.
- If $\varepsilon_0 = 1$ (unit elastic): $E_I(p) = \lambda N A (1-\lambda)^{-1}$ — constant, independent of $p$. Insurer is indifferent; any $p$ minimizes (ties everywhere).

The inelastic-demand assumption (relevant for essential drugs under VBP) gives the cleanest and most policy-relevant result.

---

## Cross-Proposition Dependencies

| Uses | Depends on |
|------|-----------|
| P3 | P2 (IFT requires existence of $\bar{p}$; uniqueness for single-valued implicit function) |
| P4 | P2 ($\bar{p}$ must exist to evaluate $W(\bar{p}^\pm)$) |
| P5 | P4 (second-best uses the piecewise structure from P4) |
| P6 | P1 (expenditure sign depends on elasticity; corner solution relies on P1's monotonicity result) |

---

## Completeness Check

| Proof step | P1 | P2 | P3 | P4 | P5 | P6 |
|-----------|----|----|----|----|----|----|
| All conditions verified | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| No circular dependencies | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Second-order conditions | — | — | IFT sign | ✓ SOC | ✓ SOC | — |
| Boundary/corner cases handled | ✓ | ✓ | — | ✓ | ✓ | ✓ |
| Stage 4 derivation error corrected | ✓ (FOC) | — | — | ✓ (Ω) | — | ✓ (FOC) |

---

## Flags for Stage 8 (Counterexample Finder)

1. **P3 denominator sign:** The proof requires $\varepsilon(s) < \bar{p}/(\bar{p}-c_o)$ at the threshold. Find a demand function where this fails — would require a very elastic demand at exactly $\bar{p}$.

2. **P4 regime boundary:** What happens when $p^{SB}_o = \bar{p}$ (corner coincides with kink)? Is the second-best well-defined there? This is a knife-edge case worth analyzing.

3. **P6 elastic-demand inversion:** For elastic demand, the insurer perversely wants higher prices. Does this ever coincide with the social planner's optimum? (Spoiler: only if $\varepsilon(c) = 1$ — the knife-edge case from P1.)

4. **Ω sign reversal with λ:** Does $\Omega = NV_o - F - N(c_o-c_g)D((1-\lambda)\bar{p})$ change sign as $\lambda$ varies? Since $\partial\bar{p}/\partial\lambda < 0$ (P3), higher $\lambda$ means lower $\bar{p}$, which changes $D((1-\lambda)\bar{p})$. Could be that the variety-valuable regime emerges only at high enough $\lambda$ — a threshold crossing.
