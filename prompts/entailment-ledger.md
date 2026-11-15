# The Entailment Ledger

**Shared check module.** Read this file when a gate or stage instructs you to run the Entailment Ledger, the support checklist, or the satisfiability check. Gates 3, 4, 4b, 6 and Stage 6 all reference it.

---

## Why this check exists

The pipeline verifies **derivations** well. Gate 4 Check 7 and Gate 6 Check M2 re-derive displayed formulas from the model primitives and compare term by term, and they catch wrong formulas.

A verified formula does not make the proposition built on it true. The step from the formula to the quantified claim is a separate inference, and it is where this pipeline has failed in practice. In one past run, all four mathematical defects that external review found had **correct algebra**:

- Gate 4 wrote down the verified expression `π′ = f_η(T)·[e*′m − (e*−b̄)m′]/m²` and then recorded "sign condition confirmed", without noticing that signing `π′` by the bracket requires `f_η(T) > 0`, which no assumption supplied.
- Gate 4 verified `dρ/db̄ = (S_g σ_a² − C·S_a)/(σ_g σ_a³)`, and the proposition built on it claimed that when `S_a ≥ 0` both terms carry the sign of `S_g`. Under the stated hypotheses the two terms carry opposite signs. The contradiction was readable off the formula two lines above the claim.

Verifying the formula and verifying the claim are different activities. This file is the second one.

---

## What the ledger operates on

For each claim, extract three things from the statement **as written**, without paraphrasing:

```
H  — the hypotheses: every condition the statement imposes, plus the global assumptions it cites
Q  — the quantifier structure: for all / there exist / at any point / on a region / globally,
     in the order they appear
C  — the conclusion: the assertion, including its strictness (>, ≥, =, <, ≤) and its scope
```

The ledger asks whether `H ⊨ C` under `Q`. The displayed algebra is an input to that question.

**Do this extraction before consulting the proof.** The proof tells you what the author established; the ledger asks what the statement claims. Reading the proof first replaces the second question with the first.

---

## Part 1 — The nine links

Run every link on every claim. A link that does not apply is `N/A` with one word of reason, never omitted.

### L1 — Necessity

Does the claim assert "only if", "if and only if", "exactly when", or "necessary"?

If yes, the converse direction is a separate claim and needs its own argument. Check whether the argument establishes both directions or only the forward one. A biconditional supported by one direction fails this link.

### L2 — Sufficiency

Does every configuration permitted by `H` reach `C`?

Enumerate the cases `H` admits, including the ones the argument does not visit: degenerate cases, boundary cases, the case where a set is empty, the case where a variable takes its extreme admissible value. For each, state whether `C` holds. A case the argument skips and `H` does not exclude is a `FAIL`.

### L3 — Strictness

**Does `C` assert a strict inequality (`>`, `<`) or a strict property (strictly increasing, strictly positive, unique)?**

If yes, do three things in order:

1. State what the argument actually establishes. Very often it is the weak version: `≥`, non-decreasing, non-negative.
2. **Name the configuration in which equality holds.** Write it down explicitly. "Equality holds when …".
3. Show that `H` excludes that configuration, by naming the assumption that does it.

If step 3 cannot name an assumption, this link is a `FAIL`. "The configuration seems unlikely" is not an exclusion. "The configuration is pathological" is not an exclusion. A named assumption that rules it out is the only thing that counts.

This is the single highest-yield link in the ledger. A strict claim resting on a weak argument is the most common way a correct derivation becomes a false proposition.

### L4 — Sign arithmetic

**For every claimed sign relation, tabulate the terms.**

Take the governing expression, in its verified form. Decompose it into additive terms. For each term, under the hypotheses of the claim, record its sign: `+`, `−`, `0`, or `?`. Then compare the table with what the claim asserts.

| Term | Sign under H | Why |
|---|---|---|

A claim that the sum carries a particular sign, when the table shows terms of opposite sign and no bound relating their magnitudes, is a `FAIL`. A claim that "both terms carry the sign of X" is checkable directly against the table.

Do this mechanically. Do not reason about it in prose. The table is the check.

