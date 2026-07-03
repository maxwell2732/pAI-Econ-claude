# Counterexamples and Edge Cases

**Date:** 2026-06-29
**Stage:** 8 — Counterexample Finder

For each proposition, this stage systematically searches for (a) parameter configurations under which the claim fails, (b) boundary conditions that require care, and (c) robustness challenges. Every finding is labeled: [BOUNDARY], [COUNTEREXAMPLE], [ASSUMPTION_VIOLATION], or [ROBUSTNESS].

---

## [P_E1] — Existence and Uniqueness of STNE

### CE-E1-1: Corner solution — all involute [BOUNDARY]
**Condition:** π(γ) > (δ_H − δ_L) + α·max_{θ*}[n(h_L,θ*) − n(h_H,θ*)] for all θ*.
**What happens:** G(θ*) > 0 for all θ* ≥ 0. No interior zero exists. Every worker involutes (θ* = 0 is the boundary "equilibrium"). The model's fertility, welfare, and comparative statics results are vacuously satisfied but uninformative.
**Resolution:** This is exactly the violation of PC1. Must state PC1 as a maintained parameter condition. The paper should note this degenerate case explicitly: "when the wage premium is very large relative to fertility and effort costs, the rat-race has no partial-involution equilibrium — the economy is in a full-involution trap." This is actually *consistent with China's current situation* and could be discussed empirically.
**Disposition:** BOUNDARY — not a counterexample to the model's internal logic; a statement about when the model's most interesting implications apply. PC1 pins down the regime of interest.

### CE-E1-2: Non-unique equilibrium without Monotone G Condition [COUNTEREXAMPLE to Uniqueness]
**Condition:** π(γ) is exogenous (A3 holds), but μ is highly concave in L̄. Specifically: n(h_L, θ*) − n(h_H, θ*) is strongly increasing in θ* (as the marriage pool becomes more leisured, the gap between opt-out and involuter fertility widens dramatically).
**What happens:** G(θ*) can be non-monotone — rising at first (from the θ*·B(h_H) term), then falling (as the fertility differential grows rapidly), then rising again. Multiple crossings of G(θ*) = 0 exist even with exogenous π.
**Resolution:** Must impose the Monotone G Condition (MGC) as a formal assumption. A sufficient condition: "∂²n/∂L̄² ≥ 0 (μ weakly concave in L̄) OR the sensitivity of the fertility gap to θ* is bounded above by B(h_H)/α." For Cobb-Douglas μ = A·ℓ^a·L̄^b (the canonical example), one can verify MGC explicitly.
**Disposition:** COUNTEREXAMPLE (to Uniqueness only, not Existence). Requires MGC as a formal assumption. LOW-MEDIUM referee risk.

### CE-E1-3: Full-support assumption violated [ASSUMPTION_VIOLATION]
**Condition:** F(θ) has atoms (e.g., a point mass at θ̄). Then G(θ*) can have a jump discontinuity at θ̄.
**What happens:** IVT fails at the atom. The equilibrium may not exist as a threshold (may need to allow mixed strategies at θ̄).
**Resolution:** A1 already requires F to be continuous. The paper needs to state this clearly: "continuous F excludes point-mass distributions." Empirically reasonable: θ is a composite of multiple continuous factors.
**Disposition:** ASSUMPTION_VIOLATION — already handled by A1. Note explicitly in the paper.

---

## [P_C1] — Comparative Statics: dθ*/dγ < 0

### CE-C1-1: Strong income effect through meeting rate [COUNTEREXAMPLE]
**Condition:** A5 fails — income W(h) enters the meeting rate μ. Specifically: μ(ℓ_i, L̄, W_i) with ∂μ/∂W > 0 (wealthier workers attract more matches — "money buys matches").
**What happens:** Higher γ raises W_H, which raises μ for h_H workers directly. This reduces the fertility penalty of involution, creating an income-based countervailing effect: involution becomes more attractive even as it costs leisure. If ∂μ/∂W is large enough, G(θ*, γ) may be non-monotone in γ, and the comparative static dθ*/dγ < 0 could reverse.
**Resolution:** A5 explicitly excludes this channel. The paper should note this explicitly: "Assumption A5 is needed for P_C1 — if income directly affects the meeting rate (plausible in settings where wealth signals status or enables expensive dating venues), the comparative static could reverse for high-income workers." This is an interesting empirical heterogeneity: low-income workers' fertility responds strongly to overtime; high-income workers may partially compensate via expensive matchmaking (e.g., dating apps, blind date services in China).
**Disposition:** GENUINE COUNTEREXAMPLE when A5 fails. Raises external validity question. The paper should address this limitation.

