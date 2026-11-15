# Gate 4R: Revision Re-gate

## Purpose
Re-check every claim whose text changed after Gate 4. A claim rewritten at Stage 8 or at HiL-6 carries no verification forward from the text it replaced, and before this gate existed nothing between that rewrite and `manuscript.tex` looked at it again. Gate 6 was the first reader of the new wording, at the end of the pipeline, with the manuscript already written.

Two of the mathematical defects that reached print in a past run entered at exactly that point. One of them was a sign claim stated against a formula the pipeline had already verified correctly; a two-row term table on the revised text would have caught it.

## Runs After
HiL-6 (Counterexample Resolution), before Stage 9 (Economic Interpretation).

In `empirical-companion` mode this position is unchanged.

## Inputs
- `verification_record.json`
- `outputs/candidate_propositions.md` (the current text of every claim)
- `outputs/counterexamples_and_edge_cases.md`
- `outputs/proof_sketches.md`
- `outputs/assumption_audit.md`
- `outputs/model_primitives.md`
- `prompts/entailment-ledger.md` (read in full before Check R4)
- `prompts/verification-record.md`

## Scope

This gate runs on **revised claims only**. Build the scope list mechanically, before any checking:

1. Every claim whose `claim_text_sha256` differs from the value recorded at its last `gate_decision`.
2. Every claim created after Gate 4 by a `WEAKEN` / `MODIFY ASSUMPTION` / `SPLIT INTO REGIMES` / `ACCEPT AS BOUNDARY` / relabel resolution at HiL-6 or at HiL-N3.
3. Every claim whose `depends_on` names a claim in (1) or (2).

A split proposition's regimes are **separate claims**, each with its own ID and its own entry, and each is checked separately. A claim restated in parts is one claim per part.

**If the scope list is empty**, write the verdict file with `NOT RUN — no revised claims` and proceed to Stage 9. This gate then costs nothing, which is the intended behavior on a clean run.

Claims outside the scope list are not re-checked here. Their Gate 4 decision stands.

## Before evaluating: the obligation preamble

Read every OPEN entry in `verification_record.json → unresolved_issues` for the claims in scope. For each, record in this gate's output:

| Obligation | Raised by | Discharge condition | Status | Evidence |
|---|---|---|---|---|
| OBL-… | gate_4 | … | DISCHARGED / STILL OPEN | path, or "none" |

A revision that was made in response to an obligation does not discharge it. Discharge requires evidence that the new text closes the defect the obligation was raised against. Where a claim was weakened to avoid a counterexample, the obligation is discharged only if the weakened statement excludes the instance; check the instance against the new hypotheses and record the check.

## What this gate is NOT

It does not re-run Gate 4 in full. Checks 2, 4, 5 and 6 concern the proof sketch's internal structure, which the revision did not touch unless the sketch was rewritten with it. It does not re-open claims whose text is unchanged. It does not approve the researcher's HiL-6 choice; the resolution is the researcher's and this gate checks what the resolution produced.

## Evaluation Criteria

For EACH claim in the scope list:

### Check R1 — The revision is recorded as a revision

- The claim has a current `claim_text`, a recomputed `claim_text_sha256`, and `proof_status: "NOT VERIFIED"`.
- A split or a weakening produced a **new claim ID**; the superseded claim keeps its own status and is marked as no longer in use.
- The resolution that produced the text is named, with the checkpoint it came from.

**PASS:** all three hold. **FAIL:** a revised claim still carries a status above `NOT VERIFIED` (trigger FT-12), or a revision overwrote an ID whose old text had reached a gate decision.

This check is mechanical and it is the one that makes the rest of the gate possible.

### Check R2 — Honest annotation of the revised argument (Gate 4 Check 1, on changed text)

Does a proof sketch exist for the new statement, with every step annotated (SOLID, PLAUSIBLE, GAP, FALSE_RISK, CITE)?

A weakened claim often inherits the old sketch unchanged. That is acceptable when the old argument establishes the new, weaker statement, and it must be stated: record which steps of the old sketch carry the new claim and which are now unused.

**PASS:** a sketch covers the new statement and every step is annotated.
**WARNING:** the sketch covers the new statement with one unannotated step.
**FAIL:** a CORE claim's new statement has no argument behind it, or the inherited sketch establishes something other than what the new text says.

### Check R3 — Assumption usage on the revised statement (Gate 4 Check 3, on changed text)

Recompute, for the new text: `declared`, `used`, `required_for_strength`, and `undeclared_but_used = used \ declared`.

A narrowing resolution adds hypotheses. Each added hypothesis must be present in `assumption_audit.md` with an economic justification, and the justification may not be the sign or the result it rescues.

**PASS:** `undeclared_but_used` empty; every added hypothesis audited.
**WARNING:** an added hypothesis is audited and its justification is thin.
**FAIL:** `undeclared_but_used` non-empty on a CORE claim (FT-5); or an added hypothesis appears nowhere in `assumption_audit.md`; or its only justification is the conclusion it produces.

The last clause is assumption laundering. A claim narrowed until it is true, with the narrowing unaudited, reads as a theorem and is a parameter choice.