### L5 — Factor positivity

**For every product, quotient, or composition in the governing expression, list each factor and state what guarantees it is non-zero**, wherever a sign conclusion depends on it.

| Factor | Required | Guaranteed by | Status |
|---|---|---|---|
| `f_η(T(g))` | `> 0` | nothing in `H` | **MISSING** |

The pattern to watch for: a derivative of a composition, `d/dx F(T(x)) = F′(T(x))·T′(x)`, where the sign is read off `T′` alone. That inference needs `F′(T(x)) > 0`. Absolute continuity, bounded density, and smoothness do **not** supply it. Positive density does.

Any factor whose required non-zeroness is `MISSING` while a sign conclusion depends on it is a `FAIL`.

### L6 — Local to global

Compare the scope of `C` with the scope of the argument.

| Argument establishes | Claim asserts | Verdict |
|---|---|---|
| at a point | at a point | OK |
| at a point | on a region, or globally | **FAIL** |
| on a region | globally | **FAIL** |
| at a baseline parameter vector | for all admissible parameters | **FAIL** |
| globally | at a point | OK, and the claim is weaker than what is available |

Watch for the widening that happens in the wording rather than in the mathematics: "at any `g`" against "anywhere on the support", "for the specification considered" against "in general".

### L7 — Quantifier order

Does `C` assert `∃x ∀y` where the argument establishes `∀y ∃x`, or the reverse? Does a uniqueness claim rest on an existence argument? Does an existence claim rest on a construction that depends on a parameter the claim quantifies over?

### L8 — Corner and boundary coverage

Does the argument cover corner solutions, boundary parameter values, degenerate distributions, empty sets, and measure-zero events, or assume interiority without saying so?

For a claim about an optimum: are the corners of the choice set enumerated, and is each one either reached and handled or excluded by `H`? An interior-solution formula asserted over a domain where a corner binds is a `FAIL`.

### L9 — Definition identity

Is each symbol in `C` the same object as in the formula it is read off?

Check particularly after a notation change, after a switch between model variants, and where one letter carries two roles. A claim read off a formula belonging to variant V0, stated about variant V1, fails this link even when both formulas are individually correct.

---

## Part 2 — The support and distribution checklist

Run on every claim whose conclusion depends on a distribution. Answer each item `SATISFIED` with the assumption ID that supplies it, `NOT REQUIRED`, or **`MISSING`**.

| # | Condition | When it is required |
|---|---|---|
| S1 | Density strictly **positive**, not merely bounded or existing | Wherever a sign is read off the derivative of a CDF or of a composition with a CDF |
| S2 | Support **connected** | Wherever strict monotonicity of a CDF composition is used, or where a gap would make a function constant |
| S3 | A threshold lies in the **interior of the support** of the variable whose CDF is evaluated at it | Wherever `F(T)` is differentiated and the result is signed |
| S4 | Support is a **product set** | Wherever a sup or inf over a joint support is replaced by a corner of the marginals |
| S5 | Invoked moments **exist and are finite** | Wherever an expectation, variance, or covariance appears |
| S6 | Invoked variances are **strictly positive**, at the point where that is needed | Wherever a variance is a denominator |
| S7 | Conditional distributions are **well defined**, with the conditioning set of positive measure | Wherever `E[·|A]` or `P(·|A)` appears |
| S8 | **No atoms** where differentiability is used, with the discrete analogue stated or excluded | Wherever a policy function is differentiated through a regime boundary |
| S9 | The distribution is **policy-invariant** | Wherever a comparative static differentiates through the distribution |

`MISSING` on an item the conclusion depends on is a `FAIL`.

**Absolute continuity with a bounded density is not positive density.** This sentence is the whole of S1, and it is the condition one past run was missing twice.

---

## Part 2b — Family-specific regularity conditions

S1–S9 are the regularity family for models whose conclusions are statements about **distributions and moments**. Other model families break in other places, and a checklist calibrated to one family will pass a defective claim in another.

