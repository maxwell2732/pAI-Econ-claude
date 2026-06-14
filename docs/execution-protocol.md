# Phase Execution Protocol Details

This file is read by the orchestrator when executing any phase. Read it once at the start of the pipeline run to understand the multi-pass protocol.

---

## Pass limits per phase

| Phase | Min passes | Max passes | Rationale |
|-------|-----------|-----------|-----------|
| persona_council | 1 | 1 | Already has 3 internal debate rounds |
| literature_review | 2 | 5 | Web search is slow; resume catches timeouts |
| brainstorm | 2 | 5 | Deeper exploration improves approach quality |
| formalize_goals | 2 | 5 | Validation scripts need verification passes |
| research_plan_writeup | 2 | 3 | Short phase, 2 passes ensure completeness |
| math_literature | 2 | unbounded | Theory search depth matters |
| math_proposer | 2 | unbounded | Claim graph quality improves with iteration |
| math_prover | 2 | unbounded | Proofs often need multiple attempts |
| math_verifier | 2 | unbounded | Verification thoroughness is critical |
| experiment_design | 2 | 5 | Design benefits from refinement |
| experimentation | 2 | unbounded | Experiments may need reruns |
| experiment_verify | 2 | unbounded | Verification thoroughness matters |
| track_merge | 2 | 3 | Summary quality improves with review |
| verify_completion | 1 | 1 | Single assessment is sufficient |
| formalize_results | 2 | 5 | Results synthesis benefits from review |
| duality_check | 1 | 1 | Single check is sufficient |
| resource_prep | 2 | 3 | Resource gathering may timeout |
| writeup | 12 | 12 | 6 passes per cycle (outline-sections-compile-fix), minimum 2 full cycles |
| proofreading | 2 | 5 | Catching more issues each pass |
| reviewer | 1 | 1 | Single review is sufficient |
| persona_post_review | 1 | 1 | 2 internal debate rounds, then Narrative Architect veto check |

## RESUME prompt template (pass 2+)

```
RESUME (pass {N}/{max}): You are continuing work on the {phase_name} phase.

Previous pass artifacts are already in the workspace at: {workspace_path}

IMPORTANT: Do NOT restart from scratch. Do NOT re-execute the Process steps
from the beginning. Instead:

1. READ all artifacts you produced in previous passes (they are already on disk)
2. CHECK completeness: are all required outputs present? Are they thorough?
3. If INCOMPLETE: identify exactly what is missing and produce ONLY that.
   Do not regenerate content that already exists and is good.
4. If COMPLETE but improvable: make targeted improvements. Do not rewrite
   from scratch -- edit specific sections that need strengthening.
5. SAVE updated artifacts. When refining, preserve the existing structure.

SKIP any Process steps from the prompt below that you already completed in
previous passes. Go directly to what needs work.

Required outputs for this phase: {list of required artifacts}
```

For theory and experiment track phases with unbounded max passes, keep looping until the subagent explicitly reports completion OR until artifacts stop changing between passes (stall detection: if artifacts are identical to previous pass, stop).

## Output validation checklist

After ALL passes complete for a phase, check that expected output files exist:

- **persona_council**: `paper_workspace/research_proposal.md`
- **literature_review**: `paper_workspace/literature_review.md` AND `paper_workspace/novelty_flags.json`. If `literature_review.md` exists but `novelty_flags.json` does NOT, or if fewer than 15 citations, the review is INCOMPLETE -- re-spawn with RESUME prefix.
- **brainstorm**: `paper_workspace/brainstorm.json`. If only `brainstorm_partial.md` exists, INCOMPLETE -- re-spawn.
- **formalize_goals**: `paper_workspace/research_goals.json` AND `paper_workspace/track_decomposition.json`
- **theory track**: `math_workspace/claim_graph.json` after math_proposer; `math_workspace/checks/` after math_verifier
- **experiment track**: `experiment_workspace/experiment_plan.json` after design; `experiment_workspace/results/` after run
- **verify_completion**: `paper_workspace/verify_completion.json` -- read `recommendation` field for routing
- **formalize_results**: `paper_workspace/formalized_results.json`
- **resource_prep**: `paper_workspace/resource_inventory.tex`
- **writeup**: `paper_workspace/final_paper.tex`
- **proofreading**: `paper_workspace/final_paper.tex` (revised) + `paper_workspace/copyedit_report.tex`
- **reviewer**: `paper_workspace/review_verdict.json`

If a critical artifact is missing, print a warning. Do not hard-fail; some phases operate in degraded mode.
