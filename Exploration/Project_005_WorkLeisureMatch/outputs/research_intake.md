# Research Intake

**Date:** 2026-06-29
**Hypothesis ID:** HYP-005
**Pipeline:** theoretical-economics-claude-skill

---

## Raw Input (verbatim)

> mode: phenomenon_to_model
> 请构建一个简单理论模型，分析中国城市青年工作时间延长和加班文化（"内卷"）如何通过挤压 leisure time，降低恋爱匹配机会、推迟结婚并降低生育意愿。请先做现实背景校验，然后匹配合适的经典经济学模型，给出模型原语、核心命题、比较静态和政策含义。

---

## Structured Extraction

**Core claim or puzzle:**
In urban China, the extension of working hours and the pervasive overtime culture ("involution" / 内卷) crowds out leisure time, which in turn reduces opportunities for romantic matching, delays marriage, and depresses fertility intentions. The puzzle is: can a formal theoretical model capture this chain from labor market competition → time allocation → marriage market search → fertility decisions?

**Economic phenomenon targeted:**
- "Involution" (内卷): a rat-race dynamic in which urban Chinese youth systematically work longer hours as a result of competitive labor market pressures, even though collectively no one benefits (zero-sum effort competition)
- Falling marriage rates and total fertility rates in urban China
- Delay in median age at first marriage among Chinese urban workers

**Proposed mechanism (cause → channel → outcome):**
Competitive labor market pressure (内卷) → agents increase work hours → leisure time endowment shrinks → time available for romantic search/dating falls → probability of meeting a compatible partner per period decreases → probability of marriage per period falls → married couple period starts later → number of fertile years in marriage contracts → fertility intention (number of children desired) declines

**Agent types mentioned:**
- Urban Chinese youth (workers in competitive labor markets)
- Implicitly: potential romantic partners (the other side of the matching market)

**Environment or setting:**
- Urban Chinese labor market with rat-race/competitive effort dynamics (the "involution" phenomenon)
- Marriage/romantic matching market where meetings require leisure time investment
- Household decision over fertility once married

**Mathematical intuition:**
Not formally specified. The researcher requests: model primitives, core propositions, comparative statics, policy implications.

**Empirical or stylized motivation:**
- China's urban youth working hours have increased; "996" work culture (9am–9pm, 6 days a week) is widely cited
- China's total fertility rate has declined sharply; marriage rates in urban areas have fallen
- Researcher requests empirical reality check as a first step before model-building

**Normative dimension (welfare / efficiency / policy):**
Implicit: if the rat-race externality is welfare-reducing and reduces fertility below a socially optimal level, there is a case for policy intervention (work-hour regulation, subsidized childcare, fertility incentives). The researcher asks for policy implications explicitly.

**Comparable models or literature mentioned:**
Not specified. Researcher asks the pipeline to identify the appropriate classic economic model.

**Open questions explicitly stated:**
- What is the correct model family for this mechanism?
- What are the model primitives?
- What are the core propositions (theorems / comparative statics)?
- What are the policy implications?

---

## Research Classification

**Research type (all that apply):**
- [x] Comparative statics — How do equilibrium objects (match rate, marriage timing, fertility) change with hours-pressure parameter?
- [x] Welfare / efficiency — Is the involution equilibrium optimal? What is the social planner's solution?
- [x] Existence result — Does a search equilibrium with endogenous time allocation exist?
- [ ] Uniqueness / multiplicity
- [ ] Mechanism design / implementation
- [ ] Information / asymmetry
- [ ] Dynamic / repeated
- [ ] Behavioral / bounded rationality

**Theory branch(es) (all that apply):**
- [x] Game theory (non-cooperative) — rat-race competition in the labor market
- [x] Industrial organization / market design — marriage market as a search/matching environment
- [x] Public economics / externalities — rat-race externality; fertility externality
- [ ] General equilibrium
- [ ] Contract theory / principal-agent
- [ ] Mechanism design / social choice
- [ ] Information economics
- [ ] Macroeconomic theory
- [ ] Political economy
- [ ] Behavioral economics

---

## Completeness Assessment

**Elements present in the raw input:**
Core claim, economic phenomenon, proposed mechanism, agent types, environment/setting, empirical motivation, normative dimension (policy), open questions

**Elements missing:**
Mathematical intuition (not specified — researcher requests the pipeline provide it), comparable literature (not specified — researcher requests the pipeline identify it)

**Ambiguities that may affect Stage 1:**
1. **Fertility "intention" vs. realized fertility**: The researcher mentions "降低生育意愿" (lower fertility intention/willingness), which could be modeled as desired number of children, expected completed fertility, or probability of having any child. The distinction matters for the formal model.
2. **Mechanism of "involution"**: The researcher frames 内卷 as hours compression of leisure, but the underlying strategic structure (Nash rat-race, tournament, coordination game) is not specified.
3. **Two-sided vs. one-sided search**: Is the model one-sided (a representative agent) or explicitly two-sided (men and women as separate agents in a marriage market)?
4. **Endogenous vs. exogenous work hours**: Are hours chosen by workers (endogenous rat-race) or imposed by employers (exogenous labor demand shock)? The former requires a game-theoretic model; the latter is a comparative statics exercise.
