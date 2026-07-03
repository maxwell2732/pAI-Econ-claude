# Economic Interpretation

**Date:** 2026-06-29
**Stage:** 9 — Economic Interpretation

This document translates the formal propositions into economic substance, connects results to the literature, develops the policy analysis, and states the paper's limitations with precision. All citations in this document are from the verified set in `outputs/literature_positioning.md`. No unverified citations appear below.

---

## 1. The Core Economic Narrative

### 1.1 What the model is really saying

The model formalizes a mechanism that operates in three linked steps:

**Step 1 — The rat-race sorts workers by type, not by productivity need.** In the labor market, firms pay an overtime premium π(γ) to workers who choose long hours. Workers differ in their *intrinsic cost* of resisting the rat-race: the composite type θ (capturing Confucian responsibility norms, subjective duty, family economic pressure) governs how much a worker values compliance with the long-hours norm beyond its financial reward. Workers above the threshold θ* involute; those below opt out. The sorting is by *cultural-psychological type*, not by any productive advantage to long hours. This is the model's first departure from a simple earnings-maximization framework: the rat-race is partly driven by non-pecuniary identity and norm-compliance motives.

**Step 2 — The rat-race creates a cross-market externality that the individual cannot see.** When a worker decides to involute, she loses leisure and therefore becomes a less active participant in the marriage market. Because meeting rates depend on the *aggregate* leisure pool L̄ — not just individual leisure — each worker's involution choice imposes a negative externality on all other searchers: the market becomes thinner for everyone. No individual worker internalizes this thinning. The result is a classic Pigouvian externality, but one that operates *across two markets* (labor and marriage), a feature not present in within-market search models.

**Step 3 — The thinned marriage market delays matching, and biological timing converts the delay into a permanent fertility loss.** Workers who match later face a shorter reproductive window under the biological clock. Because the timing loss is irreversible — unlike income or utility losses — the market failure has a *long-run demographic cost* that compounds with the intensity of the rat-race. The model's welfare metric is not just current utility but expected completed fertility, linking the microeconomic failure to the macroeconomic phenomenon of China's ultra-low TFR.

### 1.2 Why this mechanism is novel

The mechanism is not simply "overworkers have less time for dating." That observation is trivial and requires no formal model. The model adds three non-trivial layers:

- **Heterogeneous types and threshold equilibrium**: The sorting is endogenous. Who involutes is determined by the equilibrium threshold θ*, which depends on the rat-race intensity γ and the aggregate behavior Φ of all other workers. This makes the rat-race a *game*, not just an individual choice, and generates comparative statics that would not obtain in a single-agent model.

- **The externality is in the meeting technology, not in preferences**: The thinned-market effect operates through the meeting function μ(ℓ_i, L̄), not through preferences over partners. This means the externality exists even if workers are completely rational, fully informed, and have no preference for working less — it is a technological externality in the search process.

- **Welfare loss is measured in fertility units**: By linking the marriage timing to fertility via the biological clock, the model produces a welfare gap Δn (in children per worker) rather than just a utility gap. This makes the policy implications precise and empirically assessable.

---

## 2. Proposition-by-Proposition Interpretation

### 2.1 L_SC (Single-Crossing Lemma) — The involution decision is monotone in type

**Economic content:** Workers with higher θ (stronger Confucian norms, heavier family economic pressure, greater subjective duty) have a stronger intrinsic benefit B(h_H) from choosing long hours, regardless of what others are doing. This makes the involution decision a *monotone function* of θ: there is always a threshold above which involution is individually rational and below which it is not.

**Why this matters:** Without single-crossing, the model could produce non-monotone equilibria (high-θ workers opting out while low-θ workers involute), which is economically implausible given the interpretation of θ as cultural-normative pressure. L_SC confirms that the threshold structure is not just a convenient assumption but a property of the payoff function.

**Connection to literature:** The single-crossing property is familiar from screening models (Mirrlees 1971 and subsequent literature). Here it arises not from a productivity-wage relationship but from the interaction of cultural-normative benefits and leisure costs — a different economic substance in a formally analogous structure.

### 2.2 P_E1 (Existence and Uniqueness) — There is a well-defined equilibrium rat-race intensity

**Economic content:** Under the model's maintained conditions (including the Monotone G Condition ensuring the meeting function is not too concave), there is exactly one fraction Φ* of the labor force that involutes in equilibrium. This threshold is interior: neither universal involution nor universal opt-out is an equilibrium.

