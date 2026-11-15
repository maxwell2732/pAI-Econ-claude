# Gate 6: Mathematical Review Gate

## Purpose
Catch low-level mathematical errors before the manuscript is compiled: mislabeled statements (the canonical case: an equilibrium condition or first-order condition presented as a Proposition), algebra slips in displayed derivations, notation inconsistencies, proofs that fail to match the statements they claim to prove, and domain violations. This gate re-derives the mathematics independently and corrects objective errors on the spot. It does not judge economic significance (Gate 5's job) or proof completeness (Gate 4's job).

## Runs After
Stage 10, immediately after `outputs/manuscript.tex` is written and BEFORE the first pdflatex compilation. No PDF may be produced from a manuscript that has not passed this gate.

## Inputs
- `outputs/manuscript.tex` (primary object under review)
- `outputs/manuscript_skeleton.md`
- `outputs/candidate_propositions.md`
- `outputs/proof_sketches.md`
- `outputs/model_primitives.md`
- `outputs/assumption_audit.md`
- `verification_record.json`
- `prompts/entailment-ledger.md` (read in full before Check M6)
- `prompts/verification-record.md` (status semantics and schema)

## Before evaluating: the obligation preamble
Read every OPEN entry in `verification_record.json → unresolved_issues` and record each as `DISCHARGED` with an evidence path or `STILL OPEN`. This gate may not pass with an obligation silently carried forward, and an OPEN obligation with `blocks_manuscript: true` is resolved before compilation or disclosed in the manuscript at the affected result.

## Review Protocol
Work through the manuscript top to bottom. Run the six checks below on every displayed equation and every theorem-like environment (`definition`, `assumption`, `lemma`, `proposition`, `corollary`, `remark`).

For Check M2, derive first and compare second: write out your own derivation from the model primitives BEFORE re-reading the manuscript's version, then compare term by term. Reading the manuscript's algebra first anchors you to its errors.

### Check M1 — Statement Classification
Classify what each theorem-like environment actually contains, then compare with its label.

| Content | Correct home |
|---|---|
| Introduces an object or concept; makes no truth claim | `definition` environment or running text |
| Equilibrium condition, first-order condition, budget or accounting identity, market-clearing condition | Displayed equation in the Model section, or part of the `definition` of equilibrium. NEVER a proposition. |
| Restriction on primitives imposed by the modeler | `assumption` |
| Intermediate technical result used by a later proof | `lemma` |
| Substantive falsifiable claim requiring proof: existence, uniqueness, non-obvious characterization, comparative statics, welfare ranking, threshold or regime result | `proposition` |
| Immediate consequence of a specific proposition | `corollary` (must cite its parent result) |
| Commentary, interpretation, scope note | `remark` or running text |

- **PASS:** the label matches the content
- **FAIL:** mislabeled. The canonical failure: a FOC or an equilibrium-definition equation wrapped in a `proposition` environment. Also: a corollary with no parent result, a lemma that is actually the paper's headline claim, a "proposition" that is true by definition.

### Check M2 — Independent Re-derivation
For every displayed derivation chain (FOCs from the stated objective, closed-form solutions, comparative-statics signs, welfare expressions, threshold formulas):
1. Re-derive the result from `model_primitives.md` and the stated assumptions, without consulting the manuscript's intermediate steps.
2. Compare your result with the manuscript's, term by term: signs, coefficients, exponents, subscripts, function arguments, limits of integration and summation.

- **PASS:** re-derivation matches exactly, or differs only by an explicitly stated normalization
- **DISCREPANCY (LOW):** an algebra slip with a mechanical fix that leaves the direction and content of every claim unchanged (a dropped coefficient, a transcription error between two displays)
- **DISCREPANCY (SUBSTANTIVE):** the re-derivation contradicts the manuscript on the sign or direction of a result, or a claimed closed form is wrong

### Check M3 — Notation Consistency
- Every symbol is defined before first use
- No symbol denotes two different objects
- Notation is identical between the Model section and the Results section (same subscripts and superscripts, same function arguments)
- Every numbered equation or result referenced in a proof exists and says what the reference claims it says

