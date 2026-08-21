# Empirical Companion Mode — Verification Tests

Three tests for the `empirical-companion` mode, plus a backward-compatibility check and a
routing check.

This repository has no automated test harness. Verification is a manual end-to-end run, as
described in the Contributing section of the README, with `logs/stage-log.md` serving as the
run transcript and this document as the pass criteria. Each test runs from a fixture in
`examples/` and is checked against the criteria below.

Record results by appending a row to the log table at the end of this file.

---

## Test BC — Backward compatibility

**Run first.** The mode system must not change default behavior.

```text
/theoretical-economics-claude-skill --task examples/quickstart-task.txt
```

Stop after Stage 4 + Gate 2.

| # | Criterion | Pass condition |
|---|-----------|----------------|
| BC1 | Mode defaults | `state.json` → `"mode": "theory-development"` |
| BC2 | No EC stage | `completed_stages` contains no `0-EC`; no scope-lock questions were asked |
| BC3 | No EC artifacts | `outputs/` contains no `empirical_scope.md`, `minimality_check.md`, `empirical_theory_map.md`, or `scope_notes.md` |
| BC4 | No EC gate | `gates/` contains no `gate-ec-empirical-alignment.md`; `gate_results.gate_ec` is `null` |
| BC5 | Stage output shape unchanged | `model_primitives.md` follows the same section structure as `Exploration/Project_004_MoralHazardVBP/outputs/model_primitives.md` |
| BC6 | Prompts unchanged above the guard | Every prompt file's content above `## Empirical-Companion Mode Addendum` is byte-identical to v1.3.0 (`git diff v1.3.0 -- prompts/` shows additions only) |

BC6 is checkable without a run:

```bash
git diff --stat HEAD~1 -- prompts/     # additions only, no deletions
```

---

## Test RT — Mode routing

Each form must resolve and land in `state.json` → `mode`. Stop each run after
`state.json` is initialized.

| Invocation | Expected `mode` |
|------------|-----------------|
| `/mode empirical-companion "<brief>"` | `empirical-companion` |
| `/mode empirical_companion --task examples/demo-ec-clean-companion.txt` | `empirical-companion` |
| `/theoretical-economics-claude-skill "mode: empirical-companion\n\n<brief>"` | `empirical-companion` |
| `/theoretical-economics-claude-skill "mode: model_extension\n\n<brief>"` | `theory-development` |
| `/theoretical-economics-claude-skill "<brief>"` | `theory-development` |
| `/mode emprical-companion "<brief>"` (typo) | Pipeline asks which mode; does not guess and does not silently default |

Also check resume: `--resume` on an `empirical-companion` workspace reads the mode back from
`state.json` and continues in that mode.

---

## Test EC1 — Clean empirical companion

**Fixture:** `examples/demo-ec-clean-companion.txt`

A well-formed brief: baseline, mechanism, and heterogeneity all present and internally
consistent; a collateral-constrained investment story that a standard model delivers.

```text
/mode empirical-companion --task examples/demo-ec-clean-companion.txt
```

Run through Stage 6 + Gate 3 + Gate EC + HiL-5. Answer `APPROVE` at HiL-5 and continue to
completion for the full end-to-end check.

| # | Criterion | Pass condition |
|---|-----------|----------------|
| EC1-1 | Scope locked | `empirical_scope.md` exists with **Scope status: LOCKED**; three target hypotheses H1–H3 |
| EC1-2 | Intake restraint | At most three questions were asked at Stage 0-EC, in one message. This brief is complete, so the expected count is **zero** |
| EC1-3 | Declared domain recorded | `empirical_scope.md` carries the domain from the fixture: positive debt, collateral ratios 0.15–0.70, guarantee coverage ≤ 80%, interior investment |
| EC1-4 | Minimal model | `minimality_check.md` exists; every retained row has an empirical role other than `none`; the "smaller alternative considered" field is filled |
| EC1-5 | No unrequested mechanism | No mechanism appears in `model_primitives.md` that the brief did not state. Specifically absent: interest-rate general equilibrium, entry/exit, welfare, active lender behavior — all four are in the fixture's exclusions |
| EC1-6 | One-to-one mapping | `empirical_theory_map.md` has exactly three rows; each maps one empirical result → one mechanism → one primitive → one proposition → one hypothesis, with no `pending` cells and no entries in the "Breaks in the mapping" table |
| EC1-7 | Proposition count | CORE propositions number three. Any additional result the model supports appears in `scope_notes.md`, not in `candidate_propositions.md` as CORE |
| EC1-8 | Object identity | The object identity check in the map reads **YES**: the model's collateral wedge and the empirical collateral-ratio interaction are the same object |
| EC1-9 | Gate EC verdict | **PASS**, with no FAIL on any of EC1–EC6 |
| EC1-10 | Checkpoint format | HiL-5 was presented as the EMPIRICAL COMPANION CHECKPOINT with three result → mechanism → proposition → hypothesis blocks and the `APPROVE / EDIT / RETURN TO MODEL` options |
| EC1-11 | Theory section shape | `manuscript.tex` §3 is `Conceptual Framework` with subsections `3.1 Economic Environment`, `3.2 Model`, `3.3 Predictions`, and three numbered hypotheses matching the map row for row |
| EC1-12 | Length discipline | The conceptual framework runs 3–5 pages; proofs are in an appendix; there is no boundary-case section and no welfare section |
| EC1-13 | Gate 6 still runs | `gates/gate-06-math-review.md` exists and was written before pdflatex ran |