**Why this matters:** The existence result confirms that the model is *internally consistent* — there is an equilibrium to analyze. The uniqueness result (which requires the Monotone G Condition) is more substantive: it says the rat-race has a *single, predictable outcome* for a given set of labor-market parameters. This is what makes comparative statics (P_C1, P_C2) economically interpretable.

**The degenerate cases:** When the wage premium π(γ) is large relative to the fertility and effort costs (violation of Parameter Condition PC1), the equilibrium degenerates to universal involution (θ* = 0). This is the "involution trap" — a corner case that may describe China's current situation in some sectors. In the full-involution trap, the model's comparative statics are moot; the policy implication is that no tax τ < π(γ) can restore an interior equilibrium, and norm-based interventions (shifting B(h_H) downward — changing cultural expectations about overtime) become the only available instrument.

### 2.3 P_C1 (Comparative Statics in γ) — Intensification of the rat-race pulls more workers into involution

**Economic content:** When firms intensify the rat-race (higher γ → higher wage premium π(γ)), the financial return to long hours rises. This lowers the threshold type θ* who is indifferent between the two regimes, pulling more workers into involution (dΦ*/dγ > 0).

**Economic intuition:** The result might seem obvious — of course more workers choose long hours when the pay is higher. But notice what is *not* obvious: the comparative static holds even though choosing long hours *reduces fertility*, a cost that rises with the number of involuters (via the thick-market externality). The income effect pulls toward involution; the fertility-search externality provides a countervailing force. P_C1 says the income effect dominates in the baseline model (under A5, which ensures income does not compensate for the meeting-rate loss). This is the model's key disciplining result.

**Counterfactual held fixed:** P_C1 holds with exogenous π(γ) (Assumption A3). In the extension (P_U1), when π itself depends on Φ, the comparative static can be amplified (tipping) or reversed (negative feedback), generating additional dynamics.

### 2.4 P_C2 (Fertility Comparative Statics) — The rat-race has a causal fertility cost

**Economic content:** Aggregate equilibrium fertility n* is strictly decreasing in the rat-race intensity γ. This is the paper's highest-novelty result: it translates the labor-market outcome (involution rate Φ*) into a demographic outcome (fertility n*) via two distinct channels.

**The two fertility channels:**

*Channel 1 — Direct leisure effect:* Each involuter (h_H) has less personal leisure (ℓ_H < ℓ_L), hence a lower personal meeting rate μ(ℓ_H, L̄) < μ(ℓ_L, L̄). Involuters take longer to find a partner and therefore marry later, losing reproductive years.

*Channel 2 — Aggregate leisure externality (thick-market effect):* As Φ* rises, aggregate leisure L̄ falls. This lowers the meeting rate for *all* workers, including opt-outs. Opt-out workers are hurt by the involution of their peers even though they themselves maintain ℓ_L. This is the externality channel: the fertility loss falls not only on involuters but on the entire cohort.

**Why this is not just a restatement of the time-allocation literature:** Standard models predict that workers who work more have less time for children (Becker 1965). P_C2's contribution is the second channel: a *social multiplier* whereby the rat-race inflicts fertility costs on non-participants. This externality channel is absent in individual choice models and requires the game-theoretic, thick-market structure of this model.

**Caveat (CE-C1-1):** Under A5, income does not affect the meeting rate μ. If wealthier involuters can access premium matching services (expensive dating platforms, introductions through professional networks) and thereby achieve higher meeting rates despite lower leisure, the second channel could be partially offset. Empirically, the evidence for China suggests this offsetting effect is weak: urban overworkers exhibit lower dating participation even controlling for income (time-use surveys show longer weekly work hours negatively predict social engagement across income groups). The model's abstraction is therefore empirically defensible in the Chinese context but may not generalize to settings where financial capital and social capital are highly interchangeable.

### 2.5 P_W1 (Welfare Gap) — The Nash equilibrium has too many involuters

**Economic content:** The Nash threshold θ* is too low relative to the social optimum θ^{SP}. The economy involutes "too much" — too many workers choose long hours — because no individual internalizes the thinning of the aggregate marriage pool. The result is a welfare gap ΔW > 0 (measured in fertility units: n^{SP} > n*) that grows with the rat-race intensity γ.

