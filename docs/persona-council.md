# Persona Council Details (Phase 1)

This file is read by the orchestrator when executing Phase 1 (persona_council).

---

Phase 1 runs **3 to 5 debate rounds** before producing a final proposal. Multiple rounds force the personas to sharpen their critiques and the synthesis to genuinely address them.

## Vision Seeding (ALL rounds)

Prepend to ALL persona prompts in EVERY round (before any other context):

```
VISION: Read vision.md in the project root FIRST. This is the researcher's
original vision and it is immutable — it defines the paper's scope.

Your evaluation MUST answer (include a section "## Scope vs. Vision"):
1. Does this proposal address the FULL scope of the vision, or has it narrowed?
2. If narrowed: is this a justified deepening (richer treatment of fewer elements)
   or an unjustified retreat (concepts dropped because they're hard to prove)?
3. Which vision elements are NOT YET covered? These are research goals, not cuts.
```

## Round structure (3 rounds minimum, up to 5)

For each round:

1. **Practical persona** (prompts/01-persona-practical.md): Evaluates the current proposal. Writes `paper_workspace/persona_practical_round_N.md`.
2. **Rigor persona** (prompts/02-persona-rigor.md): Evaluates the current proposal. Writes `paper_workspace/persona_rigor_round_N.md`.
3. **Narrative persona** (prompts/03-persona-narrative.md): Evaluates the current proposal. Writes `paper_workspace/persona_narrative_round_N.md`.
4. **Synthesis** (prompts/04-persona-synthesis.md): Reads ALL persona outputs from this round plus any prior rounds. Produces an updated `research_proposal.md`.

## Round flow

- **Round 1:** Each persona evaluates the raw task/hypothesis. Synthesis produces initial `research_proposal.md`.
- **Round 2:** Each persona evaluates the Round 1 proposal -- they should be HARDER now, checking whether their Round 1 concerns were actually addressed. Synthesis refines `research_proposal.md`.
- **Round 3:** Each persona evaluates the Round 2 proposal for final sharpening. Synthesis produces the final `research_proposal.md`.

## Context injection for Rounds 2+

Prepend to persona prompts:

```
This is debate round N of up to 5. You have already reviewed this proposal in previous rounds.
Your previous evaluation is in: paper_workspace/persona_<name>_round_<N-1>.md
The proposal was revised after your feedback: paper_workspace/research_proposal.md

Be HARDER this round. Check whether your previous concerns were genuinely addressed
or merely papered over. Raise NEW concerns you missed before. Do not repeat praise
for things already acknowledged.

AMBITION CHECK: Each successive round must EXPAND the proposal's explanatory
reach, not narrow it. "Harder" means "explain MORE of the vision at the same
quality level," not "cut what you can't immediately prove." If a concept from
the vision is missing, your job is to figure out how to include it — not to
accept its absence.
```

## Exit rules

- **ALL THREE accept in Round 3**: Exit. Proposal is ready.
- **Any persona still REJECTS after Round 3**: Extend to Rounds 4 and 5.
- **After Round 5**: Exit regardless. Concerns are documented in round files.
- Do NOT exit before Round 3 even if all accept early.

## Artifacts produced

- `paper_workspace/persona_practical_round_1.md` through `round_N.md`
- `paper_workspace/persona_rigor_round_1.md` through `round_N.md`
- `paper_workspace/persona_narrative_round_1.md` through `round_N.md`
- `paper_workspace/research_proposal.md` (final synthesis)
- `paper_workspace/novelty_assessment.json`
