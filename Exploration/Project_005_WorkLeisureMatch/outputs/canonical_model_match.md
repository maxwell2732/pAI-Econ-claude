# Canonical Model Match

**Date:** 2026-06-29
**Stage:** 3b — Canonical Model Matching

---

## 1. Research Puzzle Summary

Workers are heterogeneous in type θ (a composite of Confucian duty norms, subjective responsibility, and family economic pressure). Each worker makes a binary involution choice h ∈ {h_L, h_H}; a threshold equilibrium θ* partitions workers into involuters and opt-outs. Each involuter's reduced leisure ℓ = T − h_H < T − h_L thins the marriage market meeting pool, depressing the aggregate marriage rate and completed fertility. The Nash equilibrium threshold θ* lies below the social planner's θ^{SP}: too many workers involute, and the fertility gap Δn = n^{SP} − n* > 0 is increasing in the rat-race intensity γ. The paper seeks: threshold existence/uniqueness, comparative statics on the marriage rate and fertility, welfare comparison, and optimal corrective policy.

---

## 2. Candidate Families

### Candidate 1: Search Models (endogenous search intensity variant)
- **Fit rationale**: The marriage market in this paper is a Poisson search market in which agents meet potential partners at a rate determined by their leisure time. This maps directly onto the Search Models template's "When to Use This Model" condition: "When the question concerns reservation values, search duration, or the option value of continued search" and "When agents face a sequential decision: sample one option at a time and decide to accept or search further." The novel twist is that search intensity (leisure ℓ) is not a free choice but is the residual of the labor market decision — this is the "Endogenous search intensity: agents choose how hard to search each period" extension described in the model pattern document under "How to Extend the Model."
- **Key structural match**: The marriage market meeting rate μ(ℓ_i, L̄) is the search model's "offer arrival rate"; leisure ℓ_i is the "search intensity"; marriage is the "acceptance" decision; completed fertility n(T_match) is a downstream consequence of expected match timing. The search externality (each agent's ℓ affects L̄ which affects others' meeting rates) maps to the model pattern's "Welfare Implications" section: "In equilibrium, agents may search too little (Diamond 1982: hold-up problem) or too much (thick externality)."
- **Potential gap**: The canonical search model does not have a cross-market component — search intensity in the marriage market is typically exogenous or chosen freely, not distorted by a labor market equilibrium. The rat-race labor market and the threshold participation structure are not part of the standard search model family and must be added as new elements.
- **Closest canonical ancestor**: Mortensen (1988), "Matching: Finding a Partner for Life or Otherwise" (AJS, 94 supplement) — marriage search with Poisson meetings. Extended by Burdett-Coles (1997) for heterogeneous types.

### Candidate 2: Signaling (Spence-type)
- **Fit rationale**: The rat-race component has a signaling flavor. Under the Signaling template's "When to Use This Model" conditions: "when an informed party wants to communicate type to an uninformed party who conditions actions on observable signals." In the labor market, workers with high θ (high work ethic) signal their commitment by choosing h_H, and employers infer type from observed hours. This is precisely the structure of Landers, Rebitzer, Taylor (1996).
- **Key structural match**: h_H is the signal; θ is the sender's private type; the employer (receiver) conditions wages/promotions on observed hours; single-crossing holds because high-θ workers have lower marginal cost of working long hours (due to their intrinsic motivation).
- **Potential gap**: In this model, the worker's type θ is the *propensity to involute*, not a productivity type. The "signal" h_H does not convey information about productivity — it conveys commitment. More importantly, the key research question is not about separating vs. pooling equilibria in the labor market but about the participation threshold and the cross-market externality. Signaling handles the labor market component but contributes nothing to the marriage market search analysis.
- **Closest canonical ancestor**: Landers, Rebitzer, Taylor (1996) — rat-race as signaling in law firm hours.

### Candidate 3: Adverse Selection
- **Fit rationale**: The Adverse Selection template applies "when there is asymmetric information between a buyer and seller, and the informed party's type determines both their quality and their willingness to trade." In the labor market, employers do not directly observe θ (worker type) and must infer it from observed hours. This is the classic Landers et al. (1996) setup: employers prefer high-commitment workers (high θ) and use hours as a screening device, generating a rat-race in hours.
- **Key structural match**: Employer (uninformed) prefers high-θ workers; workers know their own θ; hours h serve as the screening device; equilibrium over-work is the adverse selection equilibrium outcome.
- **Potential gap**: Adverse selection is a framework for the labor market component only. It has no traction on the marriage market search or fertility dimensions. Moreover, in the proposed model, the key threshold θ* is determined by workers' own optimization (not by employer screening), so the direction of modeling is worker-side participation rather than employer-side screening.
- **Closest canonical ancestor**: Landers, Rebitzer, Taylor (1996) — adverse selection on work commitment in professional services.