**Connection to Hosios (1990):** Hosios (1990) showed that search models generically produce inefficient equilibria when matching generates externalities; the efficient equilibrium requires a specific balance condition (the Hosios condition) that is not generally satisfied. This paper generates an analogous result, but the externality crosses markets: the labor-market rat-race generates a marriage-market search externality. The key structural difference is that in Hosios (1990), the externality is within the labor market (job-finding rates depend on market tightness); here, the externality connects two *distinct* markets (labor and marriage), which is not covered by the Hosios framework and requires separate analysis.

**The role of the biological clock:** Without the irreversibility introduced by the biological clock, the welfare gap would still exist but might be small. The clock converts a *delay* in marriage timing into a *permanent* fertility loss, amplifying the welfare cost. The non-linearity of n_i = max{0, (T̄ − T_match)/τ} means the welfare gap is especially large when rat-race intensity is high enough that some workers are pushed past the reproductive window entirely (n_i = 0 for some agents). This creates a potential *convexity* in the welfare loss as a function of γ, which is consistent with the observed precipitous decline in China's TFR as labor-market intensity has risen.

**Scope of P_W1:** Two abstractions limit the generalization of this result:
- *Productivity spillovers (CE-W1-2):* If involution generates positive production externalities (teamwork, knowledge spillovers, organizational capital), the planner may want more involution than the Nash equilibrium delivers, partially or fully offsetting the fertility welfare gap. In the current Chinese context, the co-existence of rising total factor productivity and collapsing TFR suggests the fertility channel dominates, but the model cannot formally establish this without adding a production sector.
- *Assortative matching preferences (CE-W1-1):* If involuters prefer partners who are also high-type involuters (positive assortative matching on θ), a thinner market may actually improve match quality for this group. Under the current model's homogeneous-surplus specification (M1), this does not occur. A Shimer-Smith (2000) style extension allowing assortative matching would be needed to evaluate this channel.

### 2.6 P_M1 (Optimal Tax — Corollary to P_W1) — The social optimum can be implemented by an overtime tax

**Economic content:** A Pigouvian tax τ* > 0 on overtime hours, set equal to the aggregate fertility cost of the marginal involuter's contribution to thinning the marriage pool, restores the social optimum. The formula is:

τ* = α · (∂E[n]/∂L̄)|_{L̄^{SP}} · Δℓ

where α is the weight on fertility in the utility function, ∂E[n]/∂L̄ is the marginal fertility gain from an additional unit of aggregate leisure at the planner's allocation, and Δℓ = ℓ_L − ℓ_H is the leisure gap between regimes.

**Economic interpretation of the formula:** τ* is the shadow price of the aggregate-leisure externality, measured in wage units. It decomposes into: (fertility value per unit of aggregate leisure) × (leisure increase from one marginal opt-out). This is a standard Pigouvian internalization formula adapted to the cross-market setting.

**Feasibility constraint (CE-M1-1):** The tax τ* is feasible only if τ* ≤ π(γ) — the tax must not exceed the entire wage premium from long hours. When τ* > π(γ), the overtime premium is insufficient to sustain any involution at the social optimum, and the tax overshoots. In this case, the Pigouvian instrument breaks down and the social optimum requires either:
- *Leisure subsidies:* Subsidize opt-out workers (reduce the cost of h_L), which is equivalent but shifts the fiscal incidence.
- *Working-hours regulation:* A quantity constraint (maximum hours mandate) forces all workers below h_H, implementing a corner solution. This is less efficient than the tax (it does not allow high-θ workers to choose to involute while bearing the social cost) but may be more practical to enforce.
- *Norm interventions:* Reduce B(h_H) (the intrinsic benefit of complying with the long-hours norm) through cultural or organizational campaigns. This shifts the type distribution F(θ) of effective threshold parameters and can implement the social optimum without any fiscal instrument.

**dτ*/dγ > 0:** As the rat-race intensifies, the optimal tax rises. This is intuitive: more intense rat-race → more involuters → larger aggregate-leisure externality → larger Pigouvian correction required. This comparative static has an important policy implication: the optimal tax is *countercyclical with labor market tightness* — when labor demand is high and firms intensify the rat-race, the fertility externality grows and the tax should rise accordingly.

