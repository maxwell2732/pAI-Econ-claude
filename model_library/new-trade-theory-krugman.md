# New Trade Theory — Krugman (1980)

## Model Family Name
New Trade Theory / Monopolistic Competition and Trade (Krugman 1980; Dixit-Stiglitz 1977)

## Canonical Economic Question
Why do countries with similar factor endowments trade large volumes of similar goods with each other (intra-industry trade), and how do economies of scale and love of variety generate gains from trade even without comparative advantage?

## When to Use This Model
- When the question concerns intra-industry trade — two-way trade in similar differentiated goods between similar countries
- When economies of scale (internal to the firm) are a central feature of the market
- When consumers value variety and gain from access to a wider range of differentiated products through trade
- When the home market effect — larger countries export differentiated goods — is a prediction of interest
- When analyzing how market size affects industry location, the number of varieties, and consumer welfare

## Typical Primitives
**Demand side (Dixit-Stiglitz CES preferences):**
- Representative consumer with utility U = [Σᵢcᵢ^((σ−1)/σ)]^(σ/(σ−1)); σ > 1 is the elasticity of substitution
- Love of variety: consumer prefers a little of many goods to a lot of one good (diminishing marginal utility within each variety)
- Each variety is a symmetric substitute; all varieties enter utility symmetrically

**Supply side:**
- Each firm produces one unique variety; fixed cost F (in units of labor), constant marginal cost c (in units of labor)
- Total cost: TC(q) = w(F + c·q); economies of scale because average cost falls in output
- Free entry drives profits to zero in the long run

**Two-country version:**
- Two countries (H and F) with labor endowments LH and LF; symmetric preferences
- Iceberg trade cost: τ ≥ 1 units shipped to export one unit (τ = 1: free trade; τ → ∞: autarky)
- Home market effect: LH > LF → H produces more varieties in equilibrium

## Timing
Static model. Equilibrium determined simultaneously:
1. Each firm sets price and quantity given competitors
2. Entry/exit until zero profits
3. Trade flows and consumer welfare determined

## Information Structure
- Symmetric information; no private information
- Firms observe market conditions (wage, price index, number of competitors) before choosing price

## Agent Heterogeneity
- **Symmetric firms:** all firms are identical in costs (F, c) and produce symmetric varieties — no firm heterogeneity (contrast with Melitz)
- **Identical consumers:** representative consumer in each country; no consumer heterogeneity
- Countries differ only in size (LH vs. LF)

## Choice Variables
- Each firm: price p and quantity q (equivalently: choose p given demand, since quantity adjusts)
- Entry: potential firms decide whether to pay fixed cost F and enter
- Consumers: quantity of each variety to consume

## Constraints
- Zero profit (free entry): π = (p − w·c)·q − w·F = 0
- Markup pricing: p = [σ/(σ−1)]·w·c (constant markup over marginal cost; markup = 1/(σ−1) in percentage terms)
- Labor market clearing: n·(F + c·q) = L (total labor = labor in all firms)
- Trade balance: value of H's exports = value of F's imports

## Equilibrium Concept or Solution Concept
- **Monopolistic competition equilibrium (Chamberlinian):** each firm faces a downward-sloping demand curve (because its variety is unique); sets MR = MC; free entry drives profits to zero
- **Symmetric equilibrium:** all firms charge the same price p* = [σ/(σ−1)]·w·c; produce the same quantity q* = F(σ−1)/c
- **Number of varieties:** n = L/(σF) — proportional to market size (more workers → more varieties)
- **With trade:** total varieties available = nH + nF > max(nH, nF); each country gains from variety even if they are identical

## Main Mechanism

**Economies of scale + love of variety = gains from trade without comparative advantage:** In autarky, each country's market size limits how many varieties can profitably exist (fixed cost F must be covered). Under trade, each firm can sell to a larger market, covering fixed costs at lower average cost. This allows more varieties to exist globally (or the same varieties at lower cost). Consumer welfare rises because (a) more varieties are available and (b) lower prices due to scale.

**Intra-industry trade:** Even between identical countries, trade occurs — each country specializes in a different set of varieties. Trade volume is positive (varieties exported = varieties imported) but net trade is zero. This explains the large share of trade between similar countries (e.g., US-Germany car trade) that comparative advantage models cannot explain.

**Home market effect:** When countries differ in size, the larger country (higher LH) attracts a disproportionately large share of industry: firms prefer to locate where the market is large (to minimize trade costs on most sales) and export to the small country. The larger country becomes a net exporter of differentiated goods — the home market effect. This is the foundation of economic geography (Krugman 1991).

**Price index effect:** With more varieties available through trade, the CES price index falls even if individual prices are unchanged. This is a real income gain — the same nominal income buys higher utility.

## Common Propositions
- **Gains from variety:** Under free trade with n_H + n_F varieties available, consumer welfare in each country is strictly higher than autarky (even if both countries are identical)
- **Number of varieties proportional to market size:** n = L/(σF); larger countries support more varieties in autarky; under trade, global variety = (LH + LF)/(σF)
- **Constant markup:** p = [σ/(σ−1)]·w·c; markup is independent of market size, trade costs, or number of competitors — a strong prediction that distinguishes this model
- **Home market effect:** Country with larger domestic market (LH > LF) is a net exporter of differentiated goods; magnitude proportional to demand asymmetry
- **Trade reduces variety per country, increases global variety:** Each country produces fewer varieties under trade (some firms exit) but gains access to more total varieties; welfare still rises

