# Melitz Model — Firm Heterogeneity and Trade

## Model Family Name
Heterogeneous Firms and Trade (Melitz 2003; Bernard-Eaton-Jensen-Kortum 2003)

## Canonical Economic Question
Why do only a small fraction of firms in any industry export, why are exporters systematically larger and more productive than non-exporters, and how does trade liberalization raise average industry productivity through firm selection and reallocation?

## When to Use This Model
- When the research involves firm-level heterogeneity in productivity, size, or export participation
- When the question concerns the extensive margin of trade (which firms export) vs. the intensive margin (how much they export)
- When studying the selection effect: trade liberalization forces the least productive firms to exit
- When analyzing why trade raises aggregate productivity even when aggregate output may fall in some sectors
- When the empirical paper uses firm-level or plant-level data and the theory needs to match observed exporter premia

## Typical Primitives
**Demand:** CES preferences (as in Krugman 1980); love of variety; σ > 1 elasticity of substitution

**Supply — firm heterogeneity:**
- Each potential entrant pays sunk entry cost fₑ (in units of labor) and draws productivity φ from distribution G(φ); support [φ_min, ∞)
- Conditional on entry, firm has marginal cost w/φ (higher productivity φ → lower marginal cost)
- Fixed production cost: ff per period (must be paid to remain active)
- Fixed export cost: fx per period (must be paid to access foreign market); fx > ff
- Variable trade cost: iceberg τ > 1 (τ units shipped to deliver one unit abroad)

**Productivity distribution:**
- Pareto distribution G(φ) = 1 − (φ_min/φ)^k is the standard assumption for tractability; yields closed-form thresholds and gravity-like predictions

## Timing
1. Potential entrants pay sunk cost fₑ and draw productivity φ from G(φ)
2. Firms with φ ≥ φ* produce and sell domestically (domestic threshold); others exit
3. Among producers, firms with φ ≥ φ*_x export (export threshold); φ*_x > φ* (only more productive firms export)
4. In steady state: mass of entrants = mass of exiters; zero expected profit from entry

## Information Structure
- Productivity φ is private information to each firm (realized after paying entry cost fₑ)
- Prices and aggregate variables (price index P, wage w, market size L) are public

## Agent Heterogeneity
- Firms differ in productivity φ — this is the central source of heterogeneity
- Three firm types in equilibrium: (i) exiters (φ < φ*), (ii) domestic-only producers (φ* ≤ φ < φ*_x), (iii) exporters (φ ≥ φ*_x)
- Exporter premium: exporters are larger, more productive, and pay higher wages than non-exporters — consistent with Bernard-Jensen (1995) empirical regularities

## Choice Variables
- Potential entrant: whether to pay fₑ and enter
- Active firm: price p(φ) to maximize profits; whether to pay fx and export
- Consumers: demand for each variety

## Constraints
- Domestic participation: π_d(φ*) = 0 — indifferent between producing and exiting
- Export participation: π_x(φ*_x) = 0 — indifferent between exporting and not exporting
- Free entry: expected profit from entry ∫[π(φ) − ff]dG(φ) = fₑ/δ (δ = exogenous exit rate)
- Labor market clearing: total labor demand = L

## Equilibrium Concept or Solution Concept
- **Steady-state equilibrium:** stable mass of firms M, productivity thresholds φ* and φ*_x, aggregate price index P, and wage w satisfy all zero-profit and free-entry conditions simultaneously
- **Pricing:** p(φ) = [σ/(σ−1)]·w/φ — higher productivity → lower price; same markup ratio as Krugman but price varies across firms
- **Revenue:** r(φ) = R·(p(φ)/P)^(1−σ); more productive firms earn more revenue and profit
- **Threshold conditions:** π_d(φ*) = 0 and π_x(φ*_x) = 0 determine φ* and φ*_x jointly with P and w

## Main Mechanism

**Selection effect:** When trade opens, foreign competition lowers the price index P in all markets. The domestic zero-profit threshold φ* rises: firms that were marginally profitable in autarky are no longer profitable and exit. The least productive firms are selected out of the market. This reallocation of resources from less productive to more productive firms raises average industry productivity — a novel gain from trade not present in Krugman.

