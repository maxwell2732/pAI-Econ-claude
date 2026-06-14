# Directed Technical Change and Skill-Biased Technical Change

## Model Family Name
Directed Technical Change (Acemoglu 2002) / Skill-Biased Technical Change (SBTC)

## Canonical Economic Question
What determines the direction of technological innovation — toward skill-complementary or labor-complementary technologies — and why has the last four decades seen a sustained shift toward technologies that complement skilled over unskilled workers?

## When to Use This Model
- When the question concerns why the relative wage of skilled workers has risen while their relative supply has also risen (a fact inconsistent with a fixed-technology model)
- When the research question involves the endogenous direction of innovation: which technologies firms or researchers choose to develop
- When modeling the long-run relationship between automation, skill demand, and the wage distribution
- When studying how market size and factor prices shape the technology frontier

## Typical Primitives
- Two types of labor: skilled H and unskilled L
- Two types of technology: skill-complementary A_H (raises productivity of H); unskill-complementary A_L (raises productivity of L)
- Production: Y = [(A_H H)^{(σ-1)/σ} + (A_L L)^{(σ-1)/σ}]^{σ/(σ-1)} — CES with elasticity of substitution σ
- Innovation sector: firms invest R&D to improve A_H or A_L; profit from innovation = market size × markup
- Market size effect: larger factor → more profitable to innovate for that factor (because more units benefit from the innovation)
- Price effect: more expensive factor → more profitable to innovate for that factor (because each unit benefits more)
- Equilibrium direction of technical change: determined by which type of R&D is more profitable

## Timing
1. At time t: factor endowments (H_t, L_t) and technologies (A_{H,t}, A_{L,t}) are given
2. Innovation sector: R&D firms choose to develop A_H or A_L improvements; profit-maximizing direction
3. Technologies A_H, A_L update based on R&D investments
4. Factor market: equilibrium wages w_H, w_L determined by marginal products given A_H, A_L
5. Long run: economy converges to a balanced growth path where both A_H and A_L grow at rates determined by equilibrium R&D allocation

## Information Structure
- Competitive innovation and factor markets with full information
- R&D firms observe factor prices and factor quantities; choose R&D direction to maximize profit
- No information asymmetry; the model is a structural description of the long-run factor market equilibrium

## Agent Heterogeneity
- Workers: heterogeneous by skill type (H vs. L); earn different wages in equilibrium
- R&D firms: choose the direction of innovation; no intrinsic preference for H vs. L technology

## Choice Variables
- R&D firms: allocation of R&D budget between A_H and A_L improving innovations
- Factor markets: factor demands (labor demand from production firms)
- Workers: labor supply in each skill type (typically inelastic in the baseline model)

## Constraints
- Factor market clearing: total H demanded = H_t; total L demanded = L_t
- R&D cost: developing A_{H,t+Δ} costs C_H(Δ) (convex); same for A_L
- Innovation market equilibrium: free entry into R&D drives profits to zero in the long run

## Equilibrium Concept or Solution Concept
- **Directed Technical Change equilibrium (Acemoglu 2002):** R&D direction adjusts so that profits from skill-complementary and unskill-complementary innovation are equalized (if both sectors are active) or one type dominates
- **Steady-state growth path:** on the BGP, A_H and A_L grow at rates that depend on the relative profitability of each type; the skill premium w_H/w_L is constant on the BGP
- **Two competing effects:**
  1. **Market size effect:** more skilled workers H → more profitable to innovate in A_H → A_H/A_L rises → SBTC
  2. **Price effect:** higher w_H → more profitable to innovate in A_H → amplifies the wage premium

## Main Mechanism
**Why the wage premium rose despite rising skill supply (the SBTC puzzle):**

In a fixed-technology CES model, ↑ H → ↓ w_H/w_L (standard supply effect). But with directed technical change, ↑ H raises the market size for skill-complementary technology → more R&D in A_H → A_H rises → demand for H rises. If σ > 1 (strong substitutability, "long-run elasticity condition"), the induced technology bias is strong enough to outweigh the direct supply effect → the skill premium rises even as H/L rises. This matches the data from the 1980s onward.

**Automation as directed technical change (Acemoglu 2022):** When capital is a substitute for labor (in specific tasks), the direction of TC toward automation follows the same logic — more routine labor → larger market for automation → more automation R&D → more displacement. The "excessive automation" result arises when the tax treatment of capital vs. labor creates a wedge in R&D profitability.