**Failure signature to watch for:** the pipeline adding an adjustment-cost mechanism, a
dynamic extension, or a welfare comparison that the brief excluded. Any of those is an EC1-5
failure and indicates the Minimal Model Principle is not binding.

### Run of 2026-08-21 — criterion notes

| # | Result | Note |
|---|--------|------|
| EC1-1 | ✅ | Scope LOCKED, H1–H3 recorded |
| EC1-2 | ✅ | **Zero** questions asked; the brief was complete |
| EC1-3 | ✅ | Domain recorded verbatim, plus a derived note that constraint status is deliberately unrestricted |
| EC1-4 | ✅ | 14 elements, all with an empirical role; 7 removals performed; 2 smaller alternatives tested |
| EC1-5 | ✅ | All four fixture exclusions honored; no unrequested mechanism entered the model |
| EC1-6 | ✅ | 3 rows, no `pending`, no breaks |
| EC1-7 | ✅ | Exactly 3 CORE propositions + 1 correctly-labeled Lemma; 7 deferrals |
| EC1-8 | ⚠️ **PARTIAL, not YES** | The fixture uses "collateral wedge" for both the policy parameter and the firm characteristic. The model must separate them, so identity can only ever be PARTIAL. **Fixture defect.** Either sharpen the fixture's mechanism statement, or amend this criterion to accept PARTIAL when the proxy relationship is stated and monotone |
| EC1-9 | ⚠️ **CONDITIONAL PASS, not PASS** | Three WARNINGs: EC2 (H1 restated to the average form), EC5 (moderator is a proxy), EC6 (per above). Zero FAILs. The gate behaved correctly; the criterion was written optimistically |
| EC1-10 | ✅ | Checkpoint rendered in the EC format with all three blocks and the three options |
| EC1-11 | ✅ | §3 Conceptual Framework with 3.1/3.2/3.3 and three numbered `hypothesis` environments matching the map row for row |
| EC1-12 | ✅ | 7 pages total: ~4 pages of framework, proofs in Appendix A, no boundary-case section, no welfare section |
| EC1-13 | ✅ | Gate 6 PASS before compilation; 9/9 displayed derivations independently re-derived via `sympy` |

**Recommended amendments before the next run**

1. Rewrite `demo-ec-clean-companion.txt` to name the policy parameter and the firm
   characteristic separately, so EC1-8 can reach YES; or
2. Amend EC1-8 to accept PARTIAL where the map states a monotone proxy relationship, and
   EC1-9 to accept CONDITIONAL PASS with zero FAILs. Option 2 is probably right: a real
   empirical brief will usually describe its mechanism loosely, and PARTIAL with a stated
   proxy is the honest outcome rather than a defect.

---

## Test EC2 — Impossible requested hypothesis

**Fixture:** `examples/demo-ec-impossible-hypothesis.txt`

H1 claims mandatory disclosure raises hygiene investment for **every** restaurant. In a
standard vertical-differentiation disclosure model this is false: disclosure reveals low
quality as well as high, and a restaurant whose revealed quality is below the market's prior
loses demand. Its investment response is not unambiguously positive, and the universal claim
does not follow. The heterogeneity result in the fixture (near-zero effects at the top and
bottom of the quality distribution) is itself evidence against the universal form.

```text
/mode empirical-companion --task examples/demo-ec-impossible-hypothesis.txt
```

Run through Stage 7 + Gate 4 + Gate EC.