Identify the model's family from `canonical_model_match.md` and `model_primitives.md`, then run the matching row **in addition to** S1–S9. Where a model combines families, run every row that applies. A condition on the row is answered `SATISFIED` with the assumption ID that supplies it, `NOT REQUIRED`, or **`MISSING`**, exactly as in Part 2, and a `MISSING` item a conclusion depends on is a `FAIL`.

| Family | Conditions to check | Links they feed |
|---|---|---|
| **Single-agent constrained optimization** (KKT; Becker, Ben-Porath, credit constraints) | Concavity or quasi-concavity of the objective, so the FOC characterizes the optimum; a constraint qualification; interiority stated wherever an interior formula is used; each constraint's binding condition derived; Inada or boundary conditions where corners are excluded | L5, L8 |
| **Statistical-estimand models** (conclusions about projection coefficients, correlations, variance shares) | S1–S9 at full force; the estimand defined as a functional of the distribution; differentiation through the distribution justified by domination; policy invariance of the distribution | **L4, L5 above all**, then L3 |
| **Static games, Nash equilibrium** | Existence: the conditions of the fixed-point theorem actually verified (strategy set compact and convex; best-response correspondence non-empty, convex-valued, upper hemicontinuous), rather than the theorem merely named; uniqueness: strict concavity, contraction, or an index argument; **equilibrium selection stated** where multiple equilibria exist, and each claim checked for whether it holds under all of them or only the selected one | L2, L7, L8 |
| **Principal–agent, moral hazard** | Validity of the first-order approach, globally and not only locally (convexity of the distribution function condition, or monotone likelihood ratio); global incentive compatibility verified after the local conditions; which of IC and IR binds, with that derived; limited liability or non-negativity constraints on transfers | L2, L8 |
| **Screening, mechanism design** | Single-crossing or increasing differences; monotone hazard rate where virtual values are used; monotonicity of the allocation, with ironing where virtual values are non-monotone; regularity of the envelope condition; the type distribution's support and atoms | L2, L6, L7 |
| **Signaling, dynamic games of incomplete information** | Off-path beliefs specified, not left implicit; the refinement named and its conditions checked; which equilibria survive it; sequential rationality at every information set | L7, L9, L2 |
| **Matching, matching with cutoffs** | The stability notion defined precisely; existence by a named argument (deferred acceptance, lattice, fixed point) with its conditions met; cutoffs clearing the market, with that verified rather than assumed; in a continuum, measurability and the treatment of ties | L2, L8, plus S2, S7 |
| **Search and matching** | Free-entry condition and whether it binds; the surplus split and its bargaining protocol; the Bellman operator a contraction, with boundedness; steady-state existence | L2, L6, L8 |
| **Dynamic programming, OLG, finite or infinite horizon** | Boundedness and discounting, so the Bellman operator contracts; transversality where the horizon is infinite; **steady-state existence AND stability separately** — a stability claim is not an existence claim; uniqueness of the steady state, or the multiplicity characterized; the difference between a limit and a long-run outcome | **L6 above all**, then L2, L8 |
| **General equilibrium** | Market clearing stated for every market; Walras' law used consistently; price normalization stated, with the invariance it relies on verified; existence by a named argument with its conditions met; which variables are endogenous under each experiment | L2, L7, plus S5, S6 |
| **Oligopoly, IO** | Second-order conditions for each firm's problem; existence of best responses; for monotone comparative statics, **the lattice and supermodularity conditions of the theorem being invoked**, rather than the theorem's name; whether the equilibrium is in strategic complements or substitutes, and which the argument needs | L2, L3, L6 |
| **Trade, spatial, heterogeneous firms** | Zero-cutoff-profit and free-entry conditions; the normalization of the price index and its invariance; the support of the productivity distribution; integrability of the relevant moments | L5, L6, plus S5 |

**The failure mode this table exists to prevent.** Naming a theorem is not verifying its conditions. "By Kakutani's fixed-point theorem an equilibrium exists" is a `GAP` until the strategy set is shown compact and convex and the best-response correspondence is shown convex-valued and upper hemicontinuous. "By Topkis the comparative static is monotone" is a `GAP` until supermodularity in the strategy-parameter pair is shown. Stage 7's technique library lists these theorems by name, which makes invoking one easy and makes checking its conditions no easier.