### Candidate 4: Overlapping Generations / Life-Cycle Model
- **Fit rationale**: The model has a natural two-period structure (Period 1: young adult labor market / involution choice; Period 2: marriage search and fertility decision during prime family-formation years). The OLG/Life-Cycle template's "When to Use This Model" conditions include "Life-cycle models of savings, labor supply, and consumption, where the individual maximizes over multiple periods." The fertility decision as a function of Period 1 labor choices maps to the "bequest" or "dynasty" motive in the OLG literature.
- **Key structural match**: Period 1 labor market → Period 2 marriage/fertility outcome. The two-period structure limits algebra while capturing the temporal separation between the rat-race decision and the demographic outcome.
- **Potential gap**: The OLG template focuses on savings-investment dynamics and capital accumulation, which are not the object of interest here. The marriage market search and the rat-race externality are outside the OLG model's canonical scope. OLG is a structural frame, not the core mechanism.
- **Closest canonical ancestor**: Becker and Lewis (1973) quantity-quality model of fertility — a life-cycle model of family formation with a budget constraint on time and money.

---

## 3. Recommended Baseline Model

**Recommended Baseline: Search Models (Poisson marriage search with endogenous leisure-determined intensity)**

**Primary justification:**
The core novel mechanism of this paper operates in the marriage market: workers who over-work have less leisure, which reduces their meeting rate in the Poisson marriage search process. This is the direct application of the "Endogenous search intensity" extension of the canonical search model. The canonical search framework provides the equilibrium concept (stopping rule / reservation value), the meeting technology (Poisson process with rate μ(ℓ)), and the welfare benchmark (Hosios condition for search externality). The labor market component (rat-race + threshold equilibrium) is a *new element* that distorts the leisure endowment, but the equilibrium concept and welfare analysis are anchored in the search framework. Grounding the model in the search family ensures mathematical tractability: the Poisson meeting function has well-known steady-state and two-period formulations, the search externality welfare result is established, and comparative statics of the meeting rate with respect to search intensity are standard.

**Canonical baseline setup (from Search Models template):**
- **Agents**: A continuum of workers [0,1], each seeking a partner; partners are drawn from the same pool (symmetric, one-sided search for simplicity) or from an equal-measure pool (two-sided)
- **Timing**: Two periods. Period 1: labor market choice h ∈ {h_L, h_H}; leisure ℓ = T − h determined. Period 2: marriage market search; Poisson meetings at rate μ(ℓ); upon matching, fertility n(T_match) realized.
- **Information**: Full information about own type θ and the threshold equilibrium θ*; no private information about potential partners' types (symmetric partners assumed)
- **Equilibrium concept**: Nash equilibrium in Period 1 labor choices (threshold θ* determined by indifference condition); in Period 2, each searcher accepts the first offer (reservation value: accept all potential partners for simplicity, or accept with probability p conditional on match quality)
- **Key constraint**: Time constraint: ℓ + h = T; fertility function n(T_match) decreasing in time-to-match T_match

**Inheritance list (for Stage 4):**
- Poisson meeting technology: meetings arrive at rate μ(ℓ_i, L̄) where ℓ_i is individual leisure and L̄ = E[ℓ] is the aggregate leisure pool
- Two-period structure (labor period + search period)
- Equilibrium concept: Nash in labor choices; optimal stopping (accept on first meeting) in search
- Search welfare benchmark: Hosios-type welfare comparison between Nash and social planner
- Expected time-to-match E[T_match] = 1/μ(ℓ_i, L̄) (Poisson); fertility n = max{0, (T̄ − T_match)/τ}

**What must be added or modified:**
1. **Rat-race labor market with heterogeneous types**: Workers have type θ ~ F(θ) ∈ [0, ∞) capturing Confucian norms, responsibility, family pressure. In Period 1, each worker chooses h ∈ {h_L, h_H}; the Nash threshold θ*(γ) is determined by the indifference condition V(h_H; θ*, γ) = V(h_L; θ*, γ). This replaces the standard search model's single-agent optimization with a game among heterogeneous workers.
2. **Cross-market externality**: Each worker who involutes reduces L̄ = (1/T) ∫ ℓ(θ) dF(θ), which reduces the meeting rate for all searchers via the aggregate leisure pool function M(ℓ_i, L̄). This is the thick-market externality that makes the Nash threshold sub-optimal.

---

## 4. Recommended Extensions

**Recommended Extension 1: Multiple Equilibria (Strategic Complementarity)**
The wage premium to involution may itself be increasing in the share of involuters Φ = 1 − F(θ*): when most workers involute, the labor market norm shifts, raising the penalty for non-involution, which lowers θ*, attracting more involuters. If V(h_H; θ, Φ) − V(h_L; θ, Φ) is increasing in Φ (strategic complementarity), the fixed-point map for θ* may have multiple solutions — a low-θ* "trap" equilibrium (universal involution) and a high-θ* "escape" equilibrium. This extension enables analysis of demographic "tipping": a society can tip from the good equilibrium (partial involution, high fertility) to the bad equilibrium (universal involution, fertility collapse). Pursue this extension after the baseline characterization is complete; it is the result most likely to push the paper toward REStud or QJE.

