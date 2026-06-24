# Trade and Labor Market Dynamics: General Equilibrium Analysis of the China Trade Shock (Caliendo-Dvorkin-Parro)

## Model Family Name
Dynamic Spatial Trade and Migration / Dynamic Discrete Choice with Eaton-Kortum Trade and Input-Output Linkages

## Canonical Economic Question
What are the general equilibrium effects of a large trade shock (the rise of China, 2000–2007) on employment, welfare, and transition paths across spatially distinct labor markets (U.S. state–sector pairs), accounting for labor mobility frictions, goods trade frictions, input-output linkages, and forward-looking relocation decisions?

## When to Use This Model
- When the research question requires **general equilibrium quantification of trade shocks** across many spatially distinct labor markets
- When studying **dynamic adjustment to trade liberalization** with forward-looking migration and production linkages
- When the goal is to recover **aggregate and disaggregate employment and welfare effects** (not just differential effects across markets)
- When **traditional fundamentals (productivities, migration costs, trade costs) are hard to estimate** — the dynamic hat algebra bypasses them
- When data on **bilateral trade flows, gross migration flows, and employment distributions** across markets are available

## Typical Primitives
- World with N locations (50 U.S. states + 37 countries + RoW), J sectors (22, incl. 12 manufacturing, 8 services, construction, wholesale/retail)
- **Labor markets**: state × sector pairs, indexed by nj (n = region, j = sector); non-employment indexed as sector 0
- **Households**: forward-looking, perfect foresight, dynamic discrete choice over relocation
  - Log utility U(Cₙⱼₜ) = log(Cₙⱼₜ)
  - Idiosyncratic relocation shock ε ∼ T1EV(0, ν) (Type-I Extreme Value, scale ν)
  - Relocation costs τₙⱼⁱᵏ ≥ 0 (origin-specific, time-invariant, additive in utility)
  - Non-employed: home production bₙ > 0
- **Production**: competitive firms, Cobb-Douglas CRS, Fréchet-productivity
  - Output qₙⱼₜ(ω) = z(ω)(Aₙⱼₜ (hₙⱼₜ)ᶜⁿ (ℓₙⱼₜ)¹⁻ᶜⁿ)ᵞⁿʲ ∏ₖ (Mₙⱼₜᵏ)ᵞⁿʲᵏ
  - γₙⱼ = value-added share, ξₙ = structures share in VA, γₙⱼᵏ = materials share
  - TFP: common component Aₙⱼₜ + variety-specific z(ω) ∼ Fréchet(θⱼ)
- **Trade**: iceberg costs κₙᵢₜʲ ≥ 1; nontradable ⇒ κ = ∞
- **Structures**: fixed supply Hₙⱼ in each market, owned by immobile rentiers
- **Rentiers**: own structures, send rents to global portfolio, receive ιₙ share back (generates trade imbalances)

## Timing
- t = 0: initial distribution L₀, observed migration flows μ₋₁, trade shares π₀, expenditures X₀
- Each period t:
  1. Households start in labor market nj, work and earn wₙⱼₜ (or home production bₙ if non-employed)
  2. Consumption: Cₙⱼₜ = wₙⱼₜ/Pₙₜ (workers) or bₙ (non-employed), Cobb-Douglas over J sectors
  3. Idiosyncratic ε shocks realized
  4. Relocation decision: max over ik of βVⁱᵏₜ₊₁ − τₙⱼⁱᵏ + νεⁱᵏₜ
  5. Migration flows μₙⱼⁱᵏₜ realized; labor supply Lₙⱼₜ₊₁ determined by incoming flows
  6. Production, trade, wages clear static subproblem given Lₙⱼₜ₊₁ and fundamentals {Aₙⱼₜ₊₁, κₙᵢₜ₊₁ʲ}

## Information Structure
- **Perfect foresight**: all agents know the entire future path of fundamentals {Aₙⱼₜ, κₙᵢₜʲ} at t = 0
- For counterfactuals: at t = 0 agents anticipate baseline path; at t = 1 they learn the counterfactual path (unanticipated shock)
- No aggregate uncertainty in baseline; stochastic extension in Appendix C.3