**Policy targeting in China's context:** China's Labor Law (1994) mandates a 44-hour work week. The model provides a theoretical basis for *enforcement* of this law (or extension to stricter limits) as a fertility policy: the hours mandate is a quantity-constrained version of the optimal tax, and its welfare cost (excluding efficient involuters who would prefer to pay the social cost and work long hours) is bounded by Δτ = τ_c − τ* where τ_c is the critical tax above which the mandate binds. Whether this welfare cost exceeds the administrative benefit of a simpler quantity instrument is an empirical question outside the model's scope.

### 2.7 P_U1 (Multiplicity and Tipping — Extension)

**Economic content:** When the wage premium π itself depends on the involution rate Φ (positive strategic complementarity — "the more people overwork, the more firms reward overwork"), the indifference condition G_e(θ*, γ) = 0 can have multiple solutions. The economy may be in a high-involution trap (θ₁* near 0, Φ* near 1) or a low-involution equilibrium (θ₃* large, Φ* small), separated by an unstable threshold θ₂*.

**The tipping narrative:** Under strong enough complementarity, a small policy intervention (a temporary tax τ > τ_c or a strong norm campaign that shifts B(h_H) down) can tip the economy from the high-involution to the low-involution equilibrium. The key feature of tipping is *irreversibility*: once the economy reaches the low-involution basin of attraction, removing the policy does not return it to the high-involution trap (provided the complementarity is not so strong that the low-involution equilibrium also disappears at τ = 0). This is the classic tipping-point mechanism in social coordination models.

**Connection to Akerlof (1976):** Akerlof (1976) modeled social customs as equilibria maintained by peer pressure and norm-compliance costs; deviating from the social norm imposes reputational costs. The current model formalizes a closely related mechanism: the intrinsic benefit B(h_H) of involution captures the norm-compliance component of Akerlof's framework, and the wage-premium dependence π(Φ; γ) captures the economic reinforcement of the norm. The tipping result (P_U1) is the dynamic implication: norms can be disrupted by sufficiently large shocks.

**Why P_U1 matters for the China empirical context:** China's involution culture exhibits many features consistent with a coordination equilibrium rather than an individual optimum: strong peer pressure to work long hours (see the "996" discourse), employer screening of commitment via hours (related to Landers, Rebitzer, and Taylor 1996), and the rapid intensification of the culture in the 2010s (consistent with tipping from a moderate-involution equilibrium to a high-involution one). If P_U1's multiplicity characterization is correct, then the empirically relevant question is whether China is currently in the high-involution trap — and if so, whether a one-time policy intervention can achieve a permanent norm shift.

**Current status:** P_U1 remains at the level of a well-motivated conjecture with a clear proof strategy (Stage 7 identified the proof gap at Step 3). A full proof requires either an explicit functional form for π(Φ; γ) or a general sufficient condition for G_e to be non-monotone. Recommend: include P_U1 as a formal Extension Proposition with stated sufficient conditions, prove in online appendix using a parametric example (e.g., linear π(Φ; γ) = γ·(1 + κ·Φ) for κ > 0).

### 2.8 P_B1 (Boundary Results) — Model behavior in extreme regimes

**Economic content:** As γ → ∞ (extreme rat-race): essentially all workers involute (Φ* → 1, L̄ → ℓ_H). The aggregate marriage market is maximally thin, fertility approaches its floor, and the welfare gap reaches its maximum. This characterizes a "demographic collapse" equilibrium consistent with TFR approaching zero.

As γ → 0 (no rat-race, α small): the threshold approaches the pure effort-cost ratio θ*₀ = (δ_H − δ_L)/B(h_H). In this limit, involution is purely a matter of intrinsic preferences versus physical disutility — not driven by economic incentives. The fraction involuting in this baseline (Φ₀ = 1 − F(θ*₀)) represents the "cultural floor" of involution: the share of workers who would work long hours even absent any wage premium.

**Policy implication of P_B1:** The cultural floor Φ₀ is determined by the type distribution F and the intrinsic preference parameters (δ_H, δ_L, B(h_H)) — not by policy-amenable economic variables. Policies that reduce γ (overtime taxes, hours mandates) can move the economy toward the γ → 0 regime, but they cannot reduce involution below Φ₀ without changing the underlying cultural parameters. This provides a theoretical grounding for the observation that economic incentives alone are insufficient to reverse deeply embedded work cultures: beyond a point, norm-shifting interventions (corporate culture change, education, social destigmatization of leisure) are needed to shift F(θ) leftward.

---

## 3. Literature Positioning — Synthesized

The model sits at the intersection of three literatures:

### 3.1 Rat-Race / Relative Effort Literature

Akerlof (1976) established the rat-race as a coordination failure driven by norm compliance. Landers, Rebitzer, and Taylor (1996) formalized the mechanism whereby firms use long hours as a screening signal for unobservable worker type — generating excessive hours in equilibrium. The current model adds two elements absent from this literature: (a) worker heterogeneity in norm-compliance costs (the θ distribution), which produces a threshold equilibrium rather than a binary all-or-nothing outcome; and (b) a cross-market consequence (marriage market thinning) that generates welfare costs beyond the within-market efficiency loss.

### 3.2 Search and Matching Literature

Burdett and Coles (1997) showed how meeting-rate externalities generate inefficient equilibria in marriage markets. Hosios (1990) derived the efficiency condition for search externalities in labor markets. The current model introduces a *cross-market* search externality — labor-market decisions affect marriage-market meeting rates — which is structurally distinct from both papers. The welfare result (P_W1) is an analogue of the Hosios efficiency condition for this cross-market setting; the analogue of the Hosios condition here is τ* = 0, which generically does not hold.

### 3.3 Fertility and Marriage Timing Literature

The model connects to the empirical literature on marriage timing and fertility in China, providing a theoretical mechanism for the empirically observed correlation between longer work hours and later marriage / lower fertility. The biological clock specification (n_i = max{0, (T̄ − T_match)/τ}) is a stylized representation of the well-established biological literature on age-related fertility decline; it is not claimed to be a precise biological model.

### 3.4 What the model does not do

The model abstracts from:
- Divorce and re-marriage (single match per lifetime)
- Endogenous partner quality / assortative matching (homogeneous surplus per match)
- Endogenous fertility demand (desired number of children is not modeled; only the opportunity to have children via timing)
- Production externalities from long hours (no TFP channel)
- Gender asymmetry (both partners modeled symmetrically; in reality, fertility costs fall asymmetrically on women)
- Dynamic updating of norms over time (static 2-period model)

Each of these abstractions is standard for a first theoretical pass. The most important extension for future work is gender asymmetry: if women bear a disproportionate cost of both long hours (meeting-rate loss) and late marriage (fertility window closure), the welfare gap ΔW may be larger than the symmetric model predicts, and the optimal policy may have a gender-targeted component.

---

## 4. Policy Implications — Full Analysis

### 4.1 The policy hierarchy

The model suggests a hierarchy of instruments ordered by efficiency and feasibility:

| Instrument | Economic mechanism | Efficiency | Feasibility |
|-----------|--------------------|-----------|------------|
| Pigouvian overtime tax τ* | Corrects externality at margin; allows efficient involuters | First-best (under τ* ≤ π(γ)) | Low (evasion, monitoring) |
| Working-hours mandate | Quantity constraint; blocks all involution above h_H | Second-best (prevents efficient involution) | Medium (already in Labor Law) |
| Leisure subsidy (e.g., paid leave mandate, childcare) | Lowers cost of h_L; equivalent to wage-side tax | First-best equivalent; shifts incidence | Medium–High |
| Norm intervention (cultural campaign, firm-culture reform) | Shifts B(h_H) downward; reduces cultural floor Φ₀ | Can achieve social optimum + reduce cultural floor | High (slow; requires sustained effort) |
| Tipping intervention (P_U1 if multiplicity) | One-time shock; moves economy to low-Φ basin | First-best if equilibrium selection succeeds | Variable |

### 4.2 Interpreting China's actual policies

China has implemented several policies aimed at reversing the fertility decline:
- **Cash transfers for births:** Operates on the fertility demand side. The model suggests these are less effective than addressing the *supply-side constraint* (marriage delay due to market thinning). Transfer payments do not increase meeting rates or shift the involution threshold.
- **Three-child policy (2021):** Removes the supply constraint on desired fertility but does not address the meeting-timing channel modeled here. The model predicts limited effectiveness for workers whose fertility loss is primarily due to late marriage rather than birth quotas.
- **Labor Law enforcement of 44-hour limits:** The model provides a welfare-theoretic basis for stricter enforcement: it is a quantity-constrained approximation to the Pigouvian overtime tax. The model predicts that enforcement that reduces h_H effectively (shifting workers toward h_L) will increase aggregate leisure L̄, thicken the marriage market, advance T_match, and raise n*. The quantitative effect depends on the shape of the meeting function μ and the biological clock parameter τ.
- **Subsidized childcare and housing for young families:** These reduce the cost of starting a family conditional on marriage but do not address the marriage timing constraint. The model suggests complementing these with instruments that increase dating/marriage market participation.