### CE-C1-2: Non-monotone π(γ) [BOUNDARY]
**Condition:** π(γ) is concave and eventually decreasing — the wage premium from overtime is high at moderate γ but falls as γ → ∞ (e.g., diminishing returns to overtime, managerial oversight fails, or burnout reduces productivity).
**What happens:** ∂G/∂γ = π'(γ), which could be negative for large γ. If π'(γ) < 0 for high γ, then dθ*/dγ > 0 at those values — more intense rat-race raises the threshold (fewer involuters). This seems economically implausible for reasonable γ but is technically possible.
**Resolution:** Restrict to π'(γ) > 0, which the proof already states as an assumption. Alternatively, note that empirical evidence (working hours data in China) suggests the π(γ) is increasing in the relevant range. No modification needed; just make the assumption explicit.
**Disposition:** BOUNDARY — handled by maintaining π'(γ) > 0 as a maintained assumption.

---

## [P_C2] — Fertility Decline: dn*/dγ < 0

### CE-C2-1: Strong income effect on match surplus [ROBUSTNESS]
**Condition:** A5 fails in a different direction — income W_H raises match surplus (e.g., higher income → more children desired conditional on marriage). Then involuters, though matching later, want more children once matched, partially offsetting the timing effect.
**What happens:** The fertility of involuters rises in W_H, reducing n(h_L, θ*) − n(h_H, θ*). If the income-fertility link is strong enough, the aggregate effect dn*/dγ could be ambiguous.
**Resolution:** The biological clock formulation n_i = max{0, (T̄ − T_match)/τ} is age-based and does not contain an income fertility term — this is by model design. However, one could reasonably extend to n_i = n̄(W_i) · max{0, (T̄ − T_match)/τ} with ∂n̄/∂W > 0. This extension would require amending P_C2 to state "the timing effect dominates the income fertility effect." As currently modeled (purely timing-based fertility), P_C2 holds without additional conditions.
**Resolution decision:** Keep the biological clock specification. Note in the paper that income effects on desired fertility are abstracted away as a simplification; empirically, rising income and delayed fertility coexist in China, suggesting the timing effect dominates in this context.
**Disposition:** ROBUSTNESS CONCERN — handled by model design choice (biological clock). No modification needed; note as a limitation.

### CE-C2-2: Involuters marry later but to better-quality matches [ROBUSTNESS]
**Condition:** The meeting function allows match quality heterogeneity. High-income involuters (h_H) match with higher-quality partners (matching efficiency versus partner quality trade-off), potentially desiring more children.
**What happens:** The current model abstracts away match quality — all matches are homogeneous (Poisson meeting, exogenous match surplus conditional on meeting). If match quality improves with waiting (as in some Burdett-Coles type models), involuters might delay but match better, partially recovering fertility.
**Resolution:** The model uses a Poisson meeting rate with exogenous surplus per match. Match quality is outside the current scope. This is a well-known limitation of the meeting-function approach; reference Shimer-Smith (2000) as a possible extension. Not a counterexample to P_C2 as stated, but a scope limitation.
**Disposition:** ROBUSTNESS CONCERN — not a counterexample; a model extension. Note as future work.

---

## [P_W1] — Welfare Gap: θ* < θ^{SP}

### CE-W1-1: Involuters benefit from the thinned marriage market [COUNTEREXAMPLE attempt]
**Condition:** Involuters (h_H workers) prefer fewer potential matches — for example, if there is negative assortative matching and involuters prefer matching with other involuters (who are also hard-working and high-earning). Then ∂V(h_H)/∂L̄ < 0 for h_H workers — they prefer a thinner overall market that filters out opt-outs.
**What happens:** The externality term Ext(θ̂) in the planner's FOC (P_W1 Step 2) would have a negative component from h_H workers. If this dominates, the externality could be positive (planner wants lower threshold), reversing P_W1.
**Resolution:** The meeting function μ(ℓ_i, L̄) has L̄ = aggregate leisure across ALL workers. The model assumes all workers prefer more matches (∂μ/∂L̄ > 0 benefits all). If there is partner-quality heterogeneity and negative assortative matching, the model's meeting function needs to be augmented (different L̄ for different partner types). This is a valid concern for assortative matching settings. However, in the Chinese context, the empirical evidence shows that involution is correlated with urban young adults delaying all dating (not seeking different partners) — the market is literally thinner, not differently sorted. Maintain M1 as stated.
**Disposition:** COUNTEREXAMPLE in assortative matching settings. Requires A4/M1 assumption explicitly excluding this. Add note: "M1 assumes positive thick-market externalities for all workers; in assortative matching markets with negative sorting preferences, the externality sign could reverse."