### Check R4 — Entailment on the revised statement (Gate 4 Check 8, on changed text)

Run the full ledger from `prompts/entailment-ledger.md` on the new text: the nine links L1–L9, the support checklist S1–S9, and the satisfiability procedure. Write the per-claim block into this gate's output and the same values into `verification_record.json`.

Run it on the new text alone. Reading the old block first anchors the check to the claim the revision replaced, and the links most likely to have moved are exactly the ones a revision touches:

| What the revision did | Links that must be re-run with attention |
|---|---|
| Weakened a strict claim | L3 (is the weak version now what is claimed?), L1 |
| Added a hypothesis | satisfiability (is the enlarged hypothesis set still feasible at every point where the claim is evaluated?), S1–S9 |
| Split into regimes | L4 and L5 **per regime**; L8 corner coverage across the regimes; whether the regimes exhaust the domain |
| Restricted the domain | satisfiability at the new boundary; L6 local-to-global; L8 |
| Restated in parts | L7 quantifier order; whether each part's hypotheses are the ones its own argument uses |
| Relabelled as a conjecture | nothing in the ledger; check instead that no `VERIFIED` or `CONDITIONALLY VALID` claim depends on it (FT-10) |

The L4 term table and the L5 factor table are written out in full where they apply. A verdict word in their place removes the check.

- **PASS:** every link `OK` or `N/A`; no `MISSING` support item on which a conclusion depends; `satisfiability = SATISFIABLE`
- **WARNING:** a `GAP` on a link for a SUPPORTING or EXTENSION claim
- **FAIL:** any link `FAIL` (FT-1); a `MISSING` support item a conclusion depends on (FT-6); `satisfiability = INFEASIBLE_AT_STATED_POINT` (FT-4); a `GAP` on a CORE claim's L3 or L4

Where a link `FAIL` is a claim contradicted by an expression this gate or Gate 4 verified, class **ND-1** applies and the finding is non-downgradable.

### Check R5 — Re-derivation of changed algebra (Gate 4 Check 7, on changed text)

Where the revision changed a displayed expression, a sign, a weight, a threshold, or a regime boundary, re-derive it from `model_primitives.md`. Write the working to `verification/derivations/<claim_id>.md` and record the path.

Where the revision changed only the statement's words and no expression moved, record `NO ALGEBRA CHANGED` with the comparison that establishes it.

**PASS:** every changed expression re-derived and matching, or nothing changed.
**FAIL:** a re-derivation contradicts the revised text (FT-2, class ND-1).

### Check R6 — The counterexample is actually excluded

For every claim revised in response to a counterexample, take the instance from `counterexamples_and_edge_cases.md` or from `counterexample_tests[].instance` and evaluate the **new** hypotheses at it.

| Outcome | Verdict |
|---|---|
| At least one new hypothesis fails at the instance | **PASS.** The revision excludes it. Record which hypothesis and why. |
| Every new hypothesis holds at the instance and the new conclusion holds there | **PASS.** The weakening covers it. Record the evaluation. |
| Every new hypothesis holds at the instance and the new conclusion fails there | **FAIL** (FT-3, class ND-2). The revision did not close the hole. |

This check is cheap and it is the reason the gate exists. A narrowing that reads as if it excludes an instance, and does not, is the shape that ships.

### Check R7 — Search status on CORE claims

A CORE claim created or rewritten after Stage 8 has no counterexample search behind it, because the search ran against the text it replaced.

- **PASS:** `counterexample_tests` holds an entry against the new text, with `COUNTEREXAMPLE FOUND`, `NO COUNTEREXAMPLE FOUND`, or `SEARCH NOT PERFORMED` with a reason.
- **WARNING:** the entry is `SEARCH NOT PERFORMED` on a SUPPORTING or EXTENSION claim.
- **FAIL:** no entry at all against the new text.

A CORE claim whose entry against the new text is `SEARCH NOT PERFORMED` **may not reach `VERIFIED`**. It may reach `CONDITIONALLY VALID` or stay `NOT VERIFIED`. Running the search is one targeted construction per `prompts/08-counterexample-finder.md → Required executable search`, directed by whatever Check R4 flagged, and it is the cheaper option in most cases.

## Verdict Rules

**⚠️ Precedence.** The FAIL triggers in `SKILL.md → Objective FAIL triggers` take precedence over the arithmetic below. No verdict above FAIL may be issued while any trigger is live.

**PASS:**
- No FAIL trigger live
- R1 PASS for every claim in scope
- R4, R5, R6 with no FAIL
- R2, R3, R7 with no FAIL
- No more than 2 WARNINGs total
- No OPEN obligation that blocks the manuscript

**FAIL:**
- Any FAIL trigger live
- Any FAIL on R1, R2, R3, R4, R5, R6 or R7
- 3 or more WARNINGs on CORE claims

There is no CONDITIONAL PASS at this gate. The scope is a handful of claims whose text is new, every check on them is cheap, and a conditional verdict here would carry an unresolved condition into the manuscript with no later gate holding the claim text to account other than Gate 6, which is the reader this gate exists to stop relying on.

