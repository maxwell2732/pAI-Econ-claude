# Explore Mode Details

This file is read by the orchestrator when `mode == "explore"` in state.json. Read it at the start of explore-mode runs.

---

When `mode == "explore"`, the pipeline runs **2-5 exploration cycles** (Phases 1-6), then **1 final standard cycle** (Phases 1-11 using normal prompts) that crystallizes the discoveries into a paper.

**Total cycles: min 3 (2 explore + 1 standard), max 6 (5 explore + 1 standard).**

## Explore cycle routing (replaces standard Phases 5a-5d)

| Standard Phase | Explore Replacement | Prompt |
|---|---|---|
| Phase 5a: theory track (4 agents) | Math Explorer (1 agent, iterative) | `prompts/30-math-explorer.md` |
| Phase 5b: experiment track (3 agents) | Experiment Explorer (1 agent, iterative) | `prompts/31-experiment-explorer.md` |
| -- (does not exist in standard) | Cross-Pollinator (NEW, after 5a+5b) | `prompts/32-cross-pollinator.md` |
| Phase 5d: verify_completion | Explore Evaluator (full persona re-evaluation) | `prompts/33-explore-evaluator.md` |

## Explore cycle flow

```
EXPLORE CYCLE N (of 2-5) — Phases 1-6:
  Phase 1: Persona Council (with accumulated discoveries as context)
  Phase 2: Literature Review
  Phase 3: Brainstorm
  Phase 4: Formalize Goals
  Phase 5a: Math Explorer (prompts/30-math-explorer.md)
  Phase 5b: Experiment Explorer (prompts/31-experiment-explorer.md)
  Phase 5c: Cross-Pollinator (prompts/32-cross-pollinator.md)
  Phase 5d: Explore Evaluator (prompts/33-explore-evaluator.md)
  Phase 6: Formalize Results (prompts/15-formalize-results.md)
    -> CONTINUE: loop to Phase 1 (increment explore_cycle)
    -> CONVERGED: exit explore loop

FINAL STANDARD CYCLE (the +1):
  Phase 1-11: Full standard pipeline using normal prompts
  Takes ALL discoveries from explore cycles as input context
  Produces the final paper
```

## Explore cycle exit rules

- **Cycle 1**: ALWAYS continue (override any CONVERGED verdict). Min 2 exploration cycles.
- **Cycles 2-4**: Honor the Explore Evaluator's verdict. CONVERGED if all 3 personas agree AND one says "strong story."
- **Cycle 5**: ALWAYS converge (override any CONTINUE verdict). Max 5 exploration cycles.

## Context injection for explore cycles 2+ (ESCALATING)

When restarting Phase 1 in an explore cycle (cycle 2+), prepend to ALL persona prompts:

```
EXPLORE MODE -- CYCLE {N} of up to 5

VISION CHECK: Read vision.md FIRST. Compare the current research direction
against the full original vision. Each explore cycle must EXPAND coverage
of the vision, not narrow it. If cycle {N-1} covered 3 of 5 vision goals,
cycle {N} must cover 4 or explain why the 4th is scientifically impossible
(not just hard to prove).

AMBITION ESCALATION: "Harder" means TWO things:
1. QUALITY: Is each claim rigorous? (what you already do)
2. AMBITION: Does the paper explain MORE of the vision than last cycle?
   Are we building toward the landmark paper the researcher envisioned?
   If not, what is still missing and how do we get there?
Narrowing scope is ONLY justified if a concept from the vision has been
scientifically disproven. "We couldn't prove it yet" is NOT justification
for narrowing — it is a research goal for this cycle.

ESCALATION: This is cycle {N}. Be SIGNIFICANTLY HARDER than you were in
cycle {N-1}. Each cycle must raise the bar, not lower it.

This is NOT a fresh start. You are revisiting the research direction after
{N-1} cycles of theory and experiment exploration.

Read these files for accumulated discoveries:
- math_workspace/exploration_log_cycle_*.md (all theory discoveries)
- experiment_workspace/exploration_log_cycle_*.md (all experiment discoveries)
- paper_workspace/cross_pollination_cycle_*.md (theory-experiment connections)
- paper_workspace/explore_evaluation_cycle_{N-1}.md (last evaluation + direction)

BEFORE proposing anything new, answer these questions:
1. Were your cycle {N-1} concerns genuinely resolved or just papered over?
2. What is STILL weak about the current research direction?
3. What NEW concerns do you see that you missed before?
4. Which vision elements are STILL not covered? How will this cycle address them?

Do NOT accept because the work is "good enough." Accept ONLY if the story
is genuinely strong and the evidence genuinely supports it. If you would not
stake your professional reputation on this direction, say so and explain why.

Given what we've discovered, your job is to:
a) Identify what is STILL missing or weak — be specific
b) Identify which vision goals are NOT YET covered and propose how to address them
c) Propose the next investigation angle that addresses those weaknesses
d) Flag if we have enough for a strong paper — but ONLY if you would
   personally defend this work at a top venue AND it covers the full vision.
   "Acceptable" is not enough. "Narrow but rigorous" is not enough.
```

## Context injection for the final standard cycle

When starting the final standard cycle (after explore converges), prepend to ALL prompts:

```
FINAL CYCLE -- CRYSTALLIZING DISCOVERIES INTO A PAPER

VISION VERIFICATION: Read vision.md FIRST. Before crystallizing, verify
that the discoveries address the FULL original vision. If any vision goals
are not addressed, they must appear in the paper as explicitly scoped future
work with a concrete plan — not silently dropped. The paper's identity must
match the vision's identity, not a narrowed subset.

The exploration phase is complete. You now have {N} cycles of discoveries.
Your job is to take these discoveries and produce a rigorous, publication-quality paper.

All exploration logs are in math_workspace/ and experiment_workspace/.
Cross-pollination reports are in paper_workspace/cross_pollination_cycle_*.md.
The final explore evaluation is in paper_workspace/explore_evaluation_cycle_{N}.md.

Use the STANDARD prompts (not explore prompts) for this cycle.
Focus on establishing and formalizing the most interesting discoveries.
```

## Experiment execution rule (explore mode)

- **CPU-only, short experiments** (< 30 min, no GPU, standard Python): Run them automatically. Execute with Bash. Don't ask.
- **GPU, long-running, or special hardware**: Ask the human. Print requirements and wait.

## State tracking for explore mode

Add to state.json when mode is "explore":
```json
"mode": "explore",
"explore_cycle": 0,
"explore_max_cycles": 5,
"explore_evaluations": [],
"explore_converged": false
```