### Check M4 — Statement–Proof Match
For every lemma, proposition, and corollary that carries a proof or proof sketch:
- The proof's conclusion is exactly the statement's claim; proving a weaker, stronger, or different claim fails this check
- Every assumption invoked in the proof appears in the statement's hypotheses or in the global assumptions
- Quantifiers match: a "for all parameters" claim proved only at a baseline case fails; a uniqueness claim proved as mere existence fails
- **Strictness matches.** A statement asserting a strict inequality (`>`, `<`) or a strict property (strictly increasing, strictly positive, unique) whose argument establishes only the weak version fails this check. Name the configuration in which equality holds, and name the assumption that excludes it. If no assumption excludes it, this is a SUBSTANTIVE failure (trigger FT-11). "The configuration is pathological" is not an exclusion.

### Check M5 — Domain and Boundary Sanity
- No division by an expression that can be zero on the stated parameter domain
- No logarithm or root of an expression that can be non-positive
- Probabilities and shares stay in [0,1]; Lagrange multipliers carry the right sign
- Interior-solution formulas are asserted only where an interiority condition is stated or corner solutions are ruled out
- Stated limits (e.g., a parameter to 0 or to infinity) are consistent with the formulas they are taken from
- **Hypothesis satisfiability.** For every statement that invokes an assumption at a distinguished point of the parameter domain — a boundary, a limit, a completion point, a corner, a point where a set becomes empty or full, a knife-edge equality — verify that the assumption's clauses are **jointly satisfiable at that point**. Decompose compound assumptions into their individual restrictions before checking: clauses that travel together in the interior can part at the boundary, and a bundle hides that. An assumption invoked where one of its clauses cannot hold is SUBSTANTIVE (trigger FT-4, class ND-5). See `prompts/entailment-ledger.md` Part 3 and its Example 4.

### Check M6 — Entailment, as printed

Read `prompts/entailment-ledger.md` and run the ledger on every claim **as its statement appears in `manuscript.tex`**, rather than as it appears in `candidate_propositions.md`.

Gate 4's Check 8 ran the ledger on the claim as written at Stage 6. This check exists because the manuscript's wording can differ, and because a claim rewritten at Stage 8 or HiL-6 first appears in print here with no proof review behind it. Two of the defect classes this pipeline has shipped entered at exactly that point.

Run the nine links, the support checklist, and the satisfiability procedure. Write the L4 term table and the L5 factor table out in full where they apply.

- **PASS:** every link `OK` or `N/A`; no `MISSING` support item on which a conclusion depends; `satisfiability = SATISFIABLE`
- **DISCREPANCY (LOW):** a link `GAP` on a SUPPORTING or EXTENSION claim, closeable by stating a condition already present in the global assumptions
- **DISCREPANCY (SUBSTANTIVE):** any link `FAIL`; a `MISSING` support item a conclusion depends on; `INFEASIBLE_AT_STATED_POINT`; a `GAP` on a CORE claim's L3 or L4

Also verify the three claim-status rules from `SKILL.md → Claim status inclusion rule`: a claim at `NOT VERIFIED` appears only as a labelled conjecture outside theorem-like environments, a claim at `INVALID` does not appear, and no `VERIFIED` or `CONDITIONALLY VALID` claim depends on a conjecture (trigger FT-10).

**Counterexample search status.** Read `counterexample_tests` for every CORE claim in the manuscript. A CORE claim whose entry against the **current** text is `SEARCH NOT PERFORMED`, or which has no entry against the current text, may not hold or reach `VERIFIED`. It may hold `CONDITIONALLY VALID` with its conditions printed in the statement, or `NOT VERIFIED` and appear only as a labelled conjecture. A claim carrying `VERIFIED` on the strength of a search that ran against text the revision replaced is a DISCREPANCY (SUBSTANTIVE) under this check, and the record is corrected to `NOT VERIFIED` rather than the claim being re-blessed here. Gate 4R is where a revised claim's search status is meant to be settled; this check is the backstop for a claim that reached print without passing through it.

## Correction Protocol (differs from other gates)
Low-level mathematical errors are objective; fixing them requires no researcher judgment, so this gate corrects them directly instead of pausing the pipeline.