### CE-W1-2: Rat-race productivity spillovers [ROBUSTNESS]
**Condition:** Involution generates positive productivity externalities — more involuters raises TFP, wages for all, or improves public goods (tax revenue). Then the planner might want MORE involution than the Nash equilibrium delivers.
**What happens:** The social optimum could have θ^{SP} < θ* if productivity spillovers from involution are large enough. This would reverse P_W1.
**Resolution:** The model abstracts away productivity externalities. A more complete model would add a production externality term to W^{SP}. The net sign depends on the balance between (positive) productivity externality and (negative) fertility/leisure externality. Empirically, China's productivity growth has been accompanied by severe fertility decline — the fertility channel arguably dominates in the current context. Note as a scope limitation: "The model focuses on the fertility-leisure externality and abstracts away from productivity spillovers from overwork."
**Disposition:** ROBUSTNESS CONCERN — valid limitation; not a counterexample given the model's scope. Note explicitly.

---

## [P_M1] — Optimal Tax

### CE-M1-1: Minimum wage / wage floor interaction [BOUNDARY]
**Condition:** The corrective tax τ* is large — it may push the effective net-of-tax wage W_H − τ* below W_L (or below a legal minimum wage). If W_H − τ* < W_L, the tax "overshoots" — no worker would choose h_H even at θ = ∞, creating a full opt-out equilibrium.
**What happens:** For the tax to implement θ^{SP} (not corner θ* = ∞), must have W_H − τ* ≥ W_L, i.e., τ* ≤ π(γ). This is a feasibility constraint on the optimal tax. Formally: τ_max = π(γ). If the externality is so large that τ* > τ_max, the planner cannot achieve θ^{SP} via a pure overtime tax.
**Resolution:** Add a feasibility condition to P_M1 (Corollary): "provided τ* ≤ π(γ), the overtime tax uniquely implements θ^{SP}. When τ* > π(γ), a broader policy instrument (subsidy to opt-out workers, leisure subsidies, norm campaigns targeting B(h_H)) is required." This enriches the policy section.
**Disposition:** BOUNDARY — important policy nuance. Add to P_M1 as a note.

### CE-M1-2: Tax on hours vs. firm-side mandate [ROBUSTNESS]
**Condition:** The model taxes individuals' overtime decision. In practice, Chinese overtime culture is firm-driven (firms demand h_H). An individual-side tax may be unenforceable. A firm-side mandate (maximum hours law) may have different equilibrium effects.
**What happens:** A firm-side mandate is a quantity constraint, not a price instrument. Under the quantity constraint, the equilibrium is forced to θ* = θ_mandate (all workers with h_H option removed). This differs from the tax because: (a) it does not allow workers with very high θ to voluntarily pay the social cost and still involute; (b) it changes the distribution of worker types who involute. The social welfare comparison depends on the distribution F(θ).
**Resolution:** The model derives the Pigouvian tax as the benchmark. Firm-side mandates are discussed as an alternative policy in Section 5 (Economic Interpretation), noting they differ from the tax in the type-distribution of who bears the cost. The tax is more efficient; the mandate is simpler to enforce. Flag for Stage 9.
**Disposition:** ROBUSTNESS CONCERN — policy design issue. Note in Stage 9 (Economic Interpretation) discussion.

---

## [P_U1] — Multiplicity / Tipping (Extension)

### CE-U1-1: No multiplicity without strategic complementarity [BOUNDARY]
**Condition:** ∂π/∂Φ is small or zero (weak peer effects). Then G_e ≈ G (nearly exogenous π) and the Monotone G Condition restores uniqueness.
**What happens:** P_U1 collapses to the baseline P_E1. No tipping, no multiplicity.
**Resolution:** Expected — P_U1 explicitly requires strong enough strategic complementarity (∂π/∂Φ large). The threshold for multiplicity is precisely the GAP identified in Stage 7. Add explicit parametric bounds.
**Disposition:** BOUNDARY — defines the scope of P_U1. Not a counterexample.

### CE-U1-2: Stability of equilibria under best-response dynamics [COUNTEREXAMPLE attempt]
**Condition:** The middle equilibrium (θ₂*) in P_U1 is labeled "unstable." But what if the dynamics are cyclic (no stable fixed point) due to overshooting?
**What happens:** In discrete-time best-response dynamics, overshooting can generate limit cycles rather than convergence to either θ₁* or θ₃*. This would undermine the tipping narrative.
**Resolution:** Standard result: if π(Φ; γ) is sufficiently smooth and the complementarity is not too strong (|∂π/∂Φ| < B(h_H)/f(θ*) at the stable equilibria), continuous-time dynamics converge globally to one of the stable equilibria. State explicitly that P_U1's dynamics are in continuous time or require bounded complementarity.
**Disposition:** BOUNDARY — handled by specifying continuous-time dynamics or bounded complementarity. Note in the extension.