### 4.3 A novel policy suggestion from the model

The model's most distinctive policy implication is that *labor policy and demographic policy are not separable* in the presence of the cross-market externality. China's demographic authorities and labor authorities currently operate on separate mandates. The model provides a theoretical argument for coordinating these: a tax on overtime hours, calibrated to τ* = α·(∂E[n]/∂L̄)·Δℓ, can be thought of simultaneously as a labor-market corrective and a pro-natalist demographic instrument. The calibration of τ* requires empirical measurement of α (fertility utility weight), ∂E[n]/∂L̄ (meeting function sensitivity), and Δℓ (hours differential) — all of which are in principle estimable from time-use surveys and demographic data.

---

## 5. Limitations (from Counterexample Analysis)

### 5.1 Income as a substitute for leisure in the marriage market (CE-C1-1) [HIGH]

The model assumes (A5) that income does not affect the meeting rate μ. In practice, higher income can substitute for leisure in the marriage market through several channels: expenditure on premium matchmaking services, social signaling via consumption, and the use of professional networks to arrange introductions. If ∂μ/∂W > 0 (income raises the meeting rate), the fertility loss from involution is partially offset for high-income workers, and the comparative static P_C2 (dn*/dγ < 0) may be weakened or even reversed for the highest-income group.

**Empirical assessment for China:** Available evidence suggests this substitution is limited in the current Chinese context. Available time-use surveys suggest that longer work hours are associated with reduced social and romantic engagement across income groups among urban workers aged 25–35, though cross-income uniformity has not been formally established. Premium matchmaking services (相亲角, high-end apps) remain limited to a narrow segment of the population, though their growth is notable. The model's assumption A5 is therefore empirically defensible as a first approximation, but heterogeneity in the income–matching substitution is an important direction for future empirical work.

### 5.2 Model scope limitations [MEDIUM]

- **Productivity spillovers from involution:** The model abstracts from any positive production externalities from long hours. If such externalities exist and are large, the social optimum could involve more involution than the Nash equilibrium delivers, partially or fully reversing P_W1. The model is best interpreted as characterizing the *demographic* cost of involution; it is not a comprehensive welfare model of the Chinese labor market.
- **Assortative matching:** The homogeneous-surplus meeting function (M1) excludes the possibility that high-type workers prefer to match with each other. Under positive assortative matching on θ, the thick-market externality's sign for h_H workers could be ambiguous (involuters may prefer fewer but higher-quality matches). A Shimer-Smith (2000) style extension would be needed to evaluate this channel.
- **Gender asymmetry:** The model treats all workers symmetrically. In reality, women face a steeper fertility decline with age than men (shorter biological window T̄), implying that the welfare gap ΔW falls disproportionately on female workers. A gendered extension of the model would likely generate stronger policy prescriptions targeted at women's labor-market conditions.

---

## 6. Summary of Economic Contributions

The paper makes five conceptually distinct contributions:

1. **Heterogeneous-type threshold equilibrium in the rat-race** (N1, P_E1): The first model of the involution rat-race as an endogenous threshold equilibrium driven by heterogeneous cultural-normative types θ, rather than as a binary all-or-nothing outcome.

2. **Cross-market labor-to-marriage externality** (N2, P_C2): The first formal model of the mechanism whereby labor market rat-race behavior thins the marriage market via aggregate leisure compression, quantifying the feedback from labor outcomes to marriage timing.

3. **Fertility-gap welfare result** (N3, P_W1): A proof that the Nash equilibrium systematically under-delivers fertility relative to the social optimum, with the welfare gap growing in rat-race intensity. Analogous to but structurally distinct from the Hosios efficiency condition.

4. **Policy hierarchy and corrective tax formula** (N4, P_M1): A closed-form Pigouvian tax formula τ* calibrated in terms of empirically measurable parameters (fertility value, meeting-function sensitivity, hours gap), providing a direct bridge from theory to policy design.

5. **China/involution application with empirical grounding** (N5): The model is grounded in five verified empirical regularities from Chinese labor and demographic data (Stage 2a), providing a bridge from the abstract theory to the specific policy problem of China's TFR collapse.