1. **TYPO-LEVEL** (LaTeX slips, symbol typos with unambiguous intent): fix directly in `manuscript.tex`; log in the error table.
2. **LOW** (mislabels caught by M1, DISCREPANCY (LOW) on M2, notation conflicts on M3): fix in `manuscript.tex` AND back-propagate the same fix to the source files (`manuscript_skeleton.md`, `candidate_propositions.md`, `proof_sketches.md`) so the workspace stays consistent. Log in the error table. After fixing, re-run Check M2 on every corrected passage.
3. **SUBSTANTIVE** (DISCREPANCY (SUBSTANTIVE) on M2 or M6; an M4 failure where the proof fails to establish the claim, strictness included; an M5 violation that undermines a result; an M5 satisfiability failure): do NOT silently fix. This is a gate FAIL. Present it through the standard gate-failure protocol and wait for the researcher. Recommended loopback: Stage 6 if the proposition is wrong as stated, Stage 7 if the proof is wrong.

Reclassifying a statement under M1 counts as LOW only when the content is untouched. If removing a mislabeled "proposition" leaves the paper without enough genuine CORE results, that is SUBSTANTIVE: flag it and recommend loopback to Stage 6.

### Limits on the self-correction authority

The authority above covers notation, labels, LaTeX, and algebra slips that change no claim's direction. It does **not** extend to:

- any change to a claim's hypotheses, quantifiers, or strictness;
- any reclassification of a statement that reduces the count of genuine CORE results;
- any edit that would resolve an M6 ledger `FAIL` or `GAP`, or an M5 satisfiability failure.

Each of those is SUBSTANTIVE by definition and goes to the researcher. This gate is the last reviewer in the pipeline and it may edit `manuscript.tex` and back-propagate into `candidate_propositions.md` and `proof_sketches.md`. Without this limit it could rewrite the claims it is reviewing, which would make its own PASS unfalsifiable.

Adding a missing condition to a proposition is a change to its hypotheses. It is the correct fix and it is not this gate's to make alone.

## Verdict Rules

**⚠️ Precedence.** The FAIL triggers in `SKILL.md → Objective FAIL triggers` take precedence. No verdict above FAIL may be issued while a trigger is live.

- **PASS:** no errors found; no FAIL trigger live; no OPEN obligation that blocks the manuscript
- **PASS WITH CORRECTIONS:** only TYPO-LEVEL and LOW errors found; all fixed, back-propagated, and re-verified; no FAIL trigger live
- **FAIL:** at least one SUBSTANTIVE error, or any live FAIL trigger. Standard gate-failure protocol applies; pdflatex must NOT run until the failure is resolved or the researcher proceeds with caveat (the caveat must then be disclosed in the manuscript itself, e.g. as a footnote on the affected result).

A finding in a non-downgradable class (`SKILL.md → Non-downgradable findings`) may not be reclassified to LOW. Where you judge that a live trigger should not fail the gate and the class is downgradable, record it per `SKILL.md → Recording a downgrade` and present it for approval.

## Output Format
Write the gate result to `gates/gate-06-math-review.md`:

```markdown
# Gate 6: Mathematical Review Gate — Verdict

**Verdict:** PASS / PASS WITH CORRECTIONS / FAIL

**Coverage:** [N theorem-like environments checked; M displayed derivations independently re-derived; K claims run through the M6 ledger]

**Obligations carried into this gate:**
| Obligation | Raised by | Discharge condition | Status | Evidence |
|------------|-----------|---------------------|--------|----------|

**Claim status as printed:**
| Statement in manuscript.tex | Claim ID | Status | Environment | Permitted? |
|-----------------------------|----------|--------|-------------|------------|

**FAIL conditions hit:** [by trigger ID, or "none"]
**Downgrades proposed:** [from → to, rationale, class, researcher_approved, or "none"]

**Error table:**
| # | Location (environment / equation) | Check | Severity | Description | Action taken |
|---|-----------------------------------|-------|----------|-------------|--------------|
| 1 | Proposition 2 | M1 | LOW | Market-clearing condition labeled as a proposition | Moved into the equilibrium definition; propositions renumbered |
| ... | | | | | |

**Substantive issues (if FAIL):**
[Specific description with the affected statement and the conflicting re-derivation]

**Back-propagation log:**
[Which source files received which fixes; "none" if none]
```

Append to `logs/stage-log.md`:
`[GATE 6 — Mathematical Review Gate] <ISO timestamp> | PASS / PASS WITH CORRECTIONS (<k> fixes) / FAIL [SEVERITY] — <one-line reason>`

Record the verdict under `gate_results.gate_6` in `state.json`.
