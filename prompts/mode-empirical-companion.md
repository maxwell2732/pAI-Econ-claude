# Mode Contract: `empirical-companion`

**From empirical results to the smallest theory that can explain them.**

This file is the authoritative specification of the `empirical-companion` mode. Read it in
full at Stage 0 whenever `state.json → mode == "empirical-companion"`, and re-read the
relevant section whenever a stage prompt's "Empirical-Companion Mode Addendum" points here.

In `theory-development` mode this file is not read at all.

---

## Positioning

A constrained theory-building mode for empirical papers: formalize the researcher's stated
mechanism with the smallest coherent model and derive hypotheses that map directly onto the
empirical design.

The researcher arrives with the empirics substantially finished — baseline results,
mechanism tests, heterogeneity results. The theory section's job is to give those findings
a transparent, verifiable economic structure and to state the hypotheses the regressions
already test.

## The governing principle

> **Constrain scope, not rigor.**

This mode narrows the theoretical search space. It never lowers the standard of proof, and
it never manufactures a conclusion to match a regression coefficient. Every mathematical
integrity check in the pipeline keeps its full force: assumption audit, proof integrity,
counterexample search, statement classification, independent re-derivation, Gate 6.

## What changes relative to `theory-development`

| | `theory-development` (default) | `empirical-companion` |
|---|---|---|
| Research question | May be widened, reframed, generalized | Locked to the researcher's empirical question |
| Model size | Whatever the theory needs | Smallest coherent model that generates the target hypotheses |
| Propositions | Six required types (E/U/C/W/M/B) | One per target hypothesis; extras deferred |
| Counterexample search | Broad, whole parameter space | Declared empirical domain first; outside findings deferred |
| Numerical simulation | Offered on its own merits | Offered only on three narrow triggers |
| Novelty requirement | The model should be a theoretical contribution | The model may be an organizing framework for the empirical analysis |
| Extra findings | Enter the main line | Recorded in `scope_notes.md` |

## What does NOT change

Canonical model matching (Stage 3b, Gates 2b/2c), the assumption audit (Stage 5), proof
integrity (Gate 4), the counterexample battery (Stage 8), the mathematical review (Gate 6),
the citation verification rule, and every human-in-the-loop stop. The empirical scope lock
tells these checks *where* to look. It never tells them what to conclude.

---

## Mode artifacts

Five artifacts exist only in this mode.

| Artifact | Written at | Purpose |
|---|---|---|
| `outputs/empirical_scope.md` | Stage 0-EC | The scope contract. All later stages work inside it. |
| `outputs/minimality_check.md` | Stage 4, revised at Stage 6 | Every model element mapped to its empirical function. |
| `outputs/empirical_theory_map.md` | Stage 4 (draft), Stage 6 (complete) | Empirical result → mechanism → primitive → proposition → hypothesis. |
| `outputs/scope_notes.md` | Stages 4, 6, 7, 8 (append-only) | Everything checked, recorded, and kept out of the main line. |
| `gates/gate-ec-empirical-alignment.md` | After Stage 6 | Gate EC verdict. |

Prompts: `prompts/ec-00-empirical-scope-lock.md` (Stage 0-EC),
`prompts/ec-empirical-theory-map.md` (map + minimality),
`prompts/gate-ec-empirical-alignment.md` (Gate EC).

---

## The Minimal Model Principle

> **Use the smallest coherent economic model capable of generating the target hypotheses.**

Applied at Stage 4 and re-checked at Stage 6 and Gate EC.

1. **Prefer an existing canonical model.** Start from the family Stage 3b selected. Inherit
   its structure rather than reinventing one.
2. **Minimize primitives.** Every agent type, every good, every period, every distribution
   must earn its place.
3. **Minimize state variables.** A second state variable requires a second empirical result
   that depends on it.
4. **Every parameter carries economic meaning.** A parameter that cannot be described in one
   sentence of economics is a fitting device; remove it or replace it with something
   interpretable.
5. **Every added mechanism answers two questions:**
   - Which empirical result does it correspond to?
   - Which target hypothesis becomes underivable if it is removed?
