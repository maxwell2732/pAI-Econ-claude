# Empirical Companion Mode

**From empirical results to the smallest theory that can explain them.**

This document explains the mode for human readers. The operative specification the pipeline
follows is `prompts/mode-empirical-companion.md`; where the two differ, that file governs.

---

## Why the mode exists

The default pipeline is built for open-ended theory development. It widens the parameter
space, looks for special cases, analyzes reversals, adds mechanisms, and pushes the theory
forward through the proposition generator, proof review, and counterexample search.

Applied researchers arrive with a different job. The empirical work is substantially
finished: there are baseline results, mechanism tests, and heterogeneity results. What the
paper needs is a minimal, transparent, verifiable economic model that formalizes those
findings and yields hypotheses corresponding one-to-one with the empirical design.

Running the default pipeline on that input produces a theory paper the researcher did not
ask for.

## The governing principle

> **Constrain scope, not rigor.**

The mode narrows the theoretical search space. It never lowers the standard of proof, and it
never manufactures a conclusion to match a regression coefficient.

## How to invoke it

```text
/mode empirical-companion

我的实证论文发现：

Baseline:
政策 X 显著提高 Y。

Mechanism:
X 通过降低融资约束 M 影响 Y。

Heterogeneity:
效果主要集中在初始融资约束较高的企业。

请构建一个最小理论模型，为 baseline、mechanism 和 heterogeneity results
分别推出对应 hypotheses。
```

Equivalent forms:

```text
/mode empirical-companion --task path/to/empirical-brief.txt

/theoretical-economics-claude-skill "
mode: empirical-companion
...
"
```

## What the intake asks for

Stage 0-EC parses eight fields from the brief:

```text
Empirical question:
Baseline result:
Proposed mechanism:
Mechanism test:
Heterogeneity results:
Key hypotheses to rationalize:
Preferred theoretical tradition, if any:
Scope exclusions:
```

The first, second, and sixth are required. Missing required fields draw at most three
questions, bundled into a single message. The result is `outputs/empirical_scope.md` with
status `LOCKED` — the scope contract every later stage works inside.

## The workflow

```text
Empirical scope lock
        ↓
Canonical matching
        ↓
Minimal model
        ↓
Empirical–theory mapping
        ↓
Propositions
        ↓
Proof / consistency check
        ↓
Empirical Alignment Gate
        ↓
Theory section
```

## The Minimal Model Principle

> Use the smallest coherent economic model capable of generating the target hypotheses.

Every model element answers two questions: which empirical result does it correspond to, and
which target hypothesis becomes underivable without it. Two "none" answers means the element
does not enter the model. `outputs/minimality_check.md` records the answers:

| Model element | Empirical role | Necessary? |
|---|---|---|
| ability heterogeneity | heterogeneity result | yes |
| information friction | mechanism test | yes |
| habit formation | none | no → removed |

Model complexity is not treated as a quality signal.

## The empirical–theory map

`outputs/empirical_theory_map.md` is the mode's central artifact:

| Empirical result | Economic mechanism | Model primitive | Proposition | Testable hypothesis |
|---|---|---|---|---|
| Baseline effect | ... | ... | P1 | H1 |
| Mechanism result | ... | ... | P2 | H2 |
| Heterogeneity result | ... | ... | P3 | H3 |

The finished manuscript's theory section and empirical section are readable against this
table row by row.

## Scope notes

Findings outside the paper's main line go to `outputs/scope_notes.md`: parameter-domain
reversals, corner cases, alternative mechanisms, extensions, equilibrium complications, and
additional propositions. They are still found, still checked, and still recorded. They enter
the main text only when they overturn a target hypothesis, materially affect identification,
or the researcher asks for them.

## Gate EC — Empirical–Theory Alignment

Runs after Stage 6 and Gate 3, before the checkpoint. Six checks:

| Check | Question |
|---|---|
| EC1 | Does every main proposition correspond to an empirical result? |
| EC2 | Is every target hypothesis derivable from the model? |
| EC3 | Is there any mechanism serving no empirical result? |
| EC4 | Has the model taken on assumptions beyond what the paper needs? |
| EC5 | Does the heterogeneity proposition match the empirical interaction? |
| EC6 | Does the mechanism proposition concern the same object the mechanism test measures? |

Verdicts are PASS / CONDITIONAL PASS / FAIL, following the pipeline's standard gate protocol.
EC6 is the one check that cannot be downgraded: if the empirical result is claimed to test
mechanism M while the model's M is a different latent object, the gate fails.

## Rigor is preserved

**Target hypotheses are targets, not truths.** If the researcher expects `X increases Y` and
the model yields `the sign depends on parameter values`, the pipeline says so and offers the
minimal sufficient condition:

```text
TARGET HYPOTHESIS NOT DERIVED — H2

What the model actually yields: sign depends on theta
Minimal sufficient condition:   theta > theta*
Economic meaning:               ...
Support:                        EMPIRICAL / THEORETICAL / NONE FOUND

  ACCEPT CONDITIONAL   ADD ASSUMPTION   REVISE EMPIRICS
```

The researcher decides. The pipeline never adopts the condition on its own.

**No assumption laundering.** Monotonicity, convexity, single-crossing, parameter
restrictions, functional forms, and distributional assumptions cannot be introduced quietly
to produce the expected sign. Any assumption added after the scope lock is tagged
`ADDED-FOR-TARGET` in the assumption audit, requires an economic justification that holds
independent of the target it serves, and is checked at Gate EC.

## The checkpoint

Before proof sketching, HiL-5 is presented as the EMPIRICAL COMPANION CHECKPOINT, showing
each empirical result beside the model mechanism, the proposition, and the hypothesis. The
researcher answers `APPROVE`, `EDIT`, or `RETURN TO MODEL`.

## The theory section

Stage 10 produces a section sized for an applied paper:

```text
3. Conceptual Framework

3.1 Economic Environment
3.2 Model
3.3 Predictions

Hypothesis 1: Baseline effect
Hypothesis 2: Mechanism
Hypothesis 3: Heterogeneity
```

Target length is 3–5 pages, proofs in an appendix, no boundary-case section, and no welfare
section unless the empirical paper makes a welfare claim.

## Relationship to the default mode

`theory-development` is unchanged by this mode's existence. Counterexample search, the
novelty gate, proposition generation, numerical simulation, and the persona council all keep
their full default behavior. Every empirical-companion instruction sits behind an explicit
mode guard in `state.json`.

The two modes share the same canonical matching, assumption audit, proof integrity, and
human-in-the-loop principles.

## See also

- `prompts/mode-empirical-companion.md` — the authoritative mode contract
- `prompts/ec-00-empirical-scope-lock.md` — Stage 0-EC
- `prompts/ec-empirical-theory-map.md` — the map and the minimality check
- `prompts/gate-ec-empirical-alignment.md` — Gate EC
- `docs/mode-empirical-companion-tests.md` — the three verification tests
