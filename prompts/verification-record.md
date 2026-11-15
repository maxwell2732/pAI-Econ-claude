# The Verification Record

**Shared schema module.** Read this file when a stage or gate instructs you to write `verification_record.json`. Stages 6, 7, 7b and 8 write claim fields; Gates 3, 4, 4b, 4R and 6 write status and decisions.

---

## What this file is for

Before this record existed, a claim's verification status lived only as prose inside gate files. A proposition that survived three independent re-derivations and one that was never checked were indistinguishable in machine-readable state: `state.json → active_propositions` held a flat list of ID strings.

The record fixes that. It is the mathematical counterpart of `references_verified.md`, which is the one verification standard in this repository that already works: per item, with a status, an evidence path, and a default of exclusion.

Three properties matter.

- **Queryable.** A gate can mechanically ask "which claims have an OPEN obligation that blocks the manuscript".
- **Diffable.** A status change or a silent edit to a claim's text shows up in `git diff` and in `claim_text_sha256`.
- **Presentable.** A human checkpoint can show evidence quality instead of a verdict word.

---

## Location and ownership

`<workspace>/verification_record.json`. Initialize from `templates/verification_record.json` at Stage 6, when claim text first exists.

| Writer | Fields |
|---|---|
| Stage 6 | creates one entry per labelled statement: `proposition_id`, `claim_text`, `claim_text_sha256`, `role`, `tier`, `depends_on`, `assumptions`, `source_files`; sets `proof_status: "NOT VERIFIED"` |
| Stage 7 | appends to `source_files`; fills `independent_derivation` where it performed one; proposes nothing about status |
| Stage 7b | fills `numerical_checks` including `independence_grade`, `grid`, `regime_matrix` |
| Stage 8 | fills `counterexample_tests`, one entry per claim against its current text; may set `proof_status: "INVALID"` on a valid counterexample. A claim it rewrites gets a new ID at `NOT VERIFIED` |
| Gates 3, 4, 4b, 6 | fill `entailment_ledger`, `support_checklist`, `gate_decision`; set `proof_status`; open and discharge `unresolved_issues` |
| Gate 4R | the same fields, on revised claims only: every claim whose `claim_text_sha256` differs from the value at its last `gate_decision`, every claim created by a HiL-6 or HiL-N3 resolution, and every claim depending on one of those |

`state.json → active_propositions` stays a list of claim IDs and indexes into this file, so `--resume` on a workspace created before this record existed keeps working. **A workspace with no `verification_record.json` is read as every claim at `NOT VERIFIED`.**

The file is append-and-amend. Every amendment carries a timestamp, so a claim's status history is readable.

---

## Claim status vocabulary

Status attaches to a **claim**. Gate verdicts stay at the document level and are unchanged.

| Status | Definition | Minimum evidence | Who may assign |
|---|---|---|---|
| **VERIFIED** | An auditable derivation exists and every applicable independent check passed. | `assumptions` complete with `undeclared_but_used` empty and `satisfiability: SATISFIABLE`; `independent_derivation.derivation_path` present; Entailment Ledger with no FAIL and no undischarged GAP; support checklist with no `MISSING` on a condition the conclusion depends on; a second route for each load-bearing equality; `counterexample_tests` performed and returning `NO COUNTEREXAMPLE FOUND`; `independence_grade` I0 or I1. | A gate. Never a stage. |
| **CONDITIONALLY VALID** | The claim holds once its conditions are corrected or narrowed, and the corrected statement is recorded. | Everything for VERIFIED, with one or more conditions added or narrowed relative to the original, each named in `conditions`, audited in `assumption_audit.md`, and present in the revised statement. Also the ceiling at `independence_grade` I2. | A gate. |
| **INVALID** | A definite logical error, or a valid counterexample satisfying the original hypotheses. | The error located, or the instance exhibited with its parameter values and a check that every stated hypothesis holds at it. | Any stage or gate. |
| **NOT VERIFIED** | Neither established nor refuted. | A record of what was attempted and what is missing. | Default on creation. |
| **NUMERICALLY SUPPORTED** | Numerical evidence exists and establishes nothing general. | A Stage 7b result with a valid epistemic label, `usability_ratio ≥ 0.5`, every exclusion derived from the model, and the grid stated. A companion label only. | Gate 4b. |