**Export selection:** The export threshold φ*_x > φ* arises because exporting requires paying an additional fixed cost fx on top of the domestic fixed cost ff, and variable trade costs τ > 1 reduce export revenues relative to domestic revenues. Only firms with sufficient productivity to cover fx earn positive export profits. The threshold φ*_x determines the extensive margin of trade.

**Reallocation gain:** Trade shifts market share toward more productive firms (their varieties become cheaper; consumers substitute toward them) and away from less productive firms (which may exit). Even if no individual firm changes its technology, average industry productivity rises because the composition of surviving firms shifts upward. This is the reallocation gain from trade.

**Self-selection vs. learning-by-exporting:** Melitz generates a model of self-selection — firms export because they are productive, not because exporting makes them productive. Whether exporters learn and improve is an empirical question not answered by the theory.

## Common Propositions
- **Melitz (2003) — selection:** Trade liberalization raises φ* (domestic threshold) → least productive firms exit; average productivity of active firms rises
- **Melitz — extensive and intensive margins:** Trade liberalization raises φ*_x (export threshold rises in some parameterizations, falls in others); firms near the old threshold start exporting (extensive margin); existing exporters export more (intensive margin)
- **Exporter premium:** Exporters have higher productivity, revenues, employment, and wages than non-exporters in the same industry — the model predicts a discrete jump at the export threshold
- **ACR welfare formula (Arkolakis-Costinot-Rodríguez-Clare 2012):** In a broad class of models including Melitz with Pareto, the welfare gain from trade depends only on two statistics: the domestic trade share λ and the trade elasticity ε; ΔW = λ^(−1/ε) − 1
- **Pareto + CES → gravity:** With Pareto-distributed productivity, bilateral trade flows follow a structural gravity equation; trade costs enter with an elasticity equal to the Pareto shape parameter k(σ−1)

## Comparative Statics Usually Available
- Trade liberalization (τ ↓ or fx ↓) → φ* ↑ (tougher selection); φ*_x may rise or fall; more exporters; average productivity ↑
- Larger destination market (LF ↑) → lower export threshold φ*_x; more firms export; intensive margin also rises
- Higher fixed export cost fx ↑ → fewer exporters; larger exporter premium; more concentrated exports among top firms
- Higher shape parameter k (less productivity dispersion) → smaller exporter premium; more firms near thresholds
- Symmetric trade liberalization between two countries: both selection and variety effects; welfare gain = (λ_d)^(−1/ε) − 1

## Welfare Implications
- Gains from trade in Melitz = variety effect (as in Krugman) + reallocation effect (additional) − transition costs (firm exit destroys specific capital; workers displaced)
- Under Pareto + CES: ACR formula shows gains depend on domestic expenditure share λ_d and trade elasticity ε; markup heterogeneity (variable markups) can make gains larger or smaller than ACR
- Distributional effects: workers in exiting firms bear short-run costs; workers in expanding firms gain; aggregate welfare rises but transition is uneven
- Multi-country: gains depend on changes in domestic trade share; countries that were very open gain less from further liberalization (diminishing returns)

## Common Modeling Pitfalls
- Confusing the Melitz model (heterogeneous firms) with the Krugman model (homogeneous firms) — they have different predictions about which firms trade and how trade liberalization affects industry structure
- Applying the Melitz model without specifying the productivity distribution — closed-form solutions require Pareto; other distributions require simulation
- Treating the ACR formula as universally applicable — it holds under specific conditions (CES, homothetic preferences, iceberg costs, no profits in GE); variable markups or firm profits violate it
- Conflating self-selection (Melitz prediction: productive firms export because they can afford fx) with learning-by-exporting (exporters become more productive from exporting) — the model predicts only the former

