# Assumption Audit

**Date:** 2026-06-29
**Stage:** 5 — Assumption Audit

---

## Extracted Assumptions

### [A1] Full-Support Continuous Type Distribution
**Statement:** θ_i ~ F(θ) with density f(θ) > 0 on [0,∞); F is absolutely continuous.
**Where used:** Section 1 (Agents); Section 7 (Equilibrium concept — threshold requires full support to pin down θ*)

**Q1 — Necessity:** PROBABLY NECESSARY
**Justification:** Continuity of F ensures the indifference condition V(h_H; θ*, θ*) = V(h_L; θ*, θ*) generically has an interior solution for θ*. With a discrete type distribution, the threshold may not exist as a pure-strategy equilibrium (mixed strategies required). Full support on [0,∞) ensures both involuters and non-involuters exist in equilibrium.

**Q2 — Economic motivation:** STRONG MOTIVATION
**Real-world counterpart:** Worker types (Confucian norms, family pressure, responsibility sense) vary continuously across the population. No natural "mass point" of identical types exists; continuous F is the natural idealization.

**Q3 — Standard in literature:** STANDARD
**Notes:** Continuous types with full support are standard in threshold participation models (global games, technology adoption, bank run models). Identical to the assumption used in Burdett-Coles (1997) for the type distribution.

**Q4 — What breaks if relaxed:** With a discrete type distribution (e.g., two types θ_L < θ_H), the threshold equilibrium degenerates to a pure-type equilibrium where all high-θ workers involute and all low-θ workers do not. The key comparative statics (how the threshold shifts with γ) become statements about regime switches rather than smooth comparative statics. Results qualitatively similar but proof technique changes. Manageable extension.

**Referee risk:** LOW
**Binding:** NO (results hold qualitatively with discrete types, though with different proof technique)

---

### [A2] Single-Crossing Condition (SC)
**Statement:** V(h_H; θ, θ*) − V(h_L; θ, θ*) is strictly increasing in θ. Established because the non-pecuniary benefit θ·B(h_H) is linear in θ with B(h_H) > 0, and the fertility term α·n(h, θ*) does not depend on θ directly.
**Where used:** Section 7 (Equilibrium concept — ensures threshold equilibrium exists and is monotone)

**Q1 — Necessity:** NECESSARY
**Justification:** Without SC, the best-response to involution might not be monotone in θ, and the threshold equilibrium concept would not apply. The paper's main structure (θ > θ* → involute) requires SC.

**Q2 — Economic motivation:** STRONG MOTIVATION
**Real-world counterpart:** The assumption that higher-θ workers (stronger Confucian norms, greater family pressure) derive more non-pecuniary benefit from involution — and therefore have a higher incentive to involute — is the direct economic content of the type θ. SC holds by construction when θ is the "propensity to involute."

**Q3 — Standard in literature:** STANDARD
**Notes:** Single-crossing is the standard condition for separating equilibria in signaling (Spence 1973), for monotone optimal contracts in screening (Mirrlees 1971), and for threshold equilibria in participation games. It is non-controversial when the type is defined as the propensity to take the action in question.

**Q4 — What breaks if relaxed:** If SC fails (e.g., high-θ workers also bear higher fertility costs from involution, reversing the sign at high θ), the equilibrium would have a non-monotone structure — some mid-range types involute while low and high types do not. This would require a more complex characterization. However, the economic motivation for SC is strong enough that this case is unlikely to arise in the present model.

**Referee risk:** LOW
**Binding:** YES (threshold equilibrium concept requires SC)

---

### [A3] Exogenous Wage Premium (Assumption E)
**Statement:** The wage premium π = W_H − W_L = π(γ) depends only on the rat-race intensity γ, NOT on the aggregate involution rate Φ = 1−F(θ*).
**Where used:** Section 7 (Equilibrium concept — ensures BR map is monotone, guaranteeing unique threshold)

