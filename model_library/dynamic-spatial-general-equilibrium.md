# Dynamic Spatial General Equilibrium (Kleinman-Liu-Redding)

## Model Family Name
Dynamic Spatial General Equilibrium / Forward-Looking Investment with Dynamic Discrete Choice Migration

## Canonical Economic Question
How do forward-looking capital accumulation and dynamic migration interact to shape the spatial distribution of economic activity over time, and what determines the speed and heterogeneity of regional convergence to steady state in response to fundamental shocks?

## When to Use This Model
- When the research question requires the interaction of **migration frictions** (gradual labor reallocation) with **forward-looking capital accumulation** (gradual investment adjustment) across regions
- When analyzing the **transition path** of regional economies after productivity, amenity, trade cost, or migration cost shocks
- When the question concerns **income convergence** (β-convergence) across regions and its decline over time
- When studying the **persistent and heterogeneous impact of local shocks** (e.g., China shock, trade liberalization, local productivity decline)
- When dynamic exact-hat algebra methods are needed to solve counterfactuals without full knowledge of fundamental levels

## Typical Primitives
- N locations (regions/states), indexed i, n = 1, ..., N
- Two types of agents:
  1. **Workers** (mobile, hand-to-mouth): supply labor; make forward-looking migration decisions; consume all wage income each period
  2. **Landlords** (immobile, forward-looking): own capital; make consumption-investment decisions; geographically fixed
- **Production** (Cobb-Douglas, CRS, perfect competition):
  yᵢₜ = zᵢₜ (ℓᵢₜ/μ)ᵐᵘ (kᵢₜ/(1−μ))¹⁻ᵐᵘ, 0 < μ < 1
  where zᵢₜ = productivity, ℓᵢₜ = labor, kᵢₜ = capital
- **Trade**: Armington (1969) model, CES preferences with elasticity σ > 1, trade elasticity θ = σ − 1 > 0
- **Bilateral iceberg trade costs**: τₙᵢₜ ≥ 1, τᵢᵢₜ = 1
- **Bilateral migration costs**: κₙᵢₜ ≥ 1, κᵢᵢₜ = 1
- **Amenities**: bᵢₜ (shift worker utility in each location)
- **Endogenous state variables**: ℓᵢₜ (population share), kᵢₜ (capital stock)
- **Exogenous fundamentals**: {zᵢₜ, bᵢₜ, τₙᵢₜ, κₙᵢₜ}

## Timing
Within each period t:
1. Productivity zᵢₜ, amenities bᵢₜ, trade costs τₙᵢₜ, and migration costs κₙᵢₜ are realized
2. Firms hire labor ℓᵢₜ and rent capital kᵢₜ at rates wᵢₜ, rᵢₜ; produce yᵢₜ
3. Workers earn wages, consume all income (hand-to-mouth); landlords earn rental income
4. Goods trade occurs; expenditure shares Sₙᵢₜ determined by CES gravity
5. Workers observe idiosyncratic extreme-value mobility shocks εₙₜ
6. Workers choose location g to maximize βEₜ[Vᵍᵥ₊₁] − κ₉ᵢₜ + ρε₉ₜ (dynamic discrete choice)
7. Landlords choose consumption cᵏᵢₜ and next-period capital kᵢₜ₊₁ to maximize intertemporal utility
8. State variables update to ℓᵢₜ₊₁, kᵢₜ₊₁

## Information Structure
- **Perfect foresight** (baseline): agents observe current fundamentals and know future sequences; no uncertainty about future fundamentals
- **Rational expectations** (extension): agents observe initial shock and form rational expectations about future shocks from a known stochastic process
- Workers and landlords have the same information sets
- Idiosyncratic migration shocks ε are private to each worker (extreme value distribution, CDF F(ε) = e^(−e^(−ε−γ)))

## Agent Heterogeneity
- **Workers**: ex-ante identical in skills and preferences; ex-post heterogeneous due to idiosyncratic mobility shocks ε; differ in current location (state dependence)
- **Landlords**: ex-ante identical within location; differ across locations only through rental income rᵢₜkᵢₜ
- **Locations**: heterogeneous in productivity zᵢ, amenities bᵢ, trade costs τₙᵢ, migration costs κₙᵢ, and initial capital/labor endowments

## Choice Variables
- **Workers**: discrete location choice g ∈ {1, ..., N} in each period (migration decision)
- **Landlords**: consumption cᵏᵢₜ and investment kᵢₜ₊₁ (saving rate)
- **Firms**: labor demand ℓᵢₜ, capital demand kᵢₜ (static, perfect competition)