**Where a family is not listed**, derive its regularity family from the same question: which conditions does the argument need in order for the step from the expression to the claim to go through, and which assumption supplies each one. Record the conditions you used, so the next project in that family inherits them.

---

## Part 3 — Satisfiability

For every claim evaluated at a **distinguished point** of the parameter domain, check that `H` is jointly satisfiable at that point.

Distinguished points: a boundary of the admissible range, a limit, a completion point, a corner, a point where a set becomes empty or full, a measure-zero event, a knife-edge equality between parameters.

### Decompose compound assumptions first

An assumption that bundles `k` restrictions is replaced by `k` entries before this check. A bundle hides infeasibility, because clauses that travel together in the interior can part at the boundary.

In the worked case of Example 4, an assumption `A69` bundles four restrictions: `0 < P(C(b̄)) < 1`, `Var(g) > 0`, `Var(w|g) > 0`, and a solvency condition. Proposition 6 invokes A69 at `b̄†`, the completion limit, where `P(C(b̄†)) = 0` **by the definition of `b̄†`**. The first clause is infeasible exactly where the proposition needs the third. Bundled, that is invisible. Decomposed, it is immediate.

### Verdicts

- `SATISFIABLE` — every clause can hold at the stated point. Name any clause that only just holds.
- `INFEASIBLE_AT_STATED_POINT` — some clause cannot hold there. Name the clause and the reason. This is a `FAIL`.
- `UNDETERMINED` — satisfiability could not be settled. Record what blocks it. This is an open obligation.

---

## Part 4 — Output format

Write one block per claim into the gate's output file, and the same values into `verification_record.json` (see `prompts/verification-record.md`).

```markdown
### Entailment Ledger — [P_id]

**H:** [hypotheses, listed]
**Q:** [quantifier structure]
**C:** [conclusion, with its strictness]

| Link | Result | Evidence |
|---|---|---|
| L1 Necessity | OK / GAP / FAIL / N/A | [one line] |
| L2 Sufficiency | ... | ... |
| L3 Strictness | ... | [if the claim is strict: the equality configuration, and the assumption excluding it] |
| L4 Sign arithmetic | ... | [term table, or "N/A — no sign claim"] |
| L5 Factor positivity | ... | [factor table, or "N/A"] |
| L6 Local to global | ... | [argument scope vs claim scope] |
| L7 Quantifier order | ... | ... |
| L8 Corner coverage | ... | ... |
| L9 Definition identity | ... | ... |

**Support checklist:** S1 [status, by A_n] · S2 [...] · ... · S9 [...]
**Model family:** [from canonical_model_match.md] — **family conditions:** [each Part 2b condition for that family, with its status and what supplies it]
**Satisfiability:** SATISFIABLE / INFEASIBLE_AT_STATED_POINT / UNDETERMINED — [at which point, which clause]

**Verdict:** [n] OK, [n] GAP, [n] FAIL, [n] N/A
```

Where a claim makes a sign relation or has a composed governing expression, the L4 term table and the L5 factor table are written out in full. They are the check, and compressing them to a verdict word removes it.

### Result semantics

| Result | Meaning | Consequence |
|---|---|---|
| `OK` | The link holds, with the evidence named | none |
| `N/A` | The link does not apply to this claim | none |
| `GAP` | The link cannot be settled with what is available | An open obligation with a named discharge condition. Blocks `VERIFIED`. |
| `FAIL` | The link is violated | Gate FAIL, trigger FT-1. Where the violation is a claim contradicting a verified expression, class ND-1 applies and the finding is non-downgradable. |

**Every `GAP` and `FAIL` is also a search instruction.** Stage 8's required executable search is aimed at the flags this ledger raises, through the mapping table in `prompts/08-counterexample-finder.md → Required executable search`. An L3 `GAP` means construct the equality configuration; an S2 `MISSING` means insert a gap in the support. Running the ledger first is what makes that search cheap and targeted, so the two are one procedure in two stages.

---