## Agent Heterogeneity
- **Workers**: ex-ante identical except for current location (state dependence); ex-post heterogeneous due to ε shocks (idiosyncratic relocation preferences)
- **Markets**: heterogeneous in initial size Lₙⱼ₀, productivity Aₙⱼₜ, structures Hₙⱼ, trade costs κₙᵢₜʲ, migration costs τₙⱼⁱᵏ
- **Countries**: U.S. states have 1150 labor markets; other countries treated as single labor markets per country with same 22 sectors

## Choice Variables
- **Households**: discrete relocation choice (nj → ik) each period; labor supply inelastic conditional on location
- **Firms**: labor ℓₙⱼₜ, structures hₙⱼₜ, material demands Mₙⱼₜᵏ (static profit maximization)
- **Rentiers**: passive — remit rental income to global portfolio, consume ιₙ share

## Constraints
- **Labor market clearing**: Lₙⱼₜ = γₙⱼ(1−ξₙ) Σᵢ πᵢⱼⁿʲₜ Xᵢⱼₜ / wₙⱼₜ
- **Structures market**: Hₙⱼ = γₙⱼ ξₙ Σᵢ πᵢⱼⁿʲₜ Xᵢⱼₜ / rₙⱼₜ
- **Goods market**: Xₙₜʲ = Σₖ γₙₖⁿʲ Σᵢ πⁱᵏₙₖₜ Xⁱᵏₜ + αⱼ (Σₖ wₙₖₜ Lₙₖₜ + ιₙ χₜ)
- **Trade balance**: χₜ = Σₙ Σₖ rₙₖₜ Hₙₖ (global portfolio value); ιₙ share fixed
- **Labor evolution**: Lₙⱼₜ₊₁ = Σᵢ Σₖ μⁱᵏⁿʲₜ Lⁱᵏₜ
- **Non-employed transition**: same as employed except home production bₙ

## Equilibrium Concept or Solution Concept
- **Temporary equilibrium** (Definition 1): static equilibrium of wages w(Lₜ, Θₜ, Θ̄), trade shares πₜ, expenditures Xₜ solving (5)–(10) given current labor distribution and fundamentals
- **Sequential competitive equilibrium** (Definition 2): sequence {Lₜ, μₜ, Vₜ, w(Lₜ, Θₜ, Θ̄)} solving (2)–(4) and temporary equilibrium at each t
- **Stationary equilibrium** (Definition 3): constant allocation — in- and out-migration balance, fundamentals constant
- **Dynamic hat algebra**: solves sequential equilibrium in *time differences* ẏₜ₊₁ = yₜ₊₁/yₜ, conditioning on observed initial allocation {L₀, π₀, X₀, μ₋₁} — no knowledge of fundamental *levels* required (Proposition 2)
- **Counterfactual hat algebra** (Proposition 3): solves ratio of counterfactual-to-baseline time changes ŷₜ = ẏ′ₜ/ẏₜ using only baseline allocation and relative fundamental changes {Âₜ, κ̂ₜ}
- **Algorithm**: backward induction from steady state (˙u = 1 all t) + forward simulation (Appendix D)

## Main Mechanism
The model combines **three layers of spatial frictions** to determine trade shock propagation:

1. **Goods trade frictions** (iceberg κ): regions with different sectoral compositions have heterogeneous exposure to foreign productivity shocks through gravity-based trade linkages and input-output connections

2. **Labor mobility frictions** (migration costs τ + extreme-value ε): workers relocate slowly toward markets with higher lifetime utility; migration shares μₙⱼⁱᵏₜ have closed form (3) due to T1EV assumption. The option value of future mobility moderates current wage responses

3. **Forward-looking relocation dynamics**: workers compare present wages (or home production) against expected future lifetime utility across markets, discounted at β. The wedge between current wages and future values generates rich transitional dynamics