## Comparative Statics Usually Available
- Trade liberalization (τ ↓) → more varieties available in each country; lower price index; higher welfare; some domestic firms exit (import competition)
- Market size increase (L ↑) → more varieties; lower average cost; higher welfare
- Higher σ (more substitutable varieties) → lower markup; fiercer competition; fewer varieties in equilibrium
- Asymmetric country sizes → larger home market effect; smaller country relies more on imports for variety
- Entry cost F ↑ → fewer varieties; each firm is larger; higher consumer prices

## Welfare Implications
- Both countries gain from trade through variety and scale, even without comparative advantage
- Gains from trade are larger for small countries (they gain proportionately more variety) and for countries that are more similar to their trading partners (more intra-industry trade)
- Within-country distribution: all workers are identical (one factor model) — no distributional conflict from trade; contrast with HO's Stolper-Samuelson
- Market structure: trade reduces the number of domestic firms but surviving firms are more productive (larger scale); average firm size increases

## Common Modeling Pitfalls
- Confusing internal economies of scale (Krugman — firm-level IRS) with external economies of scale — the welfare implications differ; external economies can generate multiple equilibria and agglomeration traps
- Applying the constant markup result (p = [σ/(σ−1)]·w·c) to markets with variable markups — constant markups are a feature of CES preferences; other demand systems (linear, logit) yield variable markups
- Ignoring that all firms are symmetric — the Krugman model has no prediction about which specific firms trade or how productive exporters are (see Melitz for firm heterogeneity)
- Treating intra-industry trade indices (Grubel-Lloyd) as direct evidence for the Krugman model — they are consistent with but do not uniquely identify monopolistic competition

## How to Extend the Model
- **Melitz (2003):** Add firm heterogeneity (Pareto-distributed productivity); only high-productivity firms export; selection effect generates additional gains from trade
- **Krugman (1991) — Economic Geography (New Economic Geography):** Two-sector model (agriculture + manufacturing); agglomeration vs. dispersion forces determine industry location; core-periphery equilibria
- **Multi-country gravity (Anderson-van Wincoop 2003):** Structural gravity equation derived from monopolistic competition; bilateral trade flows determined by bilateral trade costs relative to multilateral resistance
- **Variable markups (ACDR 2012):** Replace CES with variable-elasticity demand; firms with different productivity charge different markups; pro-competitive effects of trade
- **Firm-level export dynamics:** Add sunk entry costs for exporting; firms export only if productivity exceeds export threshold (bridges Krugman to Melitz)

## Example Research Questions This Model Can Support
- Can economies of scale and love of variety explain why Germany and France trade large volumes of automobiles with each other despite having similar endowments?
- How does a trade agreement between a large and small country affect the variety available to consumers in each country?
- Does the home market effect explain why US high-tech manufacturing is concentrated domestically despite trade openness?
- How does trade liberalization affect the number of domestic firms and average firm size in a monopolistically competitive industry?
- What share of the welfare gains from trade can be attributed to variety (Krugman) vs. reallocation toward productive firms (Melitz)?

## Closely Related Model Families
- **Melitz** (extends Krugman with firm heterogeneity; adds selection and reallocation gains from trade)
- **Hotelling / Product Differentiation** (horizontal differentiation; Krugman's CES is the symmetric version of Dixit-Stiglitz differentiation)
- **General Equilibrium** (Krugman is a GE model with monopolistic competition replacing perfect competition)
- **Comparative Advantage / Ricardian** (Krugman: gains from scale/variety; Ricardian: gains from comparative advantage; they are complementary, not competing)
- **Heckscher-Ohlin** (HO: factor endowments drive inter-industry trade; Krugman: scale/variety drive intra-industry trade; combined in "new-new trade theory")

## When This Model Is Not Appropriate
- When the question is about inter-industry trade driven by comparative advantage (use Ricardian or HO)
- When firm heterogeneity within sectors is central — which firms export, why some firms are more productive (use Melitz)
- When the market is oligopolistic (small number of firms with strategic interaction) — use Cournot or Bertrand (Krugman assumes monopolistic competition with many small firms)
- When economies of scale are external to the firm (localization economies, knowledge spillovers) rather than internal — the equilibrium and welfare implications differ

## Empirical Paper Caution

**Well-suited for empirical papers on trade volumes, variety gains, and market size effects**, especially when combined with the structural gravity framework.

Two failure modes observed in practice:
1. **Testing intra-industry trade without identifying the scale/variety mechanism:** Grubel-Lloyd indices measure intra-industry trade but do not identify whether it is driven by economies of scale (Krugman) or firm heterogeneity (Melitz) or both. The model must be specified to distinguish these.
2. **Using constant markup as an untested assumption:** The Krugman model predicts constant markups (p/MC = σ/(σ−1)); if the empirical paper studies market power or pass-through, the constant markup assumption is binding and should be tested or relaxed.

**When new trade theory models are well-suited for empirical papers:**
- The paper estimates welfare gains from trade using the "sufficient statistic" approach (ACR formula: welfare gain = −(1/σ)·ln(domestic expenditure share)) — requires only import penetration and the trade elasticity
- The paper studies the variety gains from trade using price indices or product-level trade data (Broda-Weinstein 2006)
- The paper tests the home market effect by regressing net exports of differentiated goods on relative market size across countries

**AI execution risk:** AI may conflate the Krugman (symmetric firms, variety gains) and Melitz (heterogeneous firms, selection gains) frameworks. Require the model section to state explicitly whether firms are assumed symmetric (Krugman) or heterogeneous (Melitz) and ensure the empirical design matches the model's implications.
