# Gate 2b — Canonical Fit Gate

## Purpose
This gate checks whether the Canonical Model Matching stage has correctly grounded the research in the appropriate canonical model family, avoided superficial relabeling, and produced a coherent inheritance handoff for Model Primitives.

## Inputs
- `outputs/canonical_model_match.md` — the output of Stage 3b
- `outputs/research_puzzle.md` — the refined research question

## Output
- Write to: `gates/gate-02b-canonical-fit.md`

---

## Gate Checks

Run each check independently. Record the verdict as PASS, WARNING, or FAIL with a one-line reason.

### Check 1 — Relevant Family Coverage
**Question:** Is there a clearly relevant canonical model family that has HIGH fit with the research question but is absent from the candidate list without explanation?

Procedure:
- Read the research puzzle's friction type, agent structure, and information structure
- Check the "When to Use This Model" and "Main Mechanism" sections of ALL HIGH-fit model families in the library
- If a clearly relevant family is absent with no explanation, this is a FAIL
- If a relevant family is mentioned in the excluded section with a credible reason, this is PASS

Human capital / labor check: if the research involves any of the following topics, verify that the corresponding `model_library/human_capital_and_labor/` families were considered:
- Human capital investment → check Becker, Ben-Porath, Mincer
- Returns to education → check Roy, Heckman Selection, Heckman Treatment Effects
- Children's skill development → check Cunha-Heckman, Technology of Skill Formation, Early Childhood Investment
- Automation / AI / labor market → check Task-Based Production (Acemoglu-Restrepo), Automation-Displacement-Reinstatement, Human Capital Adaptation, Directed Technical Change / SBTC
- Occupational sorting → check Roy, Occupational Choice and Comparative Advantage

**FAIL if:** a family with HIGH fit is completely absent from the document with no mention or exclusion rationale.

---

### Check 2 — Superficial Relabeling
**Question:** Does the match document identify whether the proposed model is a superficial relabeling of a classic model, and is the relabeling flag correct?

Procedure:
- Read the relabeling check section of `canonical_model_match.md`
- Verify that the document explicitly addresses the relabeling question (not just implicit)
- If a relabeling flag is raised, verify that the document specifies what new mechanism is required
- If no relabeling flag is raised, verify that the document identifies at least one element that is genuinely new

**FAIL if:** the relabeling check section is absent or gives a yes/no answer without justification.
**FAIL if:** the setup is clearly a direct application of a classic model with no new mechanism, but the document claims otherwise.
**WARNING if:** the new elements listed are minor reinterpretations rather than genuine novel mechanisms.

---

### Check 3 — Fit Justification Quality
**Question:** Does each candidate family have a specific, evidence-based fit rationale (citing model pattern document sections), or are the rationales vague?

Procedure:
- For each candidate family, check that the fit rationale cites a specific section (e.g., "Canonical Economic Question", "When to Use This Model", "Main Mechanism") of the relevant model pattern document
- Vague rationales ("this involves screening") are insufficient; specific rationales ("the researcher proposes that an uninformed principal designs a contract menu — this maps to the Screening template's 'When to Use This Model' condition: [quote]") are required

**FAIL if:** any candidate family has no specific citation to the model pattern document.
**WARNING if:** the rationale is specific but does not address all three key dimensions (friction type, agent structure, information structure).

---

### Check 4 — Primitives Consistency
**Question:** Are the primitives proposed in the handoff block consistent with the chosen canonical model family?

Procedure:
- Read the "Inherit from the canonical model" block in `canonical_model_match.md`
- Cross-check each inherited element against the model pattern document for the baseline family
- Flag any contradiction: e.g., if the baseline is "Screening" but the handoff specifies that the informed party moves first (→ that is Signaling, not Screening)

**FAIL if:** any inherited primitive directly contradicts the standard setup of the claimed canonical family.
**WARNING if:** an inherited element extends beyond the canonical family in a way not explicitly justified.

---

### Check 5 — Human Capital and Labor Family Check (Conditional)
**Question:** If the research involves human capital, labor markets, automation, or AI-labor interaction, were the human_capital_and_labor model families systematically considered?

Procedure:
- If the research puzzle mentions any of: education, training, skills, wages, occupational choice, automation, AI displacement, intergenerational transmission, children's development → this check is ACTIVE
- Verify that at least one human_capital_and_labor family appears in the candidate list, exclusion list, or is discussed in the match document
- If no such family is mentioned despite the research clearly involving human capital or labor questions, this is a FAIL

**FAIL if:** the research clearly concerns human capital or labor economics and no human_capital_and_labor family is mentioned.
**NOT APPLICABLE if:** the research has no human capital or labor component.

---

## Gate Verdict

**PASS:** All 5 checks are PASS or NOT APPLICABLE; at most 1 WARNING.

**CONDITIONAL PASS (proceed with caveat):** 2 or more WARNINGs but no FAILs. Append a `⚠️ CAVEAT:` block to `canonical_model_match.md` documenting the warnings. Proceed to Stage 4.

**FAIL:** Any single check is FAIL.

When a FAIL occurs, output:
```
⚠️  GATE 2b FAILED — Canonical Fit Gate

Failed check: [Check N — Check Name]
Failure reason: [specific reason with evidence from the document]
Severity: [MINOR | MAJOR | CRITICAL]
Recommended action:
  LOOP BACK TO STAGE 3b — re-run Canonical Model Matching with the following correction:
  [specific instruction: e.g., "Add Adverse Selection to the candidate list and justify why it is more/less suitable than Screening"]

To proceed with caveat (accepting the risk), type: PROCEED WITH CAVEAT
To loop back and correct: LOOP BACK TO STAGE 3b
```

---

## Output Format

Write `gates/gate-02b-canonical-fit.md` with:
- Date and stage identifier
- Check-by-check results (verdict + one-line reason for each of the 5 checks)
- Overall gate verdict (PASS / CONDITIONAL PASS / FAIL)
- If FAIL: failure report with recommended action
- If PASS: one-sentence confirmation that Stage 4 may proceed with the recommended baseline