### Transition rules

1. Every claim is created `NOT VERIFIED`. There is no implicit promotion.
2. `NOT VERIFIED → VERIFIED` requires a gate and the full evidence set. A stage may propose; only a gate assigns.
3. `NUMERICALLY SUPPORTED` never promotes to `VERIFIED`. It accompanies `NOT VERIFIED` or `CONDITIONALLY VALID`.
4. Absence of a counterexample never promotes anything. `NO COUNTEREXAMPLE FOUND` is evidence about the search.
5. `INVALID` is terminal for the claim **as stated**. A revised statement is a new claim with a new ID at `NOT VERIFIED`.
6. **Any edit to a claim's text resets its status to `NOT VERIFIED`.** Detected by comparing `claim_text_sha256`. This is why a proposition rewritten at Stage 8 or HiL-6 cannot carry an old verification forward. Gate 4R is where such a claim is re-checked, on the new text alone, before Stage 9.
7. A claim may be `VERIFIED` and still hold open obligations. Obligations block manuscript inclusion, not the status.

### Conjectures are kept, and marked

A conjecture is a claim at `NOT VERIFIED` with `role: "CONJECTURE"`. Four rules, and they exist so that exploratory work survives honestly rather than being deleted:

1. A conjecture may stay in the workspace and may appear in the manuscript, under the word "conjecture", in a `remark` or in running prose.
2. It may never sit in a `proposition`, `lemma`, `theorem`, or `corollary` environment.
3. **No `VERIFIED` or `CONDITIONALLY VALID` claim may depend on a conjecture.** Dependency is read from `depends_on`. A violation is a gate FAIL.
4. A conjecture supported only by numerics carries `NUMERICALLY SUPPORTED` alongside, and its grid and `usability_ratio` are stated wherever it appears.

---

## Schema

Field semantics follow the entry. `null` and `[]` are meaningful; omitting a required field is not permitted.