**Q1 — Necessity:** NECESSARY FOR UNIQUENESS, NOT FOR EXISTENCE
**Justification:** If π also depends on Φ (strategic complementarity), the best-response map may be non-monotone and multiple thresholds may exist. Assumption E ensures a unique threshold. The main result (θ* < θ^{SP}) does not require uniqueness per se, but comparative statics are cleaner under uniqueness.

**Q2 — Economic motivation:** WEAK MOTIVATION
**Real-world counterpart:** In practice, the wage premium to involution may well depend on how many coworkers also involute (the rat-race is a strategic equilibrium in hours). Assuming π is exogenous is a tractability assumption that misses the strategic complementarity central to the "involution spiral" narrative. This is the paper's most significant simplification.

**Q3 — Standard in literature:** COMMON BUT DISPUTED
**Notes:** Landers et al. (1996) treat the wage premium as endogenous (determined by the signaling equilibrium). This paper simplifies to exogenous π for the baseline, which is weaker than Landers et al. The extension to endogenous π (multiplicity) is economically important and should be treated as a separate Proposition.

**Q4 — What breaks if relaxed:** If π = π(Φ, γ) with π increasing in Φ, the fixed-point map for θ* may have multiple solutions. Two equilibria may exist: a low-θ* equilibrium (high involution, low fertility) and a high-θ* equilibrium (low involution, high fertility). A policy intervention (norm shift, tax) could trigger a transition from the bad equilibrium to the good one — the "tipping" narrative. This is the extension the Journal Positioning Referee flagged as the highest-upside result. Address in Proposition 3 (Extension).

**Referee risk:** HIGH — referees familiar with rat-race models will note that the standard models have endogenous wage premia and ask why this model simplifies away from this feature in the baseline.
**Binding:** YES (for uniqueness)

---

### [A4] Thick-Market Meeting Function (Assumption M1)
**Statement:** μ(ℓ_i, L̄): ℝ₊ × ℝ₊ → ℝ₊ is strictly increasing and concave in both arguments; μ(0, L̄) = 0 for all L̄ (no meetings without leisure); μ(ℓ_i, 0) → 0 as L̄ → 0.
**Where used:** Section 2 (Timing — meeting rate in Period 2); Section 8 (Welfare — externality operates through ∂μ/∂L̄ > 0)

**Q1 — Necessity:** NECESSARY
**Justification:** The thick-market externality — the paper's key welfare mechanism — requires ∂μ/∂L̄ > 0. Without this, each worker's involution decision does not affect others' meeting rates, and there is no externality, no welfare gap, and no role for policy. The concavity in ℓ_i is needed for interior comparative statics.

**Q2 — Economic motivation:** STRONG MOTIVATION
**Real-world counterpart:** Meeting partners requires shared social contexts (events, gatherings, leisure activities). When more workers have leisure, there are more potential partners in social settings → higher meeting probability for everyone. This is a direct analogue of the thick-market externality in labor search (Diamond 1982).

**Q3 — Standard in literature:** STANDARD
**Notes:** Thick-market meeting functions (matching functions M(U, V) with both arguments positive) are standard in search-matching models (Mortensen-Pissarides, Hosios 1990). The marriage application is an extension, but the functional form is standard.

**Q4 — What breaks if relaxed:** If μ = μ(ℓ_i) only (individual meeting rate depends only on own leisure, not on L̄), there is no externality. The Nash equilibrium is efficient (each agent fully internalizes their own meeting rate), and θ* = θ^{SP}. The entire welfare analysis collapses. The assumption is therefore load-bearing for the central result.

**Referee risk:** MEDIUM — some referees may question whether the thick-market externality is empirically relevant in the marriage market (vs. the labor market). A robustness discussion (Section 9) noting that results hold under any ∂μ/∂L̄ > 0, no matter how small, would address this.
**Binding:** YES (essential for the cross-market externality)

---

