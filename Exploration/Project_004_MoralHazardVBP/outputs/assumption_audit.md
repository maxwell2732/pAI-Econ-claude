# Assumption Audit

**Date:** 2026-06-23
**Stage:** 5 — Assumption Audit

---

## Extracted Assumptions

### [A1] Demand Function Regularity
**Statement:** $D: \mathbb{R}_+ \to \mathbb{R}_+$ is strictly decreasing ($D' < 0$), twice continuously differentiable ($D'' \leq 0$, i.e., convex demand), and satisfies $U'(D(s)) = s$ (so demand is the inverse of the marginal utility function $U'$).
**Where used in model:** Section 4 (Preferences), Section 6 (Notation Summary); used in all demand responses and welfare calculations.

**Q1 — Necessity:** NECESSARY
**Justification:** Monotonicity of $D$ is essential for all comparative statics (the direction of demand change as $p$ falls). Differentiability is required for the implicit function theorem derivation of $p^{SB}$ and $p^{cost*}$.

**Q2 — Economic motivation:** STRONG MOTIVATION
**Real-world counterpart:** Health demand for drugs is downward-sloping in out-of-pocket price — confirmed by Manning et al. (1987) RAND experiment (elasticity ≈ −0.2). The concavity of $U$ (and convexity of demand) reflects diminishing marginal benefit of drug consumption, which is medically plausible.

**Q3 — Standard in literature:** STANDARD
**Notes:** Universal in health economics demand models since Pauly (1968).

**Q4 — What breaks if relaxed:** Without $D' < 0$: comparative statics on demand are indeterminate — a core result. Without $C^2$ smoothness: IFT fails; $p^{cost*}$ may not be characterizable as a first-order condition. If $D'' > 0$ (concave demand): the expenditure function $p \cdot D((1-\lambda)p)$ may have multiple local extrema, complicating the insurer's cost-minimization.

**Referee risk:** LOW
**Binding:** YES

---

### [A2] Insurance Coverage Rate Fixed (λ fixed)
**Statement:** The coinsurance complement $\lambda \in (0,1)$ is an exogenous parameter — fixed at the BMI rate — and is not a choice variable in the baseline model.
**Where used in model:** Section 4 (both objectives), all equilibrium conditions.

**Q1 — Necessity:** NECESSARY (for the baseline)
**Justification:** The paper's contribution is about the VBP price $p$ as the design variable, not the insurance contract. Setting $\lambda$ as fixed is what creates the divergence between the cost-minimizing price and the social optimum. If $\lambda$ were also a choice variable, the social planner's first-best ($\lambda^{FB}, p^{FB}$) would eliminate the moral hazard distortion entirely and the interesting tradeoff would not arise.

**Q2 — Economic motivation:** STRONG MOTIVATION
**Real-world counterpart:** China's BMI coinsurance rates are set by the National Healthcare Security Administration separately from VBP procurement. The insurer does not re-optimize $\lambda$ each time a VBP batch is issued. These are distinct policy tools set by different agencies on different timescales. The assumption accurately reflects the institutional separation.

**Q3 — Standard in literature:** STANDARD
**Notes:** Treating insurance generosity as a parameter is standard in the health economics drug-pricing literature.

**Q4 — What breaks if relaxed:** If $\lambda$ is also a choice variable for the social planner: the first-best has $(1-\lambda)p = c$ (no moral hazard), and the policy design problem simplifies dramatically. The interesting tradeoff between moral hazard amplification and originator participation disappears because the planner can simultaneously set $p = p^*$ and $\lambda = 1 - c/p^*$ to eliminate moral hazard while covering supply costs. The paper's comparative statics (most interestingly $\partial\bar{p}/\partial\lambda$) become endogenous and require a joint optimization.

**Referee risk:** LOW (the institutional justification is strong)
**Binding:** YES

---

### [A3] Originator Fixed Cost F > 0 (Irreducibility Condition)
**Statement:** The originator has strictly positive fixed costs $F > 0$ (R&D, brand maintenance, regulatory compliance) in addition to marginal cost $c_o > c_g$.
**Where used in model:** Section 4 (Originator profit), Section 6 (participation constraint), Section 7 (theory lineage).

**Q1 — Necessity:** NECESSARY
**Justification:** This is the irreducibility condition identified in Gate 2c. If $F = 0$, the originator participates at any $p \geq c_o$, the exit threshold is $\bar{p} = c_o$ (independent of $\lambda$ and $N$), the welfare function has no kink, and the paper collapses to the standard competitive market with moral hazard. The existence of a non-trivial participation constraint — and the welfare kink it creates — requires $F > 0$.

**Q2 — Economic motivation:** STRONG MOTIVATION
**Real-world counterpart:** Originator pharmaceutical firms face enormous fixed costs: R&D (average cost per approved drug estimated in the hundreds of millions), clinical trials, patent prosecution, brand marketing, and regulatory compliance. These fixed costs are not recoverable at the generic-competitive VBP price. The assumption is empirically well-motivated.

**Q3 — Standard in literature:** STANDARD in IO/pharmaceutical economics (Scherer; industry IO literature).
**Notes:** Treating pharmaceutical fixed costs as significant relative to variable costs is standard in the pharmaceutical economics literature.

**Q4 — What breaks if relaxed:** If $F = 0$: originator always participates for $p \geq c_o$; no welfare kink; no novel comparative statics. The paper reduces to the ancestor model (Pauly 1968 / Zeckhauser 1970).

**Referee risk:** LOW
**Binding:** YES

---

### [A4] Existence of Exit Threshold p̄
**Statement:** The originator's variable profit exceeds the fixed cost at the profit-maximizing price: $\max_{p \geq c_g} (p - c_o) \cdot N \cdot D((1-\lambda)p) > F$. This guarantees the existence of a threshold $\bar{p} \in (c_o, \infty)$ such that the originator participates iff $p \geq \bar{p}$.
**Where used in model:** Section 4 (originator profit), Section 6 (definition of $\bar{p}$); critical for the participation constraint proposition.

**Q1 — Necessity:** NECESSARY
**Justification:** Without this condition, either the originator never participates (if $\max(p-c_o)D((1-\lambda)p) \leq F$ for all $p$) or always participates (impossible since $D(\infty) = 0$ implies profit $\to -F < 0$ at large prices). The assumption is the statement that the market is large enough ($N$ is large enough relative to $F$) for the originator to be profitable at some price.

**Q2 — Economic motivation:** STRONG MOTIVATION
**Real-world counterpart:** China's pharmaceutical market (N ≈ 1.32 billion patients) is large enough that originators could, in principle, cover their fixed costs at a sufficiently high price. The empirical evidence (originators did supply before VBP) confirms that the pre-VBP equilibrium had $\bar{p} < p_{pre-VBP}$.

**Q3 — Standard in literature:** NON-STANDARD (not typically stated explicitly, but implied in entry models)
**Notes:** This is a standard existence condition in IO entry models (Sutton 1991 type conditions). Needs to be stated explicitly in the paper.

**Q4 — What breaks if relaxed:** The originator never enters at any VBP price, making the participation constraint always violated. The model degenerates to generic-only market for all $p$.

**Referee risk:** LOW (once explicitly stated)
**Binding:** YES

---

### [A5] Quasi-Linear Patient Utility
**Statement:** Each patient has quasi-linear utility $u(q, x) = U(q) + x$, where $x$ is the numeraire good. This implies no income effects on drug demand.
**Where used in model:** Section 4 (Patient preferences), demand function derivation.

**Q1 — Necessity:** PROBABLY NECESSARY
**Justification:** Quasi-linearity eliminates income effects, making demand $D(s) = (U')^{-1}(s)$ depend only on the effective price $s = (1-\lambda)p$ and not on patient income $m$. Without this, demand depends on income, the insurer budget constraint becomes more complex, and the welfare calculations require compensated vs. uncompensated demand distinctions.

**Q2 — Economic motivation:** WEAK MOTIVATION
**Real-world counterpart:** Drug expenditure is a small fraction of patient income for most BMI-covered drugs in China, so income effects may be minor. But for high-cost drugs (cancer therapies), income effects could be significant. The assumption is a tractability device, not a universal empirical truth.

**Q3 — Standard in literature:** STANDARD
**Notes:** Universal in health economics moral hazard models.

**Q4 — What breaks if relaxed:** If income effects matter: demand $D(s, m)$ depends on income $m$; distributional issues arise; the welfare comparison requires EV or CV measures rather than simple surplus integration. The main qualitative results (direction of expenditure response; participation threshold) are likely preserved under small income effects.

**Referee risk:** LOW
**Binding:** NO (results qualitatively robust to small income effects)

---

### [A6] Patient Homogeneity (N identical patients, uniform λ)
**Statement:** All N patients are identical in preferences, health status, and insurance coverage ($\lambda$ is uniform across all patients).
**Where used in model:** Section 1 (Agents), Section 4 (Patient preferences); demand aggregation $Q = N \cdot D((1-\lambda)p)$.

**Q1 — Necessity:** PROBABLY NECESSARY (for the baseline; heterogeneity complicates but doesn't change the direction of results)
**Justification:** Homogeneity simplifies aggregation and allows the model to work with per-patient demands without distributional concerns. Heterogeneous $\lambda$ would require integrating over the $\lambda$ distribution to get aggregate demand.

**Q2 — Economic motivation:** WEAK MOTIVATION
**Real-world counterpart:** The empirical reality check confirmed that $\lambda$ varies substantially across facility types (0.3 at large urban hospitals to 0.7–0.8 at rural clinics). Treating all patients as having the same $\lambda$ is a significant simplification that may under-state the access benefits of VBP for under-insured (low-$\lambda$) patients.

**Q3 — Standard in literature:** STANDARD (for baseline models with heterogeneity extension)
**Notes:** A standard robustness extension is to allow $\lambda \sim G(\cdot)$ distributed across patients. The persona council explicitly requested this extension.

**Q4 — What breaks if relaxed:** With heterogeneous $\lambda$: aggregate demand $= N \int D((1-\lambda)p) dG(\lambda)$; the moral hazard DWL depends on the distribution of $\lambda$; patients with low $\lambda$ (under-insured) benefit disproportionately from VBP price reductions. The main results likely hold qualitatively.

**Referee risk:** MEDIUM (important for policy interpretation; referees may ask for robustness)
**Binding:** NO (qualitative results likely preserved; quantitative results may differ)

---

### [A7] Originator Serves Full Market (β = 1)
**Statement:** When the originator participates, it serves the entire market: total originator quantity = $N \cdot D((1-\lambda)p)$, with zero share for the generic industry.
**Where used in model:** Section 4 (Originator profit: $\Pi_O = (p-c_o) \cdot N \cdot D((1-\lambda)p) - F$); Section 5 (Action spaces).

**Q1 — Necessity:** LIKELY DISPENSABLE
**Justification:** The participation constraint and welfare kink exist for any $\beta \in (0,1)$. With $\beta < 1$, the originator's profit is $(p-c_o) \cdot \beta \cdot N \cdot D((1-\lambda)p) - F$, and the exit threshold becomes $\bar{p}(\beta)$ which is higher than $\bar{p}(1)$ (since the originator earns less for the same market). The qualitative results are preserved.

**Q2 — Economic motivation:** WEAK MOTIVATION
**Real-world counterpart:** Under VBP, the winning bidder (generic) is awarded 70–80% of hospital formulary volume; the originator (if it doesn't win the VBP bid) retains a small residual share through non-VBP channels or direct-to-patient sales. Setting $\beta = 1$ is unrealistic.

**Q3 — Standard in literature:** NON-STANDARD (typically market share is endogenous in IO models)
**Notes:** This is a tractability assumption. An extension with $\beta < 1$ would add a market share parameter but not change the qualitative results.

**Q4 — What breaks if relaxed:** With $\beta \in (0,1)$: the originator's participation threshold $\bar{p}(\beta) > \bar{p}(1)$ — a smaller market share makes the originator more sensitive to price reductions, so the exit threshold is higher. The welfare kink is still present. The comparative statics $\partial\bar{p}/\partial\lambda < 0$ still holds. The main qualitative results are preserved.

**Referee risk:** MEDIUM (will be challenged; needs explicit defense or robustness extension)
**Binding:** NO

---

### [A8] No Hospital-Physician Demand Incentives
**Statement:** Patient demand $D((1-\lambda)p)$ is driven solely by patient preferences (utility maximization). Physician incentives (kickbacks, practice patterns, guideline adherence) are absent from the model.
**Where used in model:** Section 4 (Patient demand equation); demand aggregation.

**Q1 — Necessity:** PROBABLY NECESSARY (for the baseline's focus on patient moral hazard)
**Justification:** Including physician incentives would add a second moral hazard layer (physician as agent of patient; physician has private information about clinical need). While this is empirically important in China (physician kickbacks were a significant driver of pre-VBP overprescription), including it would require a multi-principal model and is outside the stated scope.

**Q2 — Economic motivation:** TECHNICAL ONLY (exclusion is a scope limitation, not an economic argument)
**Real-world counterpart:** Physician prescribing behavior is a significant channel in China. The paper must acknowledge this exclusion clearly in the introduction and note that physician moral hazard provides an additional argument for VBP price reduction (since higher prices provide more kickback opportunities), which would strengthen the welfare case for VBP.

**Q3 — Standard in literature:** STANDARD (papers focus on either patient or physician moral hazard, not both)
**Notes:** The scope exclusion is appropriate for a focused theoretical paper.

**Q4 — What breaks if relaxed:** Adding physician incentives introduces a two-sided moral hazard (patient and physician both distort demand upward). This would strengthen the result that total insurance expenditure can rise after VBP (since physician over-prescribing adds to patient demand amplification). The direction of results is preserved; the magnitude of the DWL is larger.

**Referee risk:** LOW (exclusion is standard and stated explicitly in the paper scope)
**Binding:** NO

---

### [A9] Static (One-Shot) Game
**Statement:** The model is static — all decisions are made in a single period. There are no dynamics: no repeated VBP rounds, no originator reputation effects, no long-run innovation incentives.
**Where used in model:** Section 2 (Timing); Section 9 (Internal Consistency).

**Q1 — Necessity:** PROBABLY NECESSARY (for tractability of the baseline)
**Justification:** A static model is necessary to keep the welfare comparison tractable. A dynamic model (VBP repeated every few years, originator makes multi-period participation and R&D investment decisions) would require optimal stopping theory or dynamic programming and is outside the stated scope.

**Q2 — Economic motivation:** WEAK MOTIVATION
**Real-world counterpart:** China's VBP is run in annual or biennial rounds. Originator participation decisions evolve across rounds. The static model abstracts away from the dynamic aspects of originator decision-making (e.g., the threat of future VBP rounds reducing the present value of participation). The static framework understates the option value of remaining in the market.

**Q3 — Standard in literature:** STANDARD for first-pass theoretical models
**Notes:** Dynamic extensions are noted in Stage 3 (scope) as a future research direction.

**Q4 — What breaks if relaxed:** In a dynamic model, the originator's participation threshold $\bar{p}$ incorporates the expected value of remaining in the market across future VBP rounds. The originator may tolerate a lower price in the current round to maintain its formulary listing, which would lower $\bar{p}$ — suggesting the static model overestimates the exit risk. This is a useful caveat for the paper's conclusions.

**Referee risk:** LOW
**Binding:** NO

---

## Binding Assumptions Summary

The following assumptions are identified as **BINDING** — the main results depend on them fundamentally:

| Label | Assumption | Binding Reason |
|-------|-----------|----------------|
| A1 | Demand function regularity ($D' < 0$, $C^2$) | All comparative statics require monotone, differentiable demand |
| A2 | $\lambda$ fixed (not a design variable) | The insurer-planner gap and moral hazard amplification require $\lambda$ to be a parameter, not a choice |
| A3 | Originator fixed cost $F > 0$ | Irreducibility condition; model collapses to ancestor without this |
| A4 | Existence of exit threshold $\bar{p}$ | Without $\bar{p}$ existing, there is no participation constraint, no welfare kink |

---

## High Referee-Risk Assumptions

| Label | Assumption | Likely Objection | Suggested Response |
|-------|-----------|-----------------|-------------------|
| A6 | Uniform $\lambda$ (patient homogeneity) | "This ignores the access benefits for under-insured patients who face high OOP costs" | Add Extension 2 (heterogeneous $\lambda$): show that the welfare gain from VBP is increasing in the share of low-$\lambda$ patients. This strengthens the case for VBP at the access margin. |
| A7 | $\beta = 1$ (originator serves full market) | "The originator doesn't serve the whole market under VBP; this overstates originator profit and understates exit risk" | Show in a robustness subsection that $\partial\bar{p}/\partial\beta > 0$ (smaller market share $\to$ higher exit threshold) and that main propositions hold for any $\beta \in (0,1)$ under mild conditions. |

---

## Hidden Assumptions Found

| Label | Hidden Assumption | Where It Matters |
|-------|------------------|-----------------|
| H1 | **Tie-breaking at $p = \bar{p}$**: At the exact exit threshold, the originator is indifferent between participating and exiting ($\Pi_O(\bar{p}) = 0$). The model must specify a tie-breaking rule: we assume the originator participates when exactly indifferent. | Welfare at the kink: $W(\bar{p}) = W(\bar{p}^+)$ (i.e., the originator stays at the threshold price). |
| H2 | **Uniqueness of $\bar{p}$**: The equation $(p - c_o) \cdot N \cdot D((1-\lambda)p) = F$ is assumed to have a unique solution in $(c_g, \infty)$. This requires the originator's variable profit to be single-peaked (first increasing then decreasing in $p$). For linear demand this holds, but for general demand it may fail. | All comparative statics on $\bar{p}$: if $\bar{p}$ is not unique, the propositions on $\partial\bar{p}/\partial\lambda$ require modification (reference to the relevant branch of the solution). |
| H3 | **No patient adverse selection**: Sicker patients who need drugs more do not disproportionately select into better insurance (adverse selection channel). This is a maintained hypothesis that separates the moral hazard analysis from the adverse selection analysis. | Demand aggregation: $Q = N \cdot D((1-\lambda)p)$ assumes all patients are equally healthy ex ante. |
| H4 | **Insurer budget funded by lump-sum taxes/premiums**: The insurer's expenditure $E_I(p) = \lambda \cdot p \cdot N \cdot D((1-\lambda)p)$ is financed by lump-sum premium payments that are not distortionary. If premiums are proportional to income (payroll tax), the funding mechanism introduces additional distortions that could affect the welfare comparison. | Welfare function $W(p)$: the social welfare calculation treats insurance transfers as neutral (funded by lump-sum transfers). |

**Recommendation:** Make H1, H2, and H3 explicit as stated assumptions in Stage 6 propositions. H4 can be acknowledged in the paper's welfare discussion.

---

## Assumption Stacking Assessment

**Total explicit assumptions:** 9 (A1–A9)
**Total binding assumptions:** 4 (A1–A4)
**Assumption stacking risk:** LOW

The model uses a minimal set of assumptions. The 4 binding assumptions (demand regularity, fixed $\lambda$, fixed cost $F > 0$, existence of $\bar{p}$) are all economically motivated and individually defensible. Non-binding assumptions (A5–A9) are either standard (quasi-linear utility, static game) or acknowledged simplifications with explicit extension paths (patient homogeneity, $\beta = 1$). No result depends simultaneously on more than 3 binding assumptions, making it feasible to attribute each result to a specific assumption.

---

## Recommendations for Stage 6

Before generating propositions:
1. **Add A4 as an explicit numbered assumption** in the paper: "Assumption (Market Viability): $\max_{p \geq c_g}(p - c_o) \cdot N \cdot D((1-\lambda)p) > F$." This is the existence condition for $\bar{p}$ flagged in Gate 2 Warning 1. State its sufficient condition for linear demand explicitly.
2. **Add H1 as an explicit tie-breaking rule**: "At $p = \bar{p}$, the originator participates (tie-breaking in favor of participation)." This ensures $W(p)$ is right-continuous at $\bar{p}$.
3. **Add H2 as an explicit uniqueness assumption** or derive it: "Assumption (Unique Threshold): $(p - c_o)D((1-\lambda)p)$ is single-peaked in $p$, so $\bar{p}$ is uniquely defined." For general demand, sufficient condition is that the hazard rate of $D$ is increasing. For linear demand, single-peakedness holds trivially.
4. **Structure propositions to reference specific binding assumptions** (A1, A2, A3, A4): each proposition statement should include "Under Assumptions A1–A4..." to make the dependence on binding assumptions transparent.