**Recommended Extension 2: Two-Sided Marriage Market (Men and Women as Separate Populations)**
The baseline is one-sided (or symmetric). A natural extension considers men and women as separate populations with potentially different θ distributions, different labor market incentives, and different fertility costs. If women's involution reduces leisure more (due to career penalties) and also bears more of the biological fertility cost, the model generates gender-asymmetric comparative statics: a policy that reduces female over-work has a larger effect on fertility than a policy that reduces male over-work. This extension connects to the empirical regularity that women's labor force participation and fertility are negatively correlated within urban China. Pursue after the baseline is complete.

---

## 5. Excluded Families

- **Matching Models (stable matching / Becker assignment)**: The research does not ask *who* matches with *whom* (assortative matching); it asks *how fast* agents match and *when* they marry. The Becker (1973) assignment model is the intellectual background but not the operational framework. The "Empirical Paper Caution" in the matching model template also warns against invoking stable-matching concepts without a clear connection to empirical identification — not applicable here, but indicates the framework is over-specified for this paper's question.
- **Mechanism Design**: No mechanism designer; the externality is in a decentralized market. The policy analysis (optimal corrective tax) uses a planner's problem, not a mechanism design problem with IC/IR constraints.
- **Moral Hazard / Principal-Agent**: No principal-agent relationship; workers do not exert unobservable effort for an employer in the relevant sense. The involution choice is a participation decision in a market, not an effort choice under a contract.
- **Human Capital and Labor** (Ben-Porath, Becker HC): Human capital investment is not the mechanism. Workers are not choosing how much to invest in skills; they are choosing whether to participate in the involution rat-race. The research question is about time allocation and search externalities, not returns to education or skill formation.

---

## 6. Relabeling Check

**Is the proposed model a superficial relabeling of a classic model?**

**NOT a superficial relabeling.** The following elements are NOT present in any canonical model and constitute the original contribution:

1. **Endogenous leisure distortion via a cross-market game**: In the canonical search model (Mortensen 1988; Burdett-Coles 1997), search intensity or the time endowment for search is exogenous. This paper endogenizes it through a labor market equilibrium (rat-race with heterogeneous types). The crossing of two markets — labor and marriage — via the leisure endowment is not present in any single canonical model.

2. **Heterogeneous-type threshold in the rat-race**: The standard rat-race (Akerlof 1976; Landers et al. 1996) models either homogeneous agents or adverse selection on a hidden binary type. This paper introduces a continuous type distribution F(θ) and derives an endogenous participation threshold θ* — a Nash equilibrium concept from threshold games applied to the involution context. This structure is not in either the search model library or the rat-race literature as reviewed.

3. **Cross-market search externality generating a fertility gap**: The Hosios condition characterizes efficient search within a single market (labor or marriage). This paper's welfare result — that the Nash threshold θ* < θ^{SP} because each involuter's reduced leisure thins the marriage market for all other searchers — is a cross-market application of the search externality that the Hosios (1990) analysis did not consider. The welfare loss propagates into a *demographic outcome* (fertility) rather than a labor market outcome.

---

## 7. Primitives Inheritance Handoff to Stage 4