6. **No empirical role means delete.** An element that survives both questions with "none"
   is removed from the model, and the removal is logged in `minimality_check.md`.
7. **Complexity is not a quality signal.** Do not add generality, extra periods, extra
   heterogeneity dimensions, or richer functional forms to make the theory section look
   substantial.

The `minimality_check.md` table:

| Model element | Empirical role | Hypothesis lost without it | Necessary? |
|---|---|---|---|
| ability heterogeneity | heterogeneity result (Table 5) | H3 | yes |
| information friction | mechanism test (Table 4) | H2 | yes |
| habit formation | none | none | **no → removed** |

---

## Deferral policy: `scope_notes.md`

Findings that fall outside the empirical paper's main line are **checked and recorded**,
then held in `scope_notes.md`. Nothing is discarded and nothing is hidden.

What goes there: parameter-domain reversals outside the declared empirical domain, corner
cases, alternative mechanisms that would also produce the baseline, possible extensions,
equilibrium complications (multiplicity, existence gaps outside the domain), and additional
propositions the model supports but the paper does not need.

By default these do not enter the main propositions, the target hypotheses, or the
manuscript main text.

**Promotion to the main text requires one of exactly three triggers**, and the trigger must
be named in the note itself:

1. The finding overturns a target hypothesis.
2. The finding materially affects identification in the empirical design.
3. The researcher explicitly asks for it.

Each entry uses this shape:

```markdown
### SN-<n> — <one-line title>
**Type:** domain reversal | corner case | alternative mechanism | extension | equilibrium complication | additional proposition
**Raised at:** Stage <n>
**Finding:** <what was established, stated precisely>
**Why it is out of the main line:** <e.g. "occurs only for sigma > 2.5; the declared empirical domain is sigma in [0.3, 1.2]">
**Promotion trigger present:** none | overturns H<n> | affects identification | researcher request
```

---

## Target hypotheses are targets, not truths

The researcher's hypotheses tell the pipeline what to try to derive. They never license a
result.

If the researcher expects `X increases Y` and the model yields `sign depends on parameter
values`, the pipeline reports that. It then offers the **minimal sufficient condition** and
lets the researcher choose what to do.

### The `TARGET HYPOTHESIS NOT DERIVED` protocol

Emitted by Stage 7 when a proof sketch cannot establish a target hypothesis, and by Gate 4
when the check confirms it. Present it verbatim in this shape:

```
TARGET HYPOTHESIS NOT DERIVED — H<n>

Hypothesis as stated:           <the researcher's hypothesis>
What the model actually yields: <e.g. sign of dY/dX depends on theta>

Minimal sufficient condition:   <e.g. theta > theta*, where theta* = ...>
Economic meaning:               <what the condition says in economics, one or two sentences>
Support for the condition:      EMPIRICAL <source> | THEORETICAL <source> | NONE FOUND

Options:
  ACCEPT CONDITIONAL   — restate H<n> as conditional on the condition above
  ADD ASSUMPTION       — adopt the condition as a stated, audited assumption
  REVISE EMPIRICS      — change the empirical interpretation instead
```

The minimal sufficient condition must be *minimal*: the weakest restriction that delivers
the sign. Do not offer a strong functional-form assumption when a parameter restriction
suffices.

If `ADD ASSUMPTION` is chosen, the condition re-enters Stage 5 tagged `ADDED-FOR-TARGET`
and is audited like any other load-bearing assumption. The pipeline never adopts such a
condition on its own.

### No assumption laundering

The pipeline must not obtain the researcher's expected sign by quietly introducing
monotonicity, convexity, single-crossing, a parameter restriction, a functional form, or a
distributional assumption.

Any assumption introduced after `empirical_scope.md` is locked is tagged in
`assumption_audit.md` as:

```markdown
**Status:** ADDED-FOR-TARGET
**Introduced at:** Stage <n>
**Target it serves:** H<n>
**Economic justification:** <why an economist would accept this independent of the target>
**Support:** EMPIRICAL <source> | THEORETICAL <source> | NONE FOUND
```

An `ADDED-FOR-TARGET` assumption with no economic justification independent of the target
is a Gate EC failure (check EC4).

