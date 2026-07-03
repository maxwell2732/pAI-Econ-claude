# Research Puzzle

**Date:** 2026-06-29
**Stage:** 1 — Puzzle Refinement (v2, post-HiL-1 redirect)

**HiL-1 researcher input:**
> 有一个临界点，决定个体是不是内生性选择内卷。主观责任感（越高越会去内卷）、儒家思想（越高越去内卷）、家庭经济压力（压力大的会去内卷）。所以应该是内生的。

The model must incorporate: (i) heterogeneous worker types θ indexing
the composite of responsibility norms, Confucian cultural values, and family
economic pressure; (ii) endogenous binary (or continuous) involution choice;
(iii) a threshold equilibrium θ* below which workers opt out and above which
workers participate in involution.

---

## Central Research Question

In a labor market where workers are heterogeneous in their propensity to
involute (indexed by type θ capturing responsibility norms, Confucian values,
and family economic pressure), what is the equilibrium threshold θ* that
partitions workers into "involuters" and "opt-outs," how does this threshold
determine the aggregate marriage rate and completed fertility, and is the
threshold socially optimal — or does the presence of a search externality
in the marriage market push too many workers above the threshold?

---

## Central Tension

**Tension:** For each worker, the decision to involute (choose long hours h_H
over short hours h_L) is privately optimal for all types θ > θ* — the labor
market return is worth the leisure sacrifice — yet the aggregate consequence
of more workers crossing the threshold is a thinner marriage market, later
marriages, and lower fertility for everyone. Types near the threshold are the
marginal workers: their private incentive to involute is approximately zero,
but their involution imposes a discrete externality on the search pool.

**Why neither side obviously wins:**
(a) Higher-type workers (high θ) have strong internal motivations — duty,
family pressure, cultural norms — that make involution optimal independent
of the labor market return. Taxing their hours may be both inefficient and
politically infeasible. (b) The threshold equilibrium is potentially
self-fulfilling: if most people involute, the labor market norm shifts, the
wage penalty for not involuting rises, and θ* falls — a strategic
complementarity that can generate multiple equilibria or a "spiral" into
universal involution even as aggregate welfare falls.

---

## Core Mechanism

**Causal chain:**
Worker heterogeneity in θ (responsibility/Confucian norms/family pressure)
→ threshold equilibrium θ*(γ) determined by indifference condition
→ fraction Φ = 1 − F(θ*) of workers choose h_H (involute)
→ each involuter's leisure ℓ_H < ℓ_L → meeting rate μ(ℓ_H) < μ(ℓ_L)
→ average search intensity in the economy falls
→ aggregate marriage rate M(Φ, ℓ_H, ℓ_L) decreasing in Φ
→ expected age at first marriage rises; fertile years in marriage fall
→ completed fertility n*(Φ) decreasing in Φ

**Expanded description:**
Workers are endowed with type θ ~ F(·) on [0, ∞). Type θ captures a composite
of internal motivations (responsibility norms, Confucian duty) and external
pressures (family economic necessity) that raise the private return to long
hours. Given a labor market with rat-race pressure index γ, workers solve a
binary choice: h ∈ {h_L, h_H} with h_H > h_L. The equilibrium threshold θ*
is determined by V(h_H; θ*, γ) = V(h_L; θ*, γ), where V includes both the
labor market payoff and the marriage market / fertility payoff. Workers with
θ > θ* involute; workers with θ ≤ θ* do not. The social planner chooses
θ^{SP} > θ* (fewer involuters) because the planner internalizes the negative
search externality each involuter imposes on the marriage market pool.

---

## What a Complete Answer Requires

1. **Threshold equilibrium existence and characterization**: Under regularity
   conditions on F(θ) and the meeting function μ(ℓ), a unique threshold
   equilibrium θ* exists and is determined by the indifference condition.

2. **Comparative statics on θ***: The equilibrium threshold is decreasing in
   the rat-race pressure index γ (higher competition → more workers involute),
   decreasing in family economic pressure (a shift of the type distribution
   rightward), and decreasing in the Confucian norm intensity (a parameter
   that raises the private return to involution for all types).

3. **Fertility and marriage rate comparative statics**: Completed fertility n*
   and the aggregate marriage rate M* are both decreasing in γ and increasing
   in θ* (i.e., fewer involuters → higher fertility). The fertility gap
   Δn = n^{SP} − n* > 0 is increasing in γ.