## Part 5 — Worked examples

Four examples, one per defect shape that has actually got past the gates of this pipeline. Each is the ledger applied to the proposition **as stated**, with no access to the proof. Each takes a few minutes.

### Example 1 — a strict sign supported by a weak argument (L3, S1, S2)

**Claim.** "If `w` is independent of `g`, then under Assumptions A1, A2, A5, A69 and A11, `dβ/db̄ > 0` strictly."

**H:** `w ⊥ g`; A1 technology; A2 complementarity `Y_ge > 0`; A5 `H` absolutely continuous with density bounded on compact support, no mass on the regime boundary; A69 `0 < P(C) < 1`, `Var(g) > 0`, `Var(w|g) > 0`, solvency; A11 `H` independent of `b̄`.
**Q:** for all primitives satisfying `H`.
**C:** `dβ/db̄ > 0`, **strict**.

**L3 — FAIL.**

1. What is available: by the paper's own earlier result, `sign(dβ/db̄)` is the sign of `Cov(g, π(g))`. Under independence `π(g) = F_w(e*(g) − b̄)`, and `e*` is strictly increasing, so `π` is **non-decreasing**. A non-decreasing function gives `Cov(g, π) ≥ 0`.
2. Equality configuration: `Cov(g, π) = 0` when `π` is constant on the support of `g`. That happens when `supp(w)` contains a gap spanning `{e*(g) − b̄ : g ∈ supp(g)}`, so that `F_w(e*(g) − b̄)` takes one value throughout.
3. Which assumption excludes it? A5 gives absolute continuity and a **bounded** density. A bounded density may be zero on an interval. Nothing in `H` requires the density to be positive, and nothing requires `supp(w)` to be connected. In the gap configuration `π ≡ c` with `c ∈ (0,1)`, so A69's `0 < P(C) < 1` holds, every listed assumption holds, and `dβ/db̄ = 0`.

**No assumption excludes the equality configuration, so the strict claim fails.**

**Support checklist:** S1 **MISSING**; S2 **MISSING**; S3 **MISSING**.

**Resolution.** Add positive density a.e. on an interval, or connected support, as a numbered and audited assumption. Then L3 passes and `C` holds as stated.

**What to notice.** The derivation is correct. `π` really is non-decreasing. The defect is the word "strictly", and the ledger finds it by asking one question: name the equality configuration.

### Example 2 — a sign claim contradicted by its own formula (L4)

**Claim.** Given the verified expression

```
sign(dρ/db̄) = sign( S_g − (Cov(g,a)/σ_a²)·S_a ),      Cov(g,a) > 0
```

part (b) asserts: "If `S_a ≥ 0`, both terms carry the sign of `S_g` and no such divergence arises."

**L4 — FAIL.** The term table, under `H` = {`S_a ≥ 0`, `Cov(g,a) > 0`}, taking the case `S_g > 0`:

| Term | Sign under H | Why |
|---|---|---|
| `S_g` | `+` | the case under consideration |
| `−(Cov(g,a)/σ_a²)·S_a` | `−` | `Cov > 0`, `σ_a² > 0`, `S_a ≥ 0`, and the leading minus sign |

The two terms carry **opposite** signs. The claim that both carry the sign of `S_g` is contradicted by the expression it is stated against. With no bound relating the magnitudes, the sum's sign is undetermined, and the opposite pairing `dβ/db̄ > 0 > dρ/db̄` is admissible.

**Class ND-1** — a claim contradicted by an expression the gate itself verified. Non-downgradable.

**Resolution.** State the correct condition on the relative magnitudes, or restrict part (b) to the sub-case where the second term vanishes (`S_a = 0`), or withdraw it.

**What to notice.** The whole check is a two-row table. It costs under a minute, and the pipeline passed this claim through three mathematical reviews without building it.

### Example 3 — a biconditional missing a factor condition (L1, L5, S1, S3)

**Claim.** "At any `g` with `e*(g) > b̄`, `π` is strictly decreasing at `g` **if and only if** `ε_w/ε_{e*} > e*(g)/(e*(g) − b̄)`."