```json
{
  "schema_version": "1.0",
  "workspace": "Exploration/Project_NNN_<Abbrev>",
  "skill_version": "v1.5.0",
  "skill_commit": "<git short hash, or \"unknown\">",
  "claims": [
    {
      "proposition_id": "P_C5",
      "claim_text": "<the statement, verbatim, as currently written>",
      "claim_text_sha256": "<sha256 of claim_text>",
      "role": "CORE | SUPPORTING | EXTENSION | CONJECTURE | LEMMA | COROLLARY",
      "tier": "T1 | T2 | T3",
      "depends_on": ["P_C1", "L1"],

      "assumptions": {
        "declared": ["A1", "A5", "A69"],
        "used": ["A1", "A5", "A69", "A13"],
        "required_for_strength": ["A1", "A5", "A69", "A13", "density_positive_at_threshold"],
        "undeclared_but_used": ["A13"],
        "declared_but_unused": [],
        "satisfiability": "SATISFIABLE | INFEASIBLE_AT_STATED_POINT | UNDETERMINED",
        "satisfiability_note": "checked at b-dagger, where P(C)=0 by definition",
        "compound_decomposed": true
      },

      "source_files": [
        "outputs/candidate_propositions.md#P_C5",
        "outputs/proof_sketches.md#P_C5",
        "outputs/manuscript.tex:252"
      ],

      "proof_status": "NOT VERIFIED",
      "proof_status_set_by": "gate_4",
      "proof_status_set_at": "<ISO timestamp>",
      "conditions": [],

      "independent_derivation": {
        "performed": true,
        "method": "total differentiation of the projection coefficient, from model_primitives.md section 7",
        "derivation_path": "verification/derivations/P_C5.md",
        "written_before_reading_author": true,
        "agrees_with_author": true,
        "discrepancies": [],
        "second_route": {
          "performed": false,
          "method": null,
          "path": null,
          "agrees": null
        }
      },

      "entailment_ledger": {
        "L1_necessity":           {"result": "OK", "evidence": "..."},
        "L2_sufficiency":         {"result": "OK", "evidence": "..."},
        "L3_strictness":          {"result": "OK", "evidence": "..."},
        "L4_sign_arithmetic":     {"result": "OK", "evidence": "..."},
        "L5_factor_positivity":   {"result": "OK", "evidence": "..."},
        "L6_local_to_global":     {"result": "OK", "evidence": "..."},
        "L7_quantifier_order":    {"result": "N/A", "evidence": "no nested quantifiers"},
        "L8_corner_coverage":     {"result": "OK", "evidence": "..."},
        "L9_definition_identity": {"result": "OK", "evidence": "..."}
      },

      "support_checklist": {
        "S1_density_positive": "SATISFIED | NOT REQUIRED | MISSING",
        "S2_support_connected": "NOT REQUIRED",
        "S3_threshold_interior": "NOT REQUIRED",
        "S4_product_support": "NOT REQUIRED",
        "S5_moments_finite": "SATISFIED",
        "S6_variance_positive": "SATISFIED",
        "S7_conditioning_set_positive_measure": "SATISFIED",
        "S8_no_atoms": "SATISFIED",
        "S9_policy_invariance": "SATISFIED",
        "supplied_by": {"S6_variance_positive": "A69", "S5_moments_finite": "A5"}
      },

      "numerical_checks": {
        "ran": false,
        "scripts": [],
        "verification_scripts": [],
        "independence_grade": null,
        "shared_from_author": [],
        "differing_axes": [],
        "optimality_system_path": null,
        "constraint_status_agreement": {"points": 0, "disagreements": 0},
        "regime_matrix": {
          "interior": "NOT TESTED", "each_binding": "NOT TESTED", "corners": "NOT TESTED",
          "infeasible": "NOT TESTED", "regime_boundary": "NOT TESTED", "degenerate": "NOT TESTED"
        },
        "grid": {
          "points_total": 0, "points_evaluated": 0, "points_usable": 0,
          "usability_ratio": null,
          "exclusions": []
        },
        "epistemic_label": null,
        "cross_validation": []
      },

      "counterexample_tests": [
        {
          "target": "L3 strictness",
          "strategy": "insert a zero-density gap in supp(w) spanning e*(g) - b-bar",
          "result": "COUNTEREXAMPLE FOUND | NO COUNTEREXAMPLE FOUND | SEARCH NOT PERFORMED",
          "instance": {},
          "hypotheses_verified_at_instance": [],
          "evidence_path": null,
          "reason_if_not_performed": null
        }
      ],

      "unresolved_issues": [
        {
          "id": "OBL-P_C5-1",
          "raised_by": "gate_4",
          "raised_at": "<ISO timestamp>",
          "description": "step 3 needs a C1 density condition absent from assumption_audit.md",
          "discharge_condition": "either A13 added and audited, or the claim restricted AND f_eta(T)>0 supplied",
          "status": "OPEN | DISCHARGED | ACCEPTED_AS_CAVEAT",
          "discharge_evidence": null,
          "verified_by": null,
          "blocks_manuscript": true
        }
      ],

      "evidence_paths": [
        "gates/gate-04-proof-integrity.md#P_C5",
        "verification/derivations/P_C5.md"
      ],

      "reviewer": {
        "actor": "orchestrator | verifier_subagent | external:<name> | human:<name>",
        "session_id": "<id or null>",
        "authored_claim": true,
        "authored_proof": true,
        "note": "same actor authored and verified; independence_grade reflects this"
      },

      "gate_decision": {
        "gate": "gate_4",
        "verdict": "PASS | CONDITIONAL PASS | FAIL",
        "fail_conditions_hit": [],
        "downgrades": [],
        "decided_at": "<ISO timestamp>"
      }
    }
  ]
}
```

