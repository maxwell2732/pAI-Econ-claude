# Comparative Advantage — Ricardian Model

## Model Family Name
Ricardian Comparative Advantage (Ricardo 1817; Dornbusch-Fischer-Samuelson 1977)

## Canonical Economic Question
When countries differ in their relative productivity across goods, which goods will each country produce and export, and do all countries gain from trade even when one country is absolutely less productive in every good?

## When to Use This Model
- When the research question concerns the pattern of trade specialization and its determinants
- When analyzing gains from trade in a setting where productivity differences (technology) are the primary source of comparative advantage
- When the question involves which industries a country will enter or exit following trade liberalization
- When studying the effect of technology shocks on trade patterns and factor rewards
- When a simple, tractable general equilibrium model of trade and specialization is needed as a theoretical foundation

## Typical Primitives
**2×2 Ricardo (two countries, two goods):**
- Two countries: Home (H) and Foreign (F)
- Two goods: good 1 and good 2; one factor of production: labor L
- Unit labor requirements: aᵢH = labor required per unit of good i in H; aᵢF in F
- Labor endowments: LH, LF (exogenous)
- Preferences: identical homothetic preferences over goods 1 and 2

**Comparative advantage condition:**
- H has comparative advantage in good 1 if a₁H/a₂H < a₁F/a₂F
  (i.e., H's relative productivity in good 1 is higher than F's)

**Dornbusch-Fischer-Samuelson (1977) — continuum of goods:**
- Goods z ∈ [0,1] indexed by H's comparative advantage A(z) = aF(z)/aH(z), decreasing in z
- Wages: wH, wF; good z produced in H iff A(z) ≥ wH/wF (H relatively cheaper)
- Endogenous cutoff z̃: A(z̃) = wH/wF; H produces [0, z̃], F produces [z̃, 1]
- Trade balance pins down wH/wF given preferences

## Timing
Static model — no dynamic elements. Equilibrium is a simultaneous determination of:
1. Wage ratio wH/wF
2. Production specialization pattern (which country produces which goods)
3. Trade flows consistent with trade balance

## Information Structure
- Full information: all agents know technology (unit labor requirements) and preferences
- No strategic interaction: prices are taken as given by competitive firms and workers

## Agent Heterogeneity
- Countries differ in technology (unit labor requirements) and size (labor endowments)
- Workers within each country are homogeneous; labor is the only factor
- No firm heterogeneity (all firms in a country face the same technology — contrast with Melitz)

## Choice Variables
- Firms: whether to produce each good (determined by comparative cost); set price = unit labor cost
- Workers: supply labor inelastically; wages determined by competitive labor market
- Consumers: demand goods according to preferences, subject to income constraint

## Constraints
- Labor market clearing in each country: ΣᵢLᵢH = LH, ΣᵢLᵢF = LF
- Goods market clearing: supply = demand for each good
- Trade balance: value of exports = value of imports for each country
- Specialization: each country produces only goods in which it has comparative advantage (in equilibrium)

## Equilibrium Concept or Solution Concept
- **Competitive equilibrium:** prices equal unit costs (pᵢ = wH·aᵢH in H, pᵢ = wF·aᵢF in F); no arbitrage across goods
- **Pattern of specialization:** each good produced in the lower-cost country given equilibrium wage ratio
- **DFS equilibrium:** wage ratio wH/wF determined by trade balance condition; cutoff z̃ = A⁻¹(wH/wF)
- Equilibrium is unique (under standard conditions) and stable

## Main Mechanism

**Comparative advantage, not absolute advantage:** Even if Home is less productive than Foreign in every good (aᵢH > aᵢF for all i), trade is mutually beneficial as long as relative productivities differ. Home specializes in the good where its relative disadvantage is smallest — its comparative advantage. In equilibrium, wages adjust to equalize costs in the goods each country produces, and each country imports goods it would produce relatively expensively.

**Gains from trade:** Specialization allows each country to concentrate labor in the activities where its comparative productivity is highest. Consumption possibilities expand beyond autarky for both countries. The small country tends to gain more (better terms of trade relative to autarky); the large country gains less because it moves world prices less.

**DFS mechanism:** In the continuum model, the wage ratio endogenously determines the range of goods each country produces. A technology improvement in Home (lower aH(z) for some z) expands Home's comparative advantage, shifts the cutoff z̃, and reallocates production across countries.