**On FAIL:** the standard gate-failure protocol in `SKILL.md → Quality Gate Logic` applies. Recommended loopback: **Stage 8** when the resolution itself was wrong (R6 FAIL, or an R4 FAIL introduced by the revision), **Stage 6** when the claim needs restating from the model (R2, R3, R5 FAIL). On a second FAIL on the same claim, `PROCEED WITH CAVEAT` remains unavailable for a non-downgradable class except in the variant that discloses the finding in the manuscript at that result.

**Every WARNING raised here becomes an OPEN obligation** in `verification_record.json → unresolved_issues`, with a `discharge_condition` and `blocks_manuscript` set.

## Claim status assignment

This gate sets `proof_status` for every claim in scope, per `prompts/verification-record.md`. The minimum evidence for `VERIFIED` is unchanged and includes `counterexample_tests` performed against the current text.

A claim revised at HiL-6 will often end this gate at `CONDITIONALLY VALID` with its new conditions named, or at `NOT VERIFIED` pending a search. Both are correct outcomes. Do not raise a status to unblock Stage 9: Stage 9 interprets claims and the Completion hard stop reads the record, so a status written without its evidence surfaces there as a claim the manuscript may not state.

## Output Format

Write the gate result to `gates/gate-04r-revision-regate.md`:

```markdown
# Gate 4R: Revision Re-gate — Verdict

**Verdict:** PASS / FAIL / NOT RUN — no revised claims

**Scope list:** [n] claims
| Claim | Why in scope | Superseded ID | Resolution | Checkpoint |
|-------|--------------|---------------|------------|------------|
| P_C5a | split into regimes at HiL-6 | P_C5 | SPLIT INTO REGIMES | HiL-6 |

**Obligations carried into this gate:**
| Obligation | Raised by | Discharge condition | Status | Evidence |
|------------|-----------|---------------------|--------|----------|

**Per-claim check summary:**
| Claim | R1 | R2 | R3 | R4 | R5 | R6 | R7 | Status after |
|-------|----|----|----|----|----|----|----|--------------|
| P_C5a | ✓ | ✓ | ✓ | ✓/⚠️/✗ | ✓ | ✓ | ⚠️ | NOT VERIFIED |

**FAIL conditions hit:** [by trigger ID, or "none" — filled whether or not a downgrade followed]
**Downgrades proposed:** [from → to, rationale, class, researcher_approved, or "none"]

**Entailment Ledger blocks (R4):** one per claim in scope, in the format of
`prompts/entailment-ledger.md` Part 4, with the L4 and L5 tables written out where they apply.

**Counterexample exclusion checks (R6):**
| Claim | Instance | New hypothesis that fails at it | Verdict |
|-------|----------|--------------------------------|---------|

**Critical issues (FAILs):**
[the claim, the check, and what the revised text says that the argument does not establish]

**Warnings to address:**
[each with the obligation ID it became]

**Recommended action:**
[If PASS: "Proceed to Stage 9."]
[If FAIL: "Return to Stage 8 (resolution was wrong) or Stage 6 (claim needs restating). Specific issue: …"]
[If NOT RUN: "No claim text changed after Gate 4. Proceed to Stage 9."]
```

---

## Empirical-Companion Mode Addendum

**Applies only when `state.json → mode == "empirical-companion"`.** In `theory-development` mode, ignore this section entirely. See `prompts/mode-empirical-companion.md` for the full mode contract.

Additional inputs: `outputs/empirical_scope.md`, `outputs/empirical_theory_map.md`, `outputs/scope_notes.md`.

Three additions, all in the direction the mode already runs:

**R3-EC.** Any hypothesis added by the revision after the scope lock is checked against the `ADDED-FOR-TARGET` rule. If the hypothesis makes a target hypothesis derivable and carries no justification independent of that target, R3 is a FAIL. A revision is the easiest place in the pipeline for an assumption to enter without the Stage 5 tag, which is why the check is repeated here.

**R4-EC.** For a claim whose domain the revision restricted, check that the restricted domain still contains the declared empirical domain from `empirical_scope.md`. A claim narrowed until it no longer covers the sample stops supporting the hypothesis it was mapped to. Record the comparison with both domains written out numerically where the brief states numbers.

**R6-EC.** Where the counterexample came from inside the declared empirical domain, the exclusion check in R6 is run with the domain restated. A revision that excludes the instance by stepping outside the sample is a FAIL, and the loopback is Stage 6.

**Map maintenance.** Every revised claim's row in `empirical_theory_map.md` is updated with the new claim ID and the new statement, and a split claim gets one row per regime. A stale map row is an R1 FAIL, because the map is what Gate EC audited and what Stage 10 generates the Predictions subsection from.

**Additional output section:**

```markdown
## EC-mode checks

| Claim | Added hypothesis | ADDED-FOR-TARGET? | Independent justification | Verdict |
|-------|------------------|-------------------|---------------------------|---------|

| Claim | Restricted domain | Declared empirical domain | Sample still inside? |
|-------|-------------------|---------------------------|----------------------|

**Map rows updated:** [list, or "none required"]
```