---

## [P_B1] — Boundary Results

### CE-B1-1: γ → 0 limit with non-trivial fertility differential [COUNTEREXAMPLE to clean formula]
**Condition:** As γ → 0, π(γ) → 0, but α·[n(h_L, θ*) − n(h_H, θ*)] does not vanish — the fertility differential persists even when the wage premium is small.
**What happens:** The limit θ* → (δ_H − δ_L)/B(h_H) is only correct when the fertility differential term is negligible at the limiting θ̄. If the fertility differential is large (α large, or ℓ_H ≪ ℓ_L → μ very low for involuters), the fertility term can dominate and the limit differs.
**Resolution:** Present the γ → 0 limit as: θ*₀ solves θ*·B(h_H) − α·[n(h_L,θ*₀) − n(h_H,θ*₀)] − (δ_H − δ_L) = 0. The formula θ* → (δ_H − δ_L)/B(h_H) is the case where α = 0 (fertility not valued) or the fertility differential is second-order. Acknowledge this in P_B1.
**Disposition:** BOUNDARY — the stated formula requires α small. Note: "In the limit γ → 0, if fertility costs are negligible (α → 0), θ* → (δ_H − δ_L)/B(h_H)."

---

## Summary: Counterexample Landscape

| Finding | Severity | Proposition Affected | Action Required |
|---------|---------|---------------------|----------------|
| CE-E1-1: Full-involution corner | LOW | P_E1 | Add PC1 explicitly; discuss as "trap" case |
| CE-E1-2: Non-unique STNE (no MGC) | MEDIUM | P_E1 (Uniqueness) | Formalize MGC as Assumption; verify for Cobb-Douglas μ |
| CE-E1-3: Atoms in F | LOW | P_E1 | Already handled by A1; note in paper |
| CE-C1-1: Income enters μ | HIGH | P_C1, P_C2 | A5 handles this; discuss as key limitation with heterogeneity |
| CE-C1-2: Non-monotone π(γ) | LOW | P_C1 | Handled by π'(γ) > 0; note assumption |
| CE-C2-1: Income-fertility | LOW | P_C2 | Model design (biological clock); note as limitation |
| CE-C2-2: Match quality | LOW | P_C2 | Outside model scope; cite Shimer-Smith as extension |
| CE-W1-1: Negative sorting preference | MEDIUM | P_W1 | Note: M1 excludes negative-externality settings; justify empirically |
| CE-W1-2: Productivity spillovers | MEDIUM | P_W1 | Acknowledge scope limitation; argue fertility dominates empirically |
| CE-M1-1: Tax infeasibility | MEDIUM | P_M1 | Add feasibility condition τ* ≤ π(γ); note broader instruments |
| CE-M1-2: Firm-side mandate | LOW | P_M1 (policy) | Discuss in Stage 9 Economic Interpretation |
| CE-U1-1: No multiplicity | LOW | P_U1 | Defines scope; expected |
| CE-U1-2: Cyclic dynamics | LOW | P_U1 | Note continuous-time dynamics assumption |
| CE-B1-1: γ→0 limit | LOW | P_B1 | Qualify formula with α small |

**High-severity findings (1):**
- CE-C1-1 (income enters μ) — the most substantive limitation. A5 is doing real work. Must be clearly stated and discussed.

**Medium-severity findings (4):**
- CE-E1-2 (MGC needed for uniqueness)
- CE-W1-1 (negative sorting)
- CE-W1-2 (productivity spillovers)
- CE-M1-1 (tax feasibility)

All medium-severity findings are resolved by either: (a) a formal assumption already in place or easily added, or (b) an empirical argument for why the China context matches the model's maintained assumptions.

**No counterexample is fatal to the core propositions under the model's stated assumptions.**

---

## Recommendation for HiL-6

Present to researcher:
1. **CE-C1-1** (income enters μ): A5 excludes it, but this is the paper's most important external validity limitation. Suggest adding one paragraph to the Economic Interpretation section explicitly discussing the "money buys matches" channel and citing evidence that the timing effect dominates for urban Chinese youth in the relevant γ range.
2. **CE-E1-2** (Monotone G Condition): Need to formalize MGC as a maintained assumption. Propose Cobb-Douglas μ = A·ℓ^a·L̄^b as the parametric example to verify uniqueness explicitly.
3. **CE-M1-1** (tax feasibility): Add a feasibility condition and briefly discuss what happens when τ* > π(γ) — suggests norm-based interventions become necessary.
4. **CE-W1-1 + CE-W1-2** (negative sorting; productivity spillovers): Present together as a "model scope" bullet in the limitations section; these are expected abstractions for a theoretical framework paper.