## How to Extend the Model
- **Multi-product firms (Bernard-Redding-Schott 2011):** Each firm produces multiple varieties; trade liberalization causes firms to shed peripheral products and focus on core competencies
- **Melitz-Ottaviano:** Replace CES with linear demand; variable markups; pro-competitive effect of trade; markups fall with trade openness
- **Dynamic Melitz:** Firms accumulate productivity over time; export experience may raise productivity (learning-by-exporting); richer dynamics of entry, exit, and export transitions
- **Global value chains:** Offshoring and vertical specialization; each production stage follows Melitz-like selection; more productive firms participate in global value chains
- **Melitz + HO (new-new trade theory):** Sector-level comparative advantage (HO) combined with within-sector firm heterogeneity (Melitz); exporters are more productive than non-exporters within each sector; selection operates through both margins

## Example Research Questions This Model Can Support
- Why do only 4% of US manufacturing firms export, and what predicts which firms become exporters?
- Does a reduction in trade costs (e.g., WTO accession) cause the least productive domestic firms to exit, and does average industry productivity rise?
- How large is the welfare gain from NAFTA, measured using the domestic trade share and the trade elasticity (ACR formula)?
- Does the observed exporter premium (exporters are 2× more productive than non-exporters) match the Melitz model's prediction given estimated fixed export costs?
- When fixed export costs fall (e.g., e-commerce reduces market access barriers), does the extensive margin (new exporters) or the intensive margin (more exports per firm) dominate?

## Closely Related Model Families
- **New Trade Theory / Krugman** (Melitz extends Krugman: adds firm heterogeneity; Krugman is the special case where all firms have the same productivity)
- **Roy Model** (in human_capital_and_labor/: selection model for workers; Melitz is the producer analogue — firms self-select into exporting based on productivity)
- **Comparative Advantage / Ricardian** (sector-level trade patterns follow comparative advantage; within each sector, Melitz determines firm-level export participation)
- **Search Models** (extensions with costly matching between exporters and foreign buyers)
- **Mechanism Design** (optimal export promotion policy — which firms to subsidize — is a mechanism design problem given private productivity information)

## When This Model Is Not Appropriate
- When all firms in an industry are identical in productivity (use Krugman — Melitz collapses to Krugman when φ is degenerate)
- When the question is purely about aggregate trade volumes, not firm-level participation (gravity models work without Melitz micro-foundation in many applications)
- When the key mechanism involves strategic interaction between a small number of firms (use oligopoly models — Melitz assumes monopolistic competition with no strategic interaction)
- When productivity is endogenous and changes through learning or investment in response to trade (use dynamic extensions; standard Melitz has exogenous φ)

## Empirical Paper Caution

**Among the most empirically productive trade models** — generates sharp, testable predictions about the cross-sectional distribution of firm-level export behavior.

Two failure modes observed in practice:
1. **Treating the exporter productivity premium as evidence of the Melitz mechanism without ruling out learning-by-exporting:** The Melitz model predicts that productive firms self-select into exporting. The same cross-sectional pattern also arises if exporting raises productivity. Causal identification requires quasi-experimental variation in trade costs or access to export markets.
2. **Using the ACR welfare formula without checking its conditions:** The formula ΔW = λ_d^(−1/ε) − 1 requires CES preferences, iceberg trade costs, and no aggregate profits. If the paper studies a market with variable markups or important fixed costs, the ACR formula underestimates or overestimates welfare gains.

**When the Melitz model is well-suited for empirical papers:**
- The paper uses firm-level panel data and exploits a trade liberalization episode to estimate the causal effect of trade on firm entry, exit, and productivity (difference-in-differences or IV at the firm level)
- The paper estimates the ACR sufficient statistics (domestic trade share and trade elasticity) to quantify welfare gains, clearly stating the conditions under which the formula applies
- The paper tests the Melitz prediction that fixed export costs generate a discrete jump in firm size at the export participation margin, using bunching or regression discontinuity methods

**AI execution risk:** AI may blend Krugman and Melitz frameworks without distinguishing their different assumptions and predictions. Require the model section to state (a) whether firms are homogeneous (Krugman) or heterogeneous (Melitz), (b) what the source of the exporter premium is, and (c) which margin of trade adjustment (extensive vs. intensive) the empirical design is designed to identify.