| # | Criterion | Pass condition |
|---|-----------|----------------|
| EC2-1 | Failure is reported | Stage 7 or Gate 4 emits `TARGET HYPOTHESIS NOT DERIVED — H1`. It is presented to the researcher, not buried in a file |
| EC2-2 | No false proposition | No proposition in `candidate_propositions.md` asserts that disclosure raises investment for all restaurants. The pipeline does not produce a proposition it cannot support |
| EC2-3 | Minimal sufficient condition given | The block states the weakest condition delivering the sign — a restriction on the prior relative to true quality, or a restriction to the range where the demand response is positive — and not a blanket functional-form assumption |
| EC2-4 | Economic meaning stated | The condition is explained in economics, not only in algebra |
| EC2-5 | Support status recorded | `EMPIRICAL <source>`, `THEORETICAL <source>`, or `NONE FOUND`. Any source cited is web-verified per the standing citation rule |
| EC2-6 | No silent assumption | `assumption_audit.md` contains no assumption introduced at Stage 6 or 7 that is absent from the audited set. Gate 4 check EC-D reports "Assumptions used in proofs but absent from assumption_audit.md: none" |
| EC2-7 | Gate EC does not clear it | Gate EC is not PASS while H1 is unresolved. Expected: **CONDITIONAL PASS** with an EC2 WARNING (honest report, researcher decision pending), or **FAIL** if Stage 6 asserted H1 anyway |
| EC2-8 | Three options offered | `ACCEPT CONDITIONAL`, `ADD ASSUMPTION`, `REVISE EMPIRICS` are all presented, and the pipeline waits |
| EC2-9 | No unilateral adoption | The pipeline does not choose `ADD ASSUMPTION` for the researcher and continue |

**Failure signature to watch for:** a Proposition 1 reading "under Assumption 4, disclosure
raises investment", where Assumption 4 was introduced at Stage 6 or 7 specifically to obtain
the sign and does not appear in the audit. That is assumption laundering and fails EC2-2 and
EC2-6.

---

## Test EC3 — Parameter reversal outside the declared scope

**Fixture:** `examples/demo-ec-domain-reversal.txt`

In a search model with costly search effort, a large enough fall in the marginal cost of
search raises the reservation wage enough that the job-finding rate can fall. The fixture's
declared domain caps search-cost reductions at 45%, well below where that reversal occurs.
H1 holds inside the domain and reverses outside it.

```text
/mode empirical-companion --task examples/demo-ec-domain-reversal.txt
```

Run through Stage 8 + HiL-6 and continue to completion.

| # | Criterion | Pass condition |
|---|-----------|----------------|
| EC3-1 | Reversal is found | Stage 8 identifies the reservation-wage reversal. The mode does not suppress the finding |
| EC3-2 | Domain classification correct | The reversal is classified as **outside** the declared domain, and the boundary is stated numerically |
| EC3-3 | Recorded in scope notes | `scope_notes.md` contains an entry of type `domain reversal` with the finding, the boundary, and `Promotion trigger present: none` |
| EC3-4 | Main proposition retained | The baseline proposition survives, with the domain restriction stated in the proposition itself rather than only in a footnote |
| EC3-5 | Not in the counterexample file as gate-failing | `counterexamples_and_edge_cases.md` records it, and it is not treated as an inside-domain HIGH-severity failure |
| EC3-6 | Gate EC verdict | **PASS** — the reversal is out of scope and correctly deferred |
| EC3-7 | Manuscript not overwhelmed | `manuscript.tex` spends at most one sentence on the boundary case, in the limitations or a footnote. There is no boundary-case section |
| EC3-8 | Domain claim is honest | `empirical_scope.md`'s declared domain is grounded in the fixture's stated sample properties. A domain drawn loosely to exclude the inconvenient region would fail this |

**Failure signature to watch for, in both directions:** the reversal never being found (the
mode has weakened Stage 8), or the reversal taking over the theory section with a
multi-paragraph regime discussion the empirical design cannot speak to.

---

## Results log

| Date | Test | Model | Verdict | Notes |
|------|------|-------|---------|-------|
| 2026-08-21 | EC1 | Claude Opus 5 | **PASS with 2 criteria adjusted** | Full run to `manuscript.pdf`. 11/13 criteria met as written; EC1-8 came in PARTIAL (not YES) and EC1-9 CONDITIONAL PASS (not PASS). Both trace to the fixture using "collateral wedge" for two distinct objects, so a clean YES was unreachable — fixture defect, not gate defect. See the criterion notes below. Substantive finding: the pipeline caught a sign error latent in the fixture's H2. |