### [A5] Assumption A — Leisure Dominates Income in Meeting Rate
**Statement:** The elasticity of μ with respect to ℓ_i exceeds the elasticity of partner attractiveness (as perceived by potential partners) with respect to wage income W(h_i). Equivalently: income affects match surplus conditional on meeting, but NOT the meeting rate μ itself.
**Where used:** Section 4 (Preferences — income does not enter μ directly; income affects attractiveness but only conditional on a meeting having occurred)

**Q1 — Necessity:** NECESSARY FOR SIGN RESULTS
**Justification:** Without Assumption A, the income effect of involution (higher wages → more attractive partner → higher effective meeting probability) could dominate the time effect (less leisure → lower μ), potentially reversing the comparative statics (higher γ → more involution → better marriage outcomes for involuters). The main result (higher γ → lower fertility) requires the time effect to dominate at the extensive meeting margin.

**Q2 — Economic motivation:** WEAK MOTIVATION
**Real-world counterpart:** In high-earning professional urban environments, income clearly matters for partner attractiveness (housing affordability, lifestyle signals, social status). The assumption that income does NOT enter the meeting rate (only the match surplus) is a clean but imperfect separation. The economic argument is that *finding* a partner requires time (being in social settings), while *being chosen* as a partner depends on income. This distinction is economically interpretable but is a modeling simplification.

**Q3 — Standard in literature:** NON-STANDARD
**Notes:** Most marriage search models treat meeting rates as exogenous or as functions of search intensity only. The separation between meeting rate (leisure-determined) and match surplus (income-influenced) is a novel functional form choice in this paper. No prior model separates these two channels explicitly in this way.

**Q4 — What breaks if relaxed:** If income enters μ(ℓ_i, W_i, L̄), the net effect of involution on fertility becomes ambiguous without parameter restrictions: involution reduces ℓ_i (↓ fertility) but raises W_i (↑ meeting rate → ↑ fertility). Sign of Proposition 2 (comparative statics of n* in γ) requires the restriction. The paper should state this as a formal assumption and discuss its plausibility.

**Referee risk:** HIGH — the Brutal Skeptic flagged this as the key vulnerability. Referees will ask for empirical or theoretical motivation.
**Binding:** YES (for the sign of comparative statics in γ and for welfare ranking)

---

### [A6] Biological Fertility Clock — Linear Fertility Function
**Statement:** n_i = max{0, (T̄ − T_match,i)/τ} where T̄ is the biological cutoff age and τ is the inter-birth interval. Fertility is a linear, deterministic function of time-to-match.
**Where used:** Section 2 (Timing — fertility outcome); Section 4 (Preferences — α·n_i in utility)

**Q1 — Necessity:** PROBABLY NECESSARY AS STATED; weaker versions work
**Justification:** A decreasing relationship between T_match and n is necessary for the fertility comparative statics. The linear form is the simplest tractable specification. The max{0, ·} ensures non-negativity. A strictly concave n(T_match) would deliver similar qualitative results.

**Q2 — Economic motivation:** STRONG MOTIVATION
**Real-world counterpart:** Biological age limits on childbearing (menopause, declining fertility with age) create a direct negative relationship between marriage timing and completed fertility. Later marriage → fewer years in the fertile window → fewer children. This is one of the most empirically robust relationships in demography.

**Q3 — Standard in literature:** COMMON BUT DISPUTED
**Notes:** Linear fertility functions are a tractable simplification. Demographic models typically use more complex functions (Poisson births conditional on marriage duration, age-specific fertility rates). The linear form is a reasonable first-order approximation for a theoretical paper.

**Q4 — What breaks if relaxed:** With a convex n(T_match) (fertility declines slowly at first then sharply), the marginal effect of delaying marriage is larger at later ages — the welfare gap would be convex in involution rate rather than linear. Qualitative results are unchanged; quantitative magnitudes differ.

**Referee risk:** LOW
**Binding:** NO (qualitative results robust to functional form of n(T_match), as long as n is decreasing in T_match)

---