## Common Propositions
- **Gains from trade:** Both countries are weakly better off under free trade than autarky; at least one is strictly better off
- **Pattern of trade:** Each country exports goods in which it has comparative advantage (lower relative unit labor cost)
- **Wage equalization is incomplete:** Unlike HO, Ricardian model does not predict factor price equalization — countries can have very different wages and still trade (wage differences are the source of comparative advantage)
- **DFS — terms of trade:** Larger country captures less of the gains from trade; small country's terms of trade = Foreign's autarky relative price for the cutoff good
- **Technology improvement:** A productivity improvement in H in some goods shifts z̃, causes F to lose some production (import-competing sectors expand in H) and gain in others (H's comparative advantage narrows in those goods)

## Comparative Statics Usually Available
- Home productivity improvement (lower aH(z) for z < z̃) → Home wage rises, cutoff z̃ shifts, Home produces more goods
- Larger Home labor endowment LH → Home produces more goods; wage ratio adjusts to maintain trade balance
- Transport costs (iceberg costs τ): create a non-traded zone around z̃; range of traded goods shrinks as τ rises
- Multiple countries: chain of comparative advantage determines bilateral trade patterns; wages form a chain

## Welfare Implications
- Both countries gain from trade (relative to autarky): real wages rise in terms of imported goods
- Income distribution: with one factor (labor), everyone gains equally within each country — no distributional conflict from trade (contrast with HO's Stolper-Samuelson)
- Technology transfer: if F adopts H's technology in some goods, both may gain or F may lose (imitation erodes F's comparative advantage where it previously had the edge)

## Common Modeling Pitfalls
- Confusing comparative advantage with absolute advantage — the direction of trade is determined by relative, not absolute, productivities
- Applying the 2×2 Ricardian model to settings with capital and land — the model has only one factor; factor distribution effects require HO or specific factors model
- Ignoring that wages adjust to equilibrate trade — the wage ratio is endogenous, not fixed at relative productivity ratios
- Treating the Ricardian model as predicting complete specialization in finite-good cases — this is technically correct but empirically implausible; DFS with a continuum avoids this

## How to Extend the Model
- **Eaton-Kortum (2002):** Multi-country Ricardian model with Fréchet-distributed productivities; delivers the gravity equation as an equilibrium prediction; connects directly to bilateral trade flows data
- **Specific factors model (Ricardo-Viner):** Add sector-specific capital to Ricardian model; now trade has distributional effects within country — factor specific to export sector gains, factor specific to import-competing sector loses
- **Dornbusch-Fischer-Samuelson with trade costs:** Non-traded goods zone around the margin; home market bias in consumption
- **Dynamic comparative advantage:** comparative advantage can shift over time through learning-by-doing or R&D investment; policy can affect long-run specialization pattern

## Example Research Questions This Model Can Support
- Does China's comparative advantage in manufacturing reflect lower relative wages or higher relative productivity in manufacturing vs. services?
- How does offshoring of tasks (not goods) change a Ricardian model's predictions about wages and specialization?
- What is the welfare effect of a unilateral technology improvement in a small open economy — does the country always gain?
- Can trade liberalization in the Eaton-Kortum model explain the observed gravity pattern in bilateral trade flows?
- When a country's comparative advantage shifts (e.g., due to skill upgrading), which sectors shrink and which expand?

## Closely Related Model Families
- **Heckscher-Ohlin** (adds capital as a second factor; generates within-country distributional effects — Stolper-Samuelson)
- **New Trade Theory / Krugman** (adds increasing returns and love of variety; comparative advantage is less central)
- **Melitz** (adds firm heterogeneity within sectors; comparative advantage determines sector-level trade patterns but firms within sectors differ)
- **Roy Model** (comparative advantage across sectors for workers — occupational choice is the domestic analogue)
- **General Equilibrium** (Ricardian model is a 2-country GE model; DFS is its multi-good extension)

## When This Model Is Not Appropriate
- When the question involves within-country distributional effects of trade (use HO or specific factors model — Ricardian has one factor)
- When increasing returns to scale are central to the research question (use New Trade Theory / Krugman)
- When firm-level heterogeneity in exporting behavior is the object of study (use Melitz)
- When the trade pattern is driven by factor endowments rather than technology differences (use HO)

## Empirical Paper Caution

**Well-suited for empirical papers studying sector-level trade patterns and specialization**, particularly when combined with the Eaton-Kortum (2002) extension.

Two failure modes observed in practice:
1. **Using comparative advantage informally without a model:** Papers claim a country has "comparative advantage" in a sector based on revealed comparative advantage (RCA) indices without grounding the claim in a structural model. The Ricardian model makes this precise — but RCA indices conflate technology, endowments, and policy.
2. **Ignoring wage adjustment in partial equilibrium:** A common error is to hold wages fixed and compute cost comparisons across countries. In general equilibrium, wages adjust to restore trade balance; fixing wages gives incorrect predictions about trade patterns and gains.

**When the Ricardian model is well-suited for empirical papers:**
- The paper uses the Eaton-Kortum (2002) framework to estimate trade costs and technology parameters from bilateral trade flow data (gravity regression)
- The paper studies sector-level comparative advantage using productivity data and tests whether export shares increase in sectors with lower relative unit labor costs
- The paper examines how technology shocks (e.g., Chinese manufacturing productivity growth) reallocate production across countries at the sector level

**AI execution risk:** AI may invoke comparative advantage as a generic justification for trade patterns without specifying the technology differences driving it or connecting the mechanism to an estimating equation. Require the model to state explicitly whether comparative advantage is driven by technology (Ricardian) or factor endowments (HO) and how this is identified in the data.
