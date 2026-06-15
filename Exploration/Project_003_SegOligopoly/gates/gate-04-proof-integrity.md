# Gate 4: Proof Integrity Gate — Verdict

**Verdict:** CONDITIONAL PASS

**Per-proposition check summary:**

| Proposition | Check 1 (Annotations) | Check 2 (No Contradictions) | Check 3 (Assumption Usage) | Check 4 (FALSE_RISK Contained) | Check 5 (Strategy Coherent) | Check 6 (Lemmas Plausible) |
|------------|---------|---------|---------|---------|---------|---------|
| P_E1 | ✓ | ✓ | ⚠️ | ✓ | ✓ | ✓ |
| P_C1 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| P_C2 | ✓ | ✓ | ⚠️ | ✓ | ✓ | ✓ |
| P_C3 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| P_W1 | ✓ | ✓ | ⚠️ | ⚠️ | ✓ | ✓ |
| P_B1 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |

**Critical issues (FAILs):** None.

**Warnings to address:**

**⚠️ W1 — P_E1, Check 3 (Assumption Usage):** Step 7 uses H2 (interior solution) as a maintained condition but H2 is not listed in `assumption_audit.md` — it was identified as a hidden assumption. The proof explicitly flags this, but the paper must state H2 as a formal parameter restriction in the model setup section. Recommendation: add H2 to the next version of `model_primitives.md` as an explicit assumption before Stage 9. This is flagged for formalization, not a logical error.

**⚠️ W2 — P_C2, Check 3 (Assumption Usage):** Step 1 uses the fact that a_u + a_r − 2K > 0 under A3. The proof correctly derives this from K < K̄ < (a_u + a_r)/2, but this secondary inequality (K̄ < (a_u + a_r)/2 because c > 0 and B > 0) is implicit. The paper should make this explicit: A3 implies both K < K̄ and K < (a_u + a_r)/2. One sentence suffices; not a gap, just needs explicit statement.

**⚠️ W3 — P_W1, Checks 3 and 4 (FALSE_RISK in Step 6):** The FALSE_RISK in Step 6 is correctly identified and a clean proof path is provided ("lost units with positive social value" argument). The FALSE_RISK is contained — Step 6 does not invalidate the direction of the welfare result, only the specific calculation method. The clean proof requires Lemma W2 (fringe produces less total output under segmentation, since Q^{SEG} < Q^{UNI} and dominant firm produces K in both cases). Lemma W2 itself follows directly from step 4, so the logical chain is intact. Recommendation: before Stage 10, write out the Step 6 clean proof explicitly as the two-step argument: (i) Q^{SEG} < Q^{UNI} from step 4; (ii) each unit in (Q^{SEG}, Q^{UNI}) has positive net social value (P_m(x) > c_m^{F'}(x) since P_m = p_m = c_m^{F'} only at equilibrium, and for quantities below equilibrium, demand price exceeds supply price).

**Flagged correction (not a gate failure, but mandatory for Stage 10):**

**P_B1 STATEMENT CORRECTION:** The proof sketch for P_B1 identifies that the Stage 6 statement "As K → K̄, all cross-market effects vanish" is incorrect. The corrected result is: price levels are continuous at K = K̄, but dp_u*/de_r has a jump discontinuity of size c/(2B) at K = K̄ (from −c/(2B) for K < K̄ to 0 for K ≥ K̄). The corrected P_B1 is:

> As K → K̄ from below: p_m* → p_m^{nc} continuously (price levels are continuous). However, dp_u*/de_r is discontinuous at K = K̄: it equals −(a_u + a_r − 2K)/(2B²) → −c/(2B) for K < K̄ and equals 0 for K ≥ K̄. The mechanism switches on abruptly at K = K̄.

This correction must be carried into Stage 8 (counterexample check) and Stage 10 (manuscript).

**Recommended action:** Proceed to Stage 8. Before Stage 10, address the three warnings (W1–W3) and incorporate the P_B1 correction into the proposition list. None of the issues require returning to an earlier stage — they are all refinements to existing correct arguments.