---

## The EMPIRICAL COMPANION CHECKPOINT (HiL-5 in this mode)

In `empirical-companion` mode, HiL-5 is presented in the format below instead of the
default proposition-selection format. It runs after Stage 6, Gate 3, and Gate EC.

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  EMPIRICAL COMPANION CHECKPOINT  (HiL-5)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  Gate EC: <PASS | CONDITIONAL PASS | FAIL>

  Baseline:
    Empirical result:  <X up, Y up — Table 2>
    Model mechanism:   <X lowers the marginal cost of effort>
    Proposition:       P1 — <de*/dX > 0>
    Hypothesis:        H1 — <X increases Y>

  Mechanism:
    Empirical result:  <mechanism test, Table 4>
    Model mechanism:   <M raises the return to effort>
    Proposition:       P2 — <cross-partial of Y in X and M is positive>
    Hypothesis:        H2 — <the effect is stronger when M is high>

  Heterogeneity:
    Empirical result:  <subgroup split, Table 5>
    Model mechanism:   <...>
    Proposition:       P3 — <...>
    Hypothesis:        H3 — <...>

  Deferred to scope_notes.md: <n> items
    <SN-1 one-line title>
    <SN-2 one-line title>

  Please choose one:
    APPROVE           — Proceed to Stage 7 (Proof Sketch)
    EDIT              — Revise the mapping; I will re-run Stage 6
    RETURN TO MODEL   — Loop back to Stage 4 (Model Primitives)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

Log as `[HiL-5 — Empirical Companion Checkpoint] <ISO timestamp> | researcher: <choice> — <notes>`
and record in `state.json → human_decisions.hil_5`.

---

## Per-stage override table

Each stage prompt carries an "Empirical-Companion Mode Addendum" section at its end. This
table is the index; the addendum in each file is the operative text.

| Stage / Gate | Override |
|---|---|
| **Stage 0-EC** | New. Parse the empirical brief; write `empirical_scope.md`; lock the scope. |
| Stage 1 — Puzzle Refinement | Confirm the empirical puzzle and the authors' mechanism. Do not widen the question. |
| Stage 2 — Literature Positioning | Find the closest canonical model and how comparable empirical papers model this mechanism. Novelty still checked; standalone theoretical contribution not required. |
| Stage 2a — Empirical Reality Check | Unchanged. The researcher's own results are inputs, not claims about a third-party market; verify only the contextual claims. |
| Stage 3 — Persona Council | Personas judge whether the minimal model supports the empirical design. |
| Stage 3b — Canonical Matching | Unchanged in strictness. Report and redirect if the researcher's preferred family is unsuitable. |
| Stage 4 — Model Primitives | Minimal Model Principle. Emit `minimality_check.md` and the `empirical_theory_map.md` draft. |
| Stage 5 — Assumption Audit | `ADDED-FOR-TARGET` tagging; no assumption laundering. |
| Stage 6 — Proposition Generator | One proposition per target hypothesis. Extras to `scope_notes.md`. Complete the map. |
| **Gate EC** | New. EC1–EC6 alignment checks, after Stage 6 and Gate 3. |
| **HiL-5** | Rendered as the EMPIRICAL COMPANION CHECKPOINT above. |
| Stage 7 — Proof Sketch | Per-hypothesis derivability verdict; `TARGET HYPOTHESIS NOT DERIVED` where needed. |
| Gate 4 — Proof Integrity | New check EC-D: is every target hypothesis actually derived? |
| Stage 7b — Numerical Simulation | Recommend only on the three narrow triggers. |
| Stage 8 — Counterexample Finder | Declared domain first. Inside-domain reversal is a failure; outside-domain goes to `scope_notes.md`. |
| Stage 9 — Economic Interpretation | Proposition → Empirical hypothesis → Regression specification. |
| Stage 10 — Manuscript Skeleton | Applied-paper Conceptual Framework section (3.1/3.2/3.3), hypotheses generated from the map. |
| Gate 1 / Gate 3 | Do not fail for low standalone novelty alone. All other checks unchanged. |
