# Research Intake

**Date:** 2026-06-23
**Hypothesis ID:** HYP-001
**Pipeline:** theoretical-economics-claude-skill

---

## Raw Input (verbatim)

> 请基于医疗保险道德风险模型，讨论中国药品集采制度的理论影响。请先做现实背景校验：哪些事实需要公开资料支持，哪些只是建模假设；然后构建一个简单模型，分析集采降低药价如何影响患者用药需求、医保支出、企业参与约束、原研药退出风险、药品可及性和社会福利。

---

## Structured Extraction

**Core claim or puzzle:**
China's centralized drug procurement (集采, Volume-Based Procurement / VBP) policy lowers drug prices. The researcher asks: through the lens of a health insurance moral hazard model, what are the theoretical welfare effects of this price reduction — on patient drug demand, public insurance expenditure, firm participation constraints, the risk of originator (brand-name) drug exit, drug accessibility, and social welfare?

**Economic phenomenon targeted:**
China's National Volume-Based Procurement program (国家药品集中带量采购, launched 2018–present) drives down drug prices via competitive bidding among generic manufacturers. The institution interacts with public health insurance (基本医疗保险, Basic Medical Insurance), which subsidizes patient out-of-pocket costs, creating a classic moral hazard channel.

**Proposed mechanism (cause → channel → outcome):**
- Cause: VBP reduces the regulated drug price (or out-of-pocket price facing patients)
- Channel 1 (moral hazard): Lower patient cost-sharing → overconsumption relative to socially optimal demand → increased total insurance expenditure despite lower unit price
- Channel 2 (firm participation): Lower prices compress manufacturer margins → firms may exit or decline to bid → reduced market participation
- Channel 3 (access / generic substitution): Lower prices on generics increase quantity and accessibility for price-sensitive patients
- Channel 4 (originator exit): Originator (brand-name / 原研药) firms face a participation constraint — if the VBP price falls below their cost floor, they exit the market, reducing product variety
- Channel 5 (welfare): Net social welfare effect depends on the trade-off between consumer surplus gains (lower prices, better access) and potential welfare losses (moral hazard waste, reduced innovation incentives, originator exit)

**Agent types mentioned:**
- Patients/consumers (insured individuals)
- Health insurance (公共医保, insurer — possibly government)
- Generic drug manufacturers (generics, VBP participants)
- Originator (brand-name) drug companies (原研药企业)
- Regulator / government (setting VBP rules and reimbursement rates)

**Environment or setting:**
- Insurance market with moral hazard (standard Pauly 1968 / Zeckhauser 1970 style framework)
- Regulated drug pricing through centralized procurement auction
- Public monopsony or near-monopsony buyer (government purchasing consortium)
- Differentiated products market: generic vs. originator drugs
- China-specific institutional context: national centralized procurement (带量采购), Basic Medical Insurance system

**Mathematical intuition:**
Not formally specified by the researcher, but the request implies:
- Patient demand function D(p, c) where p is drug price and c is coinsurance rate
- Insurer budget constraint: spending = (p - c·p) × D(p, c) × N_patients
- Firm participation constraint: π(p_VBP) ≥ 0 (or ≥ reservation profit)
- Welfare function: W = CS + PS + Insurer surplus - moral hazard deadweight loss

**Empirical or stylized motivation:**
- China's VBP program has been running since 2018 (Batch 1) with subsequent rounds
- Reported price reductions of 50–90% on selected molecules
- Some originator drugs (e.g., AstraZeneca products) have been observed to exit VBP rounds or lose hospital access
- Basic Medical Insurance covers approximately 1.3 billion people in China

**Normative dimension (welfare / efficiency / policy):**
Explicit: The researcher requests analysis of social welfare effects, drug accessibility, and implicit policy trade-offs (price reduction vs. innovation incentives vs. moral hazard costs).

**Comparable models or literature mentioned:**
- "医疗保险道德风险模型" — Health insurance moral hazard model (Pauly 1968 / Manning et al. RAND Health Insurance Experiment tradition implied)
- No specific papers named

**Open questions explicitly stated:**
1. Which institutional facts about China's VBP need external data support vs. which are modeling assumptions?
2. How does VBP-induced price reduction affect patient drug demand (quantity)?
3. How does it affect medical insurance expenditure?
4. What is the participation constraint for firms under VBP?
5. What is the risk of originator drug exit?
6. What happens to drug accessibility (可及性)?
7. What is the net effect on social welfare?

---

## Research Classification

**Research type (all that apply):**
- [ ] Existence result — Does an equilibrium satisfying some property exist?
- [ ] Uniqueness / multiplicity — Is the equilibrium unique, or are there multiple?
- [x] Comparative statics — How do equilibrium objects change with model parameters?
- [x] Welfare / efficiency — Is the equilibrium optimal, and for whom?
- [ ] Mechanism design / implementation — Can a mechanism be designed to achieve a social goal?
- [x] Information / asymmetry — What are the implications of private information? (moral hazard = hidden action / hidden demand)
- [ ] Dynamic / repeated — How does repetition or dynamics change outcomes?
- [ ] Behavioral / bounded rationality — How do cognitive limits or biases affect predictions?
- [x] Other: Partial equilibrium with firm participation constraint; regulated pricing under public monopsony

**Theory branch(es) (all that apply):**
- [x] Game theory (non-cooperative) — firm participation / exit decisions
- [ ] General equilibrium
- [x] Contract theory / principal-agent — insurer-patient moral hazard
- [ ] Mechanism design / social choice
- [x] Industrial organization / market design — drug market structure, VBP auction
- [x] Information economics — moral hazard (hidden action)
- [ ] Macroeconomic theory
- [x] Public economics / externalities — insurance externalities, public insurer objective
- [ ] Political economy
- [ ] Behavioral economics

---

## Completeness Assessment

**Elements present in the raw input:** Core claim/puzzle, Economic phenomenon, Proposed mechanism (partially), Agent types, Environment/setting, Empirical motivation (partial), Normative dimension, Open questions

**Elements missing:** Mathematical intuition (not formally stated), Comparable models (only tradition named, no specific papers), Behavioral mechanisms

**Ambiguities that may affect Stage 1:**
1. "集采降低药价" — does VBP lower the market price, the out-of-pocket price, or both? The coinsurance rate may remain fixed while the list price falls, ambiguously affecting patient cost-sharing
2. "医保支出" — insurance expenditure could mean per-patient spending, total program spending, or government fiscal cost
3. "药品可及性" — accessibility could mean geographic access, affordability, or product variety (originator vs. generic)
4. "社会福利" — welfare criterion unspecified: Utilitarian sum? Kaldor-Hicks? Including innovation dynamic effects?
5. The model is requested as "simple" — clarification needed on whether to include one drug or multiple (generic vs. originator differentiation)