**Governing expression**, verified: with `π(g) = F_η(T(g))` and `T = (e* − b̄)/m`,

```
π′(g) = f_η(T(g)) · [ e*′(g)·m(g) − (e*(g) − b̄)·m′(g) ] / m(g)²
```

**L5 — FAIL.** The factor table:

| Factor | Required for the claim | Guaranteed by | Status |
|---|---|---|---|
| `f_η(T(g))` | `> 0` | nothing in `H`; A5 gives bounded density | **MISSING** |
| `m(g)²` | `> 0` | `m(g) = κ₁g^θ > 0` for `κ₁ > 0`, `g > 0` | OK, given `κ₁ > 0` is stated |
| bracket | sign equals the elasticity condition | the verified algebra | OK |

Where `T(g)` falls outside `supp(η)`, `f_η(T(g)) = 0` and `π′(g) = 0` whatever the bracket does. The "only if" direction then fails: `π` is not strictly decreasing even though the elasticity condition holds.

**L1 — FAIL** for the same reason: the converse direction is unestablished.

**Support checklist:** S1 **MISSING**; S3 **MISSING** (`T(g) ∈ int(supp(η))` is required and unstated).

**Resolution.** Add `f_η(T(g)) > 0`, equivalently `T(g) ∈ int(supp(η))`, to the hypotheses of the claim, and audit it. Also state `γ > 0` and `κ₁ > 0`, which the elasticity forms need.

**What to notice.** Restricting the proposition to a particular noise specification does **not** fix this. The specialized form still has `f_η(T)` as a factor. A remedy that addresses the route by which the problem was noticed, rather than the problem, leaves the defect in place.

### Example 4 — an infeasible hypothesis at a distinguished point (satisfiability)

**Claim.** "Suppose Assumption A69 holds at `b̄†`. Then for every `b̄ < b̄†` and every joint distribution `H`, `R²_np(b̄) < 1 = R²_np(b̄†)`."

**Definition in force.** `b̄†` is the infimum of limits at which the constrained set is empty.

**Satisfiability — INFEASIBLE_AT_STATED_POINT.**

Decompose A69 into its four clauses:

| Clause | Satisfiable at `b̄†`? |
|---|---|
| (i) `0 < P(C(b̄)) < 1` | **No.** `P(C(b̄†)) = 0` by the definition of `b̄†`. |
| (ii) `Var(g) > 0` | Yes |
| (iii) `Var(w|g) > 0` for a.e. `g` | Yes, and this is the clause the result actually needs |
| (iv) `Y(g, w+b̄) ≥ R b̄` on the support | Yes |

The claim invokes, at `b̄†`, an assumption whose first clause cannot hold there. The result itself is recoverable: what it needs is (iii) at limits **below** `b̄†`, to guarantee endowment-orthogonal variation that completing the market removes.

**Resolution.** Split A69. Apply the non-degeneracy clause where the constrained set is non-empty, and the variation clause where the result needs it. Then the proposition holds.

**What to notice.** Four restrictions that always travel together under a marginal experiment stop travelling together at the boundary of the policy domain. Decomposition before the check is what makes this visible, and it is why compound assumptions are decomposed first.

---

## Part 6 — Cost discipline

The ledger is meant to be run, which means it has to be cheap.

- **L3, L4, L5 and the satisfiability check are mechanical.** Read the claim for a strictness word; decompose the expression into terms and tabulate signs; list the factors and ask what makes each non-zero; decompose compound assumptions and evaluate at the distinguished point. No creativity is required and none should be applied.
- All four defect shapes in Part 5 are caught by those four checks alone. Examples 1 through 4 above are the proof of that, and each took a few minutes of reading.
- The remaining links are a scan. Most claims return `N/A` or `OK` on most of them, with one line each.
- **Do not inflate.** A link that holds gets one line of evidence. The tables for L4 and L5 are written out; everything else is terse.
- **Do not report a `GAP` where the link plainly holds.** A ledger that flags correct claims will be switched off, and then it protects nothing. Where `H` names the assumption that does the work, the link is `OK` and you say which assumption.