## Constraints
- **Labor market**: Σᵢ ℓᵢₜ = 1 (total population normalized to 1)
- **Capital accumulation**: kᵢₜ₊₁ = (1−δ)kᵢₜ + investmentᵢₜ; capital is location-specific once installed
- **Worker budget**: cʷᵢₜ = wᵢₜ (hand-to-mouth, no saving)
- **Landlord budget**: rᵢₜkᵢₜ = pᵢₜ(cᵏᵢₜ + kᵢₜ₊₁ − (1−δ)kᵢₜ)
- **Goods market**: yᵢₜ = Σₙ(cʷₙᵢₜ + cᵏₙᵢₜ + ιᵏₙᵢₜ) where ιᵏₙᵢₜ is investment goods from i used in n
- **Capital market**: rᵢₜkᵢₜ = ((1−μ)/μ)wᵢₜℓᵢₜ (Cobb-Douglas + perfect competition)

## Equilibrium Concept or Solution Concept
- **Steady-state equilibrium** (Definition 1): time-invariant allocation {ℓᵢ*, kᵢ*, wᵢ*, Rᵢ*, vᵢ*} given time-invariant fundamentals, solved as a fixed point
- **Dynamic equilibrium**: stochastic process {wᵢₜ, Rᵢₜ, vᵢₜ, ℓᵢₜ₊₁, kᵢₜ₊₁} measurable with respect to shocks up to t, solving: (i) goods market clearing (12), (ii) capital market clearing + return (9)–(10), (iii) worker value function (14), (iv) population flow (15), (v) capital accumulation (11)
- **Transition path**: solved via (a) dynamic exact-hat algebra (nonlinear, perfect foresight), or (b) linearization + spectral analysis (closed form, any shock sequence)
- **Referee note**: this is a competitive equilibrium, not a bargaining or game-theoretic solution. Workers and landlords are price-takers. The richness comes from the spatial network structure (trade + migration matrices), not from strategic interaction.

## Main Mechanism
The model's central mechanism is the **interaction between capital accumulation and migration** in shaping the speed and pattern of regional adjustment to shocks.

**Capital-labor correlation determines convergence speed:**
- When capital gaps and labor gaps from steady state are **positively correlated** across locations (both above or both below steady state), convergence is **slow**: high capital incentivizes further in-migration, and low capital slows in-migration
- When gaps are **negatively correlated**, convergence is **fast**: capital and labor dynamics offset each other
- U.S. Rust Belt states (capital & labor above steady state) vs. Sun Belt states (below steady state) generate positive correlation → slow convergence

**Spectral decomposition of transition dynamics:**
- The transition matrix P (2N × 2N) governs the evolution of {ℓ̃ₜ, k̃ₜ} (log deviations from steady state)
- P's eigendecomposition P = UΛV decomposes any shock into 2N independent eigencomponents
- Each eigencomponent h has eigenvalue λₕ: half-life = ln(0.5)/ln(|λₕ|)
- Eigencomponents with |λₕ| ≈ 1 converge extremely slowly (half-lives > 80 years)
- The loading of empirical shocks on these eigencomponents determines which convergence patterns dominate

**Dynamic exact-hat algebra (Proposition 2):**
- Counterfactual transition paths can be solved using only observed initial allocation {ℓᵢ₀, kᵢ₀, Sₙᵢ₀, Dₙᵢ₋₁} and assumed future changes in fundamentals {żᵢₜ, ḃᵢₜ, τ̇ₙᵢₜ, κ̇ₙᵢₜ}
- No knowledge of the *level* of fundamentals {zᵢₜ, bᵢₜ, τₙᵢₜ, κₙᵢₜ} is required

**Linearized closed-form solution (Proposition 3):**
- Transition path: x̃ₜ₊₁ = P x̃ₜ + R f̃ (first-order system)
- x̃ₜ = [ℓ̃ₜ; k̃ₜ] (2N × 1), f̃ = [z̃; b̃] (2N × 1)
- Impact matrix R, transition matrix P depend only on structural parameters {ψ, θ, β, ρ, μ, δ} and observed trade/migration share matrices {S, T, D, E}

## Common Propositions
- **Proposition 1 (Existence and Uniqueness of Steady State)**: sufficient condition: spectral radius of coefficient matrix A of parameters {ψ, θ, β, ρ, μ, δ} ≤ 1
- **Proposition 2 (Dynamic Exact-Hat Algebra)**: counterfactual transition paths require only observed initial allocation + future changes in fundamentals, not levels
- **Proposition 3 (Closed-Form Transition Path)**: x̃ₜ₊₁ = P x̃ₜ + R f̃; P = UΛU⁻¹; R = (ΨP + Ψ − Φ)⁻¹Δ
- **Proposition 4 (Spectral Analysis)**: x̃ₜ = Σₕ²ᴺ (1−λₕᵗ)/(1−λₕ) × uₕvₕ'R f̃; weights aₕ recovered from regression of f̃ on eigenshocks f̃₍ₕ₎
- **Proposition 5 (Speed of Convergence)**: half-life = ln(0.5)/ln(|λₕ|) for eigenshock f̃₍ₕ₎; slow convergence when |λₕ| is large (close to 1)
- **Proposition 6 (Agglomeration Extension)**: under agglomeration forces, spectral radius condition extended to include elasticities η_z, η_b