### [A7] Binary Hours Choice
**Statement:** h_i ∈ {h_L, h_H}; workers choose between two hours regimes, not a continuous hours choice.
**Where used:** Throughout; especially Section 5 (Action spaces)

**Q1 — Necessity:** PROBABLY NECESSARY FOR THIS MODEL'S STRUCTURE
**Justification:** The binary choice is essential for the threshold equilibrium structure (continuous choice would generate an interior optimization problem with a very different equilibrium concept). The binary structure also captures the "996 vs. standard" dichotomy in Chinese labor markets, which is empirically relevant.

**Q2 — Economic motivation:** STRONG MOTIVATION
**Real-world counterpart:** Labor contracts in Chinese professional industries frequently offer binary regimes (standard 9-to-6 contracts vs. de facto 996 schedules), with the transition from one to the other being discontinuous. The binary model captures this institutional feature.

**Q3 — Standard in literature:** STANDARD in participation games
**Notes:** Binary action spaces are standard in the rat-race and participation game literature (Akerlof 1976 models a binary choice between conforming and not conforming to norms).

**Q4 — What breaks if relaxed:** With continuous h ∈ [h_L, h_H], the equilibrium would have a FOC-based interior solution for each type θ — a more complex problem without a clean threshold structure. The welfare comparison would still hold (over-work relative to social optimum) but the characterization would require a different proof technique. The Persona Council recommended keeping the binary model for the paper's main result.

**Referee risk:** LOW — binary action spaces are standard and empirically motivated.
**Binding:** YES (for the threshold equilibrium structure)

---

### [A8] No Direct Match Quality Heterogeneity
**Statement:** All potential partners are identical in quality (or the paper models one-sided search where quality is irrelevant). There is no assortative matching — the question of *who* matches with *whom* is not modeled.
**Where used:** Section 2 (Timing — "accept first offer"); Section 6 (Outcome function)

**Q1 — Necessity:** PROBABLY NECESSARY FOR TRACTABILITY
**Justification:** Adding partner quality heterogeneity would require modeling the full Burdett-Coles (1997) or Shimer-Smith (2000) equilibrium, which is a paper in itself. For the core mechanism (leisure → meeting rate → fertility), match quality is not the relevant object. The paper's contribution is about *timing* of marriage, not *quality* of match.

**Q2 — Economic motivation:** WEAK MOTIVATION
**Real-world counterpart:** In practice, partner quality clearly varies. The assumption that workers "accept the first offer" is a strong simplification. However, it isolates the time-to-match channel cleanly.

**Q3 — Standard in literature:** COMMON
**Notes:** Many marriage search models (especially those focusing on fertility timing) abstract from quality heterogeneity to focus on search duration. This is acceptable for a theoretical paper about fertility timing.

**Q4 — What breaks if relaxed:** If partners differ in quality, workers would apply a reservation value strategy (reject some matches). The meeting rate would still affect search duration, but now two effects operate: (a) fewer meetings → longer search; (b) pickier searchers → longer search. The interaction between quality screening and leisure compression is an interesting extension but is out of scope.

**Referee risk:** MEDIUM — referees may ask why quality heterogeneity is ignored given that Burdett-Coles (1997) explicitly models it. Response: "We isolate the timing/fertility channel; quality-based sorting is an orthogonal mechanism addressed in cited literature."
**Binding:** NO (qualitative results unchanged with quality heterogeneity; only quantitative magnitudes affected)

---

## Binding Assumptions Summary

| Label | Assumption | Binding Reason |
|-------|-----------|----------------|
| A2 | Single-crossing (SC) | Threshold equilibrium requires monotone best-response in θ |
| A3 | Exogenous wage premium (E) | Uniqueness of threshold equilibrium |
| A4 | Thick-market meeting function (M1) | Cross-market externality requires ∂μ/∂L̄ > 0 |
| A5 | Leisure dominates income in meeting rate (A) | Sign of comparative statics in γ; welfare ranking |
| A7 | Binary hours choice | Threshold equilibrium structure |

---