**Dynamic hat algebra** (key methodological innovation):
- By expressing the model in time differences, fundamental levels {Aₙⱼₜ, τₙⱼⁱᵏ, κₙᵢₜʲ, Hₙⱼ, bₙ} cancel out
- Only initial observables {L₀, π₀, X₀, μ₋₁} + single parameters {β, θⱼ, ν} + fundamental *changes* {Ȧₙⱼₜ, κ̇ₙᵢₜʲ} needed
- Enables disaggregation to 1150 U.S. labor markets without estimating 10⁶+ fundamental parameters

**China shock channel**:
- Productivity growth in Chinese manufacturing → cheaper Chinese imports (gravity)
- Direct effect: U.S. manufacturing employment declines in exposed state-sector pairs
- Indirect effect (input-output): non-manufacturing sectors access cheaper intermediate inputs → expand employment
- Long-run: U.S. welfare ↑ 0.2%, manufacturing employment ↓ 0.36 pp (~550K jobs), construction ↑ ~50K jobs
- Transition: short-run real wage declines in manufacturing before relocation occurs

## Common Propositions
- **Proposition 1 (Temporary Equilibrium in Time Differences)**: Given Lₜ, {πₜ, Xₜ}, and changes {Ĺₜ₊₁, Θ̇ₜ₊₁}, the temporary equilibrium at t+1 solves (11)–(15) without fundamental levels
- **Proposition 2 (Sequential Equilibrium in Time Differences)**: Given {L₀, π₀, X₀, μ₋₁} and convergent {Θ̇ₜ}, the sequential equilibrium solves (16)–(18) without {Θₜ} or Θ̄
- **Proposition 3 (Counterfactual Equilibrium)**: Given baseline economy {Lₜ, μₜ₋₁, πₜ, Xₜ} and relative changes {Θ̂ₜ}, the counterfactual solves (19)–(26) without baseline fundamentals
- **Welfare formula** (equation 28): Ŵⁿʲ = Σₛ₌₁∞ βˢ log(Ĉⁿʲₛ (μ̂ⁿʲⁿʲₛ)ᵛ); reduces to Ŵ = Σ βˢ log(π̂ₙₙₛ)⁻¹/θ (μ̂ₙₙₛ)ᵛ in one-sector case without materials

## Comparative Statics Usually Available
- **Trade elasticity θⱼ ↑**: larger θ → more sensitive to productivity shocks → larger employment reallocation across markets; calibrated from Caliendo-Parro (2015)
- **Migration elasticity 1/ν ↑**: larger 1/ν → workers respond more to wage differentials → faster labor reallocation → smaller welfare dispersion across markets
- **Discount factor β ↑**: more patient workers → slower response to current wage declines → larger role of future expectations in current migration
- **Home production bₙ ↑**: higher non-employment value → less incentive to relocate after negative shock → larger non-employment persistence
- **Input-output share γₙⱼᵏ ↑**: stronger production linkages → shock in sector k propagates more strongly to sector j → larger second-round employment effects
- **Structures share ξₙ ↑**: larger immobile factor share → slower local adjustment → larger real wage changes after shocks

## Welfare Implications
- U.S. aggregate welfare ↑ 0.2% due to China shock (2000–2007) — gains from cheaper imports outweigh losses
- **Large cross-market dispersion**: welfare change ranges from −0.8% to +1% across 1150 labor markets
  - Manufacturing markets: some lose (direct import competition)
  - Non-manufacturing markets: all gain (cheaper intermediate inputs)
- **Short-run vs. long-run**: at impact, 47% of markets experience real wage declines; in long run only ~4% have welfare losses
- **Transition costs**: delay in reaching steady state reduces welfare by 4.7% on average; long right tail with much larger costs
- **All countries gain** from China shock (heterogeneous magnitude depending on trade openness)
- **SSDI amplifies employment decline**: disability program adds ~50K additional manufacturing job loss by reducing mobility from non-employment