### Field notes

**`claim_text_sha256`** — the hash of `claim_text`. Compute it with a reproducible method and record which. The point is detecting change, so any stable hash of the exact string works; a short digest is acceptable if the method is stated. Transition rule 6 depends on this field.

**`tier`** — the cost tier, assigned at Stage 6 and revised by gates. T1 is every labelled statement; T2 is every CORE claim; T3 is trigger-based. The triggers are in `prompts/proof-code-independence.md` §5.

**`required_for_strength`** — the assumptions needed for the claim **at the strength stated**. This diverges from `used` precisely where a strict claim rests on a weak argument, which is why the field exists. Entries may be informal names for conditions not yet numbered, such as `density_positive_at_threshold`.

**`undeclared_but_used`** — `used \ declared`. Non-empty on a CORE claim is assumption laundering and a gate FAIL (FT-5).

**`independence_grade`** — I0 to I4 per `prompts/proof-code-independence.md` §3. I3 or I4 caps the achievable status at `NUMERICALLY SUPPORTED`.

**`regime_matrix`** — a region with no test is `NOT TESTED`, never omitted. An empty region is `EMPTY` with the argument for emptiness in the report.

**`grid.exclusions`** — one entry per exclusion **reason**, each `{"reason": "...", "count": n, "derived_from_model": true|false}`. An exclusion rule that cannot be derived from the model is a gate FAIL (FT-8).

**`unresolved_issues`** — the obligation ledger. Every gate reads every OPEN obligation before evaluating and records `DISCHARGED` with evidence or `STILL OPEN`. `ACCEPTED_AS_CAVEAT` requires the researcher's decision and, where the finding is non-downgradable, manuscript-level disclosure.

**`reviewer.authored_claim` / `authored_proof`** — recorded truthfully. On the default path both are `true` and `actor` is `orchestrator`, which is honest and is what `independence_grade` then reflects. Writing `false` where the same session authored the claim misstates the evidence.

**`gate_decision.fail_conditions_hit`** — named FAIL conditions that were hit, **whether or not a downgrade followed**. This field is what makes a downgrade visible.

**`gate_decision.downgrades`** — each `{"from", "to", "rationale", "class": "DOWNGRADABLE|NON_DOWNGRADABLE", "researcher_approved": bool, "approved_at"}`. An unapproved downgrade blocks manuscript inclusion of the claim.

---

## Derivation and verification artifacts

Paths referenced by the record live under the workspace:

```
<workspace>/
├── verification_record.json
└── verification/
    ├── derivations/        # one file per claim re-derived: the working, not a verdict
    ├── numerical/          # optimality systems, independent reimplementations
    └── counterexamples/    # search scripts and the instances they found
```

**A match/no-match table is not evidence.** In one past run, Gate 4 Check 7 recorded fifteen results as a table of ticks, which cannot be re-checked by anyone. The derivation file holds the working, so a third party can audit it.

---

## Writing discipline

- One entry per labelled statement, including SUPPORTING, EXTENSION, LEMMA and COROLLARY. A statement with no entry is invisible to every gate.
- Terse. Evidence strings are one line. The exceptions are the L4 term table and the L5 factor table, which are written out in the gate's markdown output because they *are* the check.
- Truthful nulls. `null` and `NOT TESTED` and `SEARCH NOT PERFORMED` are correct values and carry information. An omitted field reads as an attempt to hide a gap.
- Never raise a claim's status to clear a blockage. The statuses are a record of evidence, and a status written without its evidence makes every other status worthless.