## High Referee-Risk Assumptions

| Label | Assumption | Likely Objection | Suggested Response |
|-------|-----------|-----------------|-------------------|
| A3 | Exogenous π | "Standard rat-race models have endogenous π — why simplify?" | State as tractability assumption; present endogenous-π multiplicity result as Proposition 3 (Extension) |
| A5 | Leisure dominates income in μ | "High-earning involuters may be more attractive partners — why assume the time effect dominates?" | Formalize as Assumption A with explicit elasticity condition; show results hold when leisure-elasticity of μ > income-elasticity; provide comparative statics on this elasticity |

---

## Hidden Assumptions Found

| Label | Hidden Assumption | Where It Matters |
|-------|------------------|-----------------|
| H1 | Tie-breaking at θ*: workers exactly at θ* are indifferent; assume they choose h_L (no measure-zero effect on equilibrium) | Threshold definition; does not affect equilibrium outcomes since F is continuous |
| H2 | No re-matching: workers who fail to match in Period 2 remain single and receive n = 0 (no "second chance" search) | Fertility outcome at the boundary; implies T̄ is effectively the end of Period 2. Relaxing this requires a dynamic search model. |
| H3 | Common prior on F(θ): all workers know the population distribution of types and can compute the equilibrium threshold θ*. This is a rational-expectations / common-knowledge assumption. | Equilibrium consistency (each worker best-responds to the aggregate threshold) |
| H4 | No equilibrium in the marriage market between involuters: the paper assumes that both involuters and non-involuters search in the same marriage market pool. If involuters self-select into different social settings (work-heavy social circles), the effective L̄ facing non-involuters may differ from the model's L̄. | Aggregate leisure pool computation |

**Recommendation:** Make H1 and H3 explicit in the proposition statements. Address H2 in a footnote (single-period search simplification). Address H4 in Section 9 (robustness) as a potential source of over-statement of the externality.

---

## Assumption Stacking Assessment

**Total explicit assumptions:** 8 (A1–A8)
**Total binding assumptions:** 5 (A2, A3, A4, A5, A7)
**Assumption stacking risk:** MEDIUM

The paper imposes five binding assumptions simultaneously, and two of them (A3 and A5) are high-referee-risk. However, the stacking is not problematic for attribution: each binding assumption drives a distinct component of the result. A2 and A7 establish the threshold equilibrium structure (not the welfare result). A4 establishes the externality (not the sign). A5 establishes the sign of the comparative statics (not the existence of the externality). A3 establishes uniqueness (not the welfare gap). This clean separation means that the main welfare result (θ* < θ^{SP}) depends primarily on A4, while the comparative statics sign depends on A4 + A5. Referees can be directed to these specific assumptions when challenging specific results.

---

## Recommendations for Stage 6

Before generating propositions:
1. **State all binding assumptions formally** (A2–SC, A3–E, A4–M1, A5–A, A7–Binary) at the start of the results section, in the order they are invoked. This prevents assumption laundering.
2. **Proposition 1 (Threshold Existence)** should invoke A1, A2, A3, A7 and prove uniqueness of θ* under these assumptions.
3. **Proposition 2 (Comparative Statics)** should invoke A4 for the externality direction and A5 for the sign of ∂n*/∂γ. State explicitly which direction fails if A5 is violated.
4. **Proposition 3 (Welfare Gap)** should invoke A4 for the externality and the social planner's FOC. Does not require A5 (the welfare gap exists even if income effects dominate leisure effects, since the externality is present regardless).
5. **Proposition 4 (Policy)** should derive the optimal τ* without requiring A5. The sign of τ* (positive = overtime tax) follows from θ^{SP} > θ* which follows from A4 alone.
6. **Extension (Multiplicity):** After the baseline propositions, relax A3 and show that when π = π(Φ, γ) with ∂π/∂Φ > 0, multiple threshold equilibria can exist, generating a "tipping" dynamics. This is presented as a Remark or separate Proposition, not part of the main result chain.