```
CANONICAL MODEL MATCH HANDOFF TO STAGE 4
==========================================
Baseline model family:    Search Models (endogenous search intensity,
                          Poisson meeting technology)
Canonical ancestor:       Mortensen (1988) marriage search model;
                          Burdett and Coles (1997) marriage and class;
                          Hosios (1990) search externality welfare

Inherit from the canonical model:
  - Agents:               Continuum [0,1] of workers (searchers);
                          symmetric (one-sided) or two-sided marriage
                          market; each worker has outside option (remain
                          single) with payoff u_0
  - Timing:               Two periods: Period 1 (labor/involution choice);
                          Period 2 (Poisson marriage search; fertility)
  - Information structure: Full information about own type θ and the
                           aggregate share of involuters Φ = 1 − F(θ*);
                           symmetric information about potential partners
  - Equilibrium concept:  Period 1: Nash equilibrium threshold θ*
                          (indifference condition determines threshold);
                          Period 2: optimal acceptance (accept first match
                          for tractability, or Poisson stopping rule)
  - Key constraint type:  Time constraint ℓ + h = T; fertility constraint
                          n ≤ (T̄ − T_match)/τ (biological clock)

Modify from the canonical model:
  - Meeting rate: from exogenous λ to μ(ℓ_i, L̄) where ℓ_i is individual
    leisure and L̄ = E[ℓ] is aggregate leisure pool (adds thick-market
    externality). Assume ∂μ/∂ℓ_i > 0, ∂μ/∂L̄ > 0 (both margins matter).
  - Search intensity: from a free-choice variable to a residual of the
    labor market choice; ℓ_i = T − h_i where h_i ∈ {h_L, h_H} determined
    by the threshold equilibrium.

New elements not in the canonical model:
  - Heterogeneous type θ ~ F(θ) on [0,∞): captures Confucian norms,
    responsibility norms, family economic pressure; determines the
    private return to involution for each worker
  - Binary labor market choice h ∈ {h_L, h_H} with rat-race wage
    premium π(Φ; γ): wage differential between h_H and h_L is
    W(h_H; Φ, γ) − W(h_L; Φ, γ) = π(Φ; γ), increasing in γ (rat-race
    intensity) and potentially increasing in Φ (strategic complementarity)
  - Nash threshold condition: V(h_H; θ*, γ) = V(h_L; θ*, γ); single-
    crossing of V in θ (established under Assumption SC)
  - Assumption A (income vs. leisure): elasticity of μ with respect to
    ℓ_i exceeds elasticity of partner attractiveness with respect to
    wage income; this ensures the time-compression effect dominates

Confirmed NOT a superficial relabeling: YES — three genuinely new
elements (endogenous leisure via cross-market game; heterogeneous
threshold; cross-market fertility welfare gap) are not reducible to
any single canonical model
```

---

## Theory Lineage Statement

```
THEORY LINEAGE STATEMENT
========================
Closest canonical ancestor:
  Mortensen (1988) marriage search with Poisson meetings;
  Burdett and Coles (1997) marriage and class (heterogeneous types);
  Akerlof (1976) rat-race externality;
  Hosios (1990) efficiency of matching / search externality

What is inherited from the ancestor:
  1. Poisson meeting technology in the marriage market: meetings arrive
     at rate λ per unit of search intensity
  2. Two-sided (or symmetric) structure: searchers on both sides of
     the marriage market, with a meeting function M(·)
  3. Nash equilibrium concept for decentralized matching: agents optimize
     given the aggregate state of the market
  4. Search externality welfare benchmark: social planner internalizes
     the congestion / thick-market effect that individual agents ignore
  5. Two-period model structure: labor period and search/family period

What is changed from the ancestor:
  1. Search intensity is no longer freely chosen: it is the residual
     of a labor market decision distorted by a rat-race externality
     (ℓ = T − h, where h is determined by the threshold Nash equilibrium)
  2. Heterogeneous agents with a continuous type distribution F(θ):
     replaces homogeneous agents (Mortensen 1988) or binary type
     (Burdett-Coles 1997); generates a threshold equilibrium rather
     than a single-type equilibrium
  3. The externality operates across markets: the rat-race externality
     in Period 1 propagates into the marriage market in Period 2 via the
     leisure endowment, generating a cross-market welfare loss

What new economic mechanism is added:
  When a worker involutes (chooses h_H), their leisure falls from ℓ_L
  to ℓ_H = ℓ_L − Δh < ℓ_L. This reduces not only their own meeting rate
  μ(ℓ_H, L̄) but also reduces L̄ = E[ℓ] for all other searchers (since
  ∂μ/∂L̄ > 0, the aggregate leisure pool enters the meeting function).
  In the Nash equilibrium, each involuter ignores the negative effect
  of their leisure reduction on L̄ — this is the cross-market search
  externality. The social planner, internalizing this effect, sets a
  higher threshold θ^{SP} > θ*: fewer workers involute, L̄ is higher,
  the marriage market is thicker, marriages form earlier, and fertility
  n^{SP} > n*. The fertility gap Δn = n^{SP} − n* is the measure of
  the social cost of the over-involution equilibrium.

Where the novelty lies:
  [x] New primitives (heterogeneous θ; leisure-determined search intensity)
  [x] New welfare implication (cross-market fertility gap; planner
       threshold vs. Nash threshold)
  [x] New policy interpretation (overtime tax vs. cultural norm shift
       targeting θ distribution)
  [x] Extension to a broader class of environments (rat-race externality
       in labor market propagated to marriage market — generalizes
       single-market search externality)

This paper would NOT reduce to the ancestor model if:
  The leisure endowment ℓ is NOT freely chosen but is determined as the
  residual of a Nash equilibrium in the labor market. If ℓ were freely
  chosen (standard search model), the externality disappears and the
  paper collapses to Mortensen (1988). The irreducibility condition is:
  ℓ = T − h(θ, θ*) where h(θ, θ*) is determined by the threshold
  equilibrium — this dependence of search intensity on the labor market
  game cannot be removed without collapsing the paper to the ancestor.
```