4. **Welfare comparison and optimal policy**: The Nash threshold θ* < θ^{SP}
   (too many involuters in equilibrium). An optimal corrective policy
   (overtime tax, leisure subsidy, or cultural/norm intervention targeting
   the threshold) can implement θ^{SP}. The optimal tax rate is the marginal
   search externality of a marginal worker crossing the threshold.

---

## Welfare Dimension

**Is there a conflict between private incentives and social optimality?**
Yes, at two levels. First, each worker ignores the search externality they
impose on others when they involute: their reduced leisure thins the marriage
market for all other participants. Second, there is a potential strategic
complementarity: if the wage premium to involution is itself increasing in
the share of involuters (because the norm shifts), the equilibrium threshold
can be too low in a stronger sense — not just a marginal externality but a
coordination failure driving the economy toward universal involution.

**The normative question:**
The welfare comparison is between the Nash threshold equilibrium θ* and the
social planner's threshold θ^{SP}. Since θ* < θ^{SP}, there are too many
involuters in equilibrium. The fertility gap Δn = n^{SP} − n* > 0 is the
key welfare-loss measure.

---

## Primary Economic Phenomenon

This paper illuminates how cultural and economic heterogeneity interacts with
labor market externalities to produce a demographic outcome (fertility decline)
that neither the standard income-opportunity-cost mechanism nor the
intrahousehold bargaining literature can explain. The threshold structure
reveals that *who* involutes matters as much as *how many* involute: high-θ
workers (high duty norms, high family pressure) are hardest to pull back from
involution, making uniform hour-reduction mandates blunt instruments. The
model predicts that cultural interventions — reducing the Confucian-norm
component of θ — may be as or more effective than wage taxes in shifting the
threshold. This connects the demographic economics literature to the cultural
economics literature (Giuliano 2007; Fernández 2007) and to the sociology of
"involution" in Chinese labor markets.

---

## Main Difficulty

The threshold equilibrium requires care in two dimensions: (a) the V(h_H; θ)
and V(h_L; θ) functions must incorporate both the labor market return (a
function of γ and the share of involuters Φ) and the marriage market /
fertility outcome (a function of ℓ = T − h and the aggregate meeting
technology), making V a fixed-point object that requires conditions for
a unique crossing; (b) if V(h_H; θ) − V(h_L; θ) is not monotone in θ, the
threshold may not exist or may be non-unique. The discipline is to impose
sufficient conditions (single-crossing property of V in θ) and to keep the
meeting function simple (Poisson / linear) to preserve analytical tractability.

---

## Triviality Check

Not trivial. Three non-obvious results require the model:
(i) whether the equilibrium threshold is unique or multiple equilibria arise
    (strategic complementarity can generate multiplicity);
(ii) whether the income effect of involution (higher earnings → more attractive
     in the marriage market) offsets the leisure effect (less time to search),
     so the sign of the effect on fertility is not obvious without the model;
(iii) what the optimal corrective policy targets — the threshold θ*, the
     rat-race pressure γ, or the type distribution F(θ) — each has different
     policy instruments.

---

## Refined Hypothesis

**Working hypothesis:**
In equilibrium, the involution threshold θ* is strictly lower than the
social planner's threshold θ^{SP}: too many workers involute, the aggregate
marriage rate is below the social optimum, and completed fertility is
depressed below the first-best. The welfare gap is increasing in the
rat-race pressure parameter γ. A corrective policy that raises the effective
threshold (overtime tax or norm intervention) implements the social optimum.

---

## Scope Boundaries

**What this paper IS about:**
- Endogenous involution threshold driven by heterogeneous types θ (responsibility
  norms, Confucian values, family economic pressure)
- Threshold equilibrium in the labor × marriage market joint system
- Welfare comparison: Nash threshold vs. social planner threshold
- Comparative statics: how γ, the type distribution F(θ), and cultural norm
  intensity shift θ*, the marriage rate, and completed fertility
- Policy implications: overtime tax, cultural norm shifts, their relative
  effectiveness

**What this paper is NOT about (to prevent scope creep):**
- Continuous effort choice (h ∈ ℝ+) — the binary involution model is the
  core; a continuous extension is possible in an appendix
- Gender asymmetries or intra-household bargaining — held for future work
- Empirical estimation — purely theoretical
- Quality-quantity trade-off or child human capital investment
- Macro GE effects of fertility decline on capital accumulation