## Common Propositions
- **Market size effect (Acemoglu 2002):** when σ > 1, an increase in H/L raises the long-run skill premium by inducing more A_H innovation (market size outweighs relative scarcity)
- **Long-run elasticity condition:** the long-run elasticity of skill premium with respect to H/L is (σ-1)/σ × direct effect − R&D feedback; for high σ, the feedback dominates → long-run SBTC
- **Short-run vs. long-run effects:** in the short run, ↑ H → ↓ w_H/w_L; in the long run, induced TC reverses this → the long run may see rising skill premium
- **Equilibrium R&D allocation:** on the BGP, the R&D allocation ratio A_H/A_L = (H/L)^{(σ-1)/σ} (for a symmetric innovation cost function) — more skilled workers → more skill-biased technology
- **Policy implications:** subsidizing unskill-complementary technology can reverse the direction of TC in the short run; long-run sustainability requires sustaining the subsidy

## Comparative Statics Usually Available
- ↑ H/L → ↑ A_H/A_L on the BGP (if σ > 1); ↑ skill premium in the long run
- ↑ σ (higher substitutability between H and L) → stronger directed TC response; higher long-run skill premium sensitivity to H/L changes
- ↑ R&D subsidy for labor-complementary technology → ↓ A_H/A_L → ↓ skill premium; effect is short-run unless subsidy is permanent
- ↑ capital abundance (automation): reduces demand for L in automated tasks → further SBTC as market size for automation R&D rises

## Welfare Implications
- SBTC raises aggregate productivity (Y rises) but shifts income from L to H; the welfare effect on each group depends on whether their real wage rises or falls
- Optimal R&D subsidy: corrects the externality from directed TC → direct TC toward technologies with the highest social return, not the highest private return
- If the social planner places a higher weight on unskilled workers' utility, optimal R&D policy subsidizes A_L improving innovations beyond the market equilibrium
- Excessive automation (private market directs too much R&D to automation): arises when capital is under-taxed; correcting the tax wedge re-directs TC toward labor-complementary innovations

## Common Modeling Pitfalls
- Treating SBTC as exogenous — the directed TC model shows that what looks like exogenous SBTC is actually the endogenous response of innovation to factor prices and quantities
- Assuming a fixed A_H/A_L ratio when analyzing the effect of factor supply changes — this misses the long-run TC response entirely
- Applying the model with σ < 1 (complements) without noting that the market size and price effects now push TC in opposite directions → ambiguous direction of TC
- Conflating directed TC (endogenous direction of innovation) with SBTC (the empirical observation of technology complementary with skills) — directed TC is the theory; SBTC is the observation it tries to explain

## How to Extend the Model
- **Three factors (skilled, unskilled, capital):** extend CES to include capital alongside H and L; automation = directed TC toward capital in tasks performed by L
- **International directed TC (Acemoglu-Zilibotti):** technology diffuses from rich to poor countries; directed TC in rich countries may be inappropriate for poor countries' factor endowments
- **Automation and wages (Acemoglu-Restrepo 2018, 2019):** directed TC in the task-based framework → automation expands when capital is relatively cheap; new task creation requires directed TC in the other direction
- **AI-specific directed TC:** AI tools improve A_H (coding, analysis) faster than A_L; this generates SBTC in a new form with potentially different elasticity from physical capital automation

## Example Research Questions This Model Can Support
- Why did the skill premium rise from 1980 to 2010 even as the supply of college-educated workers expanded substantially?
- Does the rapid adoption of AI tools constitute a new wave of SBTC, and if so, what is the predicted long-run effect on the skill premium?
- When AI improves the productivity of skilled workers more than unskilled workers (SBTC), does the market over-invest in AI relative to the social optimum?
- What is the optimal tax policy on automation capital when the directed TC equilibrium over-invests in skill-biased technology?
- Can subsidies for labor-complementary R&D (robotics that assist rather than replace workers) redirect TC toward labor?

## Closely Related Model Families
- **Task-Based Production (Acemoglu-Restrepo)** (the specific task-based formalization of directed TC as automation + new tasks)
- **Automation, Displacement, and Reinstatement** (the aggregate consequences of TC in the task-based framework)
- **Human Capital Adaptation to Automation** (the worker-side response to SBTC and directed automation)
- **Occupational Choice and Comparative Advantage** (worker sorting changes in response to SBTC)
- **General Equilibrium Basics** (GE effects of SBTC on factor prices and the distribution of income)

## When This Model Is Not Appropriate
- When the direction of technical change is truly exogenous (e.g., basic science breakthroughs that are not market-directed)
- When the innovation market does not respond to profit signals (government-funded basic research)
- When the question concerns short-run adoption of existing technology rather than the long-run direction of innovation
- When the factor market is not competitive (monopsony, unions) and factor prices don't drive R&D decisions