## Comparative Statics Usually Available
- **Capital share (1−μ) ↑ → slower convergence**: larger capital share amplifies capital-labor interaction
- **Trade elasticity θ ↑ → faster convergence**: stronger trade linkages spread shocks faster
- **Migration elasticity ρ ↑ → faster convergence**: workers more responsive to utility differences
- **Depreciation rate δ ↑ → faster convergence**: capital adjusts more quickly
- **Discount factor β ↑ → slower convergence (ambiguous)**: more patient landlords adjust capital less per period
- **Intertemporal elasticity ψ ↑ → slower convergence**: stronger consumption-smoothing motive reduces capital adjustment speed
- These comparative statics are not simple scalars: they depend on the entire spatial network structure encoded in S, T, D, E

## Welfare Implications
- The model is a positive framework (not explicitly normative), but the speed of convergence has welfare implications:
  - Workers in declining regions experience prolonged welfare losses due to slow capital-labor adjustment
  - Migration frictions + capital gradual adjustment imply that local shocks have persistent welfare effects (decades-long half-lives)
  - Policy interventions (investment subsidies, mobility subsidies) can accelerate convergence
  - The welfare cost of slow adjustment depends on the correlation structure of capital and labor gaps across space

## Common Modeling Pitfalls
- Ignoring the **interaction between capital and labor dynamics**: the key novel mechanism; static or labor-only dynamic models miss the amplification/attenuation of persistence
- Assuming **full mobility of capital** (instantaneous adjustment): forward-looking investment with adjustment costs is central to generating slow convergence and non-monotonic dynamics
- **Treating the speed of convergence as a scalar**: the model shows convergence speed is heterogeneous and depends on the eigencomposition of the shock; different shocks converge at different rates
- **Forgetting the numeraire**: Σᵢ wᵢₜℓᵢₜ = 1 (total labor income normalized); comparative statics must respect this
- **Confusing expenditure shares S vs. income shares T**: Sₙᵢ (row = importer, column = exporter) vs. Tᵢₙ (row = exporter, column = importer); similarly for outmigration D vs. inmigration E

## How to Extend the Model
- **Agglomeration economies** (Section 4.1): productivity/amenities depend on local population and capital stock
- **Trade imbalances** (Section 4.2): exogenous deficits or foreign asset accumulation
- **Residential capital (housing)** (Section 4.3): capital used for housing as well as production
- **Cross-location landlord investment** (Section 4.4): gravity equation for financial flows with heterogeneous investment productivity
- **Labor participation decision** (Section 4.5): extensive margin of labor supply
- **Multiple sectors + input-output linkages** (Section 4.6): capital mobile across sectors within location, or sector-specific capital
- **Stochastic fundamentals with rational expectations** (Proposition S.2): agents observe initial shock and know stochastic process
- **Alternative trade structures** (Online Supplement S.3): Eaton-Kortum, monopolistic competition — results hold for any constant-trade-elasticity model
- **Non-constant saving rate relaxation**: the linear saving rate (Lemma 1) depends on ψ = 1 (log utility); ψ ≠ 1 requires numerical solution

## Example Research Questions This Model Can Support
- Why has income convergence across U.S. states declined over time, and what is the relative importance of initial conditions vs. subsequent fundamental shocks?
- How persistent are the effects of a local productivity decline (e.g., manufacturing decline in the Rust Belt), and what is the half-life of adjustment?
- How do trade liberalization shocks interact with capital accumulation to determine the transition path of regional employment and wages?
- What determines whether a region's response to a shock is monotonic or non-monotonic over time?
- How does the correlation between productivity and amenity shocks across regions determine the speed of aggregate convergence?
- What is the welfare cost of slow capital-labor adjustment after a negative local shock, and how do migration costs amplify this cost?

## Closely Related Model Families
- **General Equilibrium Basics** (the underlying GE framework, extended to spatial dynamics)
- **Dynamic Optimization / Bellman** (worker value function and landlord consumption-savings both use Bellman equations)
- **Discrete Choice / Random Utility** (worker migration is a dynamic discrete choice with extreme value shocks)
- **Search Models** (migration can be interpreted as a search over locations with costly moves)
- **Melitz / Firm Heterogeneity** (alternative trade structure, isomorphic under constant trade elasticity)
- **Overlapping Generations / Life-Cycle** (landlord intertemporal problem resembles perpetual-youth OLG structure)
- **Task-Based Production** (can be embedded for automation/labor demand analysis across space)

## When This Model Is Not Appropriate
- When the research question involves **short-run business cycle fluctuations** (the model is calibrated to 5-year periods)
- When **capital is perfectly mobile** across locations (the model's key friction is gradual capital adjustment)
- When **migration is not an important margin** (labor supply is local and fixed)
- When the focus is on **individual firm decisions** rather than regional aggregates
- When **strategic interaction** between firms or between firms and workers is the central mechanism (this is a competitive equilibrium model)
- When the number of locations is very small (1–2): the spectral analysis framework is most informative with many asymmetric locations