## Common Modeling Pitfalls
- **Ignoring input-output linkages**: material linkages are quantitatively important — services and construction expand due to cheaper Chinese intermediates, not directly from trade
- **Assuming small open economy (SOE)**: partial equilibrium misses general equilibrium wage adjustments and cross-market spillovers through trade and migration
- **Ignoring transition dynamics**: comparing steady states overstates welfare gains for workers in adversely affected markets (short-run real wage declines are substantial)
- **Treating China shock as observed U.S. import change**: must instrument using other countries' imports from China (ADH method) to isolate supply-driven component
- **Not accounting for non-employment**: home production and disability insurance affect option value of relocation and non-employment persistence
- **Confusing differential effects with level effects**: reduced-form DiD gives relative effects across markets, not aggregate employment or welfare

## How to Extend the Model
- **SSDI / disability insurance** (Section 5.3.1): add state D with transition δ from non-employment, exit rate 1−ρᴰᴵ, funded by payroll tax τ + lump-sum G
- **CES preferences** (Appendix C.2): replace Cobb-Douglas with constant elasticity σ ≠ 1 between manufacturing and non-manufacturing
- **Elastic labor supply** (Appendix C.4): add labor-leisure choice with alternative specific utility
- **Stochastic fundamentals** (Appendix C.3): rational expectations with AR(1) fundamentals; requires solving for every future path — computationally intensive with 1000+ states
- **Non-employment benefits** as explicit insurance (beyond home production): alternative UI/DI policy counterfactuals
- **International migration**: relax infinite migration costs across countries (requires additional data)
- **Firm heterogeneity**: replace EK with Melitz-type firm selection (temporary equilibrium structure preserved)

## Example Research Questions This Model Can Support
- What are the aggregate and distributional employment effects of a trade liberalization episode (e.g., China shock, NAFTA, tariff war)?
- How do input-output linkages amplify or dampen the employment effects of trade shocks across sectors and regions?
- How long does labor reallocation take after a trade shock, and what determines the speed of adjustment?
- What are the welfare gains from trade when accounting for transitional dynamics, and how are they distributed across labor markets?
- What would be the employment and welfare effects of eliminating disability benefits or implementing wage insurance after a trade shock?
- What is the contribution of each sector, region, and local labor market to the aggregate employment change from a trade shock?
- How do migration costs interact with trade costs to determine the spatial distribution of gains from trade?

## Closely Related Model Families
- **Dynamic Discrete Choice / Random Utility** (Rust 1987, 1994): worker relocation follows identical T1EV structure; migration shares have closed-form logit expression
- **Eaton-Kortum Trade** (EK 2002): goods trade follows Fréchet productivity, gravity equation; trade elasticity θ governs expenditure share responses
- **Exact Hat Algebra** (DEK 2008; Costinot-Rodriguez-Clare 2014): static exact-hat algebra extended to dynamic setting
- **Small-Open-Economy Dynamic Labor Adjustment** (Artuç-Chaudhuri-McLaren 2010; Dix-Carneiro 2014): dynamic discrete choice migration in partial equilibrium; this paper adds full GE trade structure
- **Regional Trade Models** (Caliendo-Parro 2015; Caliendo-Parro-Rossi-Hansberg-Sarte 2018): multisector EK trade with input-output; static version of the production side
- **Reduced-Form China Shock** (Autor-Dorn-Hanson 2013; Acemoglu et al. 2016): DiD identification strategy used to instrument China TFP changes

## When This Model Is Not Appropriate
- When **only differential (DiD) effects** are needed and GE quantification is unnecessary — reduced-form methods are simpler
- When **fundamental parameters are the object of estimation** (e.g., estimating migration costs directly) — the hat algebra method is designed to *avoid* estimating fundamentals
- When **firm-level dynamics** (entry/exit, market power, granularity) are central — this is a representative-firm EK model
- When **short-run business cycle fluctuations** are the focus — the model is calibrated to annual/quarterly data but designed for medium-run transition analysis
- When **international migration** is a first-order margin — the paper abstracts from cross-country worker mobility
- When there are **very few markets** — the model's advantage scales with dimensionality
- When the **policy is non-marginal and structurally changes trade/migration costs** (e.g., new trade agreement): the model can handle this, but would require recalibrating initial trade shares
