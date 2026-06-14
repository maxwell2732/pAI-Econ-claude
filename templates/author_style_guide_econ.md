# Author Style Guide — Theoretical Economics

This guide establishes writing standards for theoretical economics papers produced by the `theoretical-economics-claude-skill` pipeline. It is read during Stage 10 (Manuscript Skeleton) and should be consulted throughout the writing process.

Override this guide by placing your own `*style*` or `*writing*` file in `initial_context/`. Your guide takes priority; this guide fills any gaps your guide does not cover.

---

## Purpose

A good theoretical economics paper does three things simultaneously:

1. **States precisely what is proved, conjectured, or illustrated** — the reader can always tell the epistemic status of any claim.
2. **Tells a story the reader cannot forget** — the central insight is expressed in one sentence that a colleague can repeat at a seminar.
3. **Earns every assumption** — each assumption has an economic justification, not merely a technical one; the author shows they know which assumptions are binding.

---

## Epistemic Status Discipline

This is non-negotiable. Every claim must carry one of these labels (explicitly or unmistakably implicitly):

| Label | Meaning | How to signal |
|-------|---------|---------------|
| **Proved** | Has a complete proof in the paper or appendix | "We prove that..." / "Proposition N establishes..." |
| **Conjectured** | Believed true, proof incomplete or absent | "We conjecture that..." / "We believe, but do not prove..." |
| **Illustrated** | Shown in a special case or example, not in full generality | "In the two-agent case, we show..." / "This is illustrated by..." |
| **Claimed** | Asserted without proof or supporting example | Avoid in published work; use only in sketches with explicit caveat |
| **Borrowed** | Taken from prior literature | "[Author, year] show that..." with citation |

Never write "it can be shown" without immediately saying who shows it. Never say "clearly" or "obviously" before a claim that requires a proof step.

---

## What Good Economic Writing Is

### The Reader-Claim-Narrative Triangle

At every level — sentence, paragraph, section, paper — ask:
- **Reader:** What does this reader know? What do they need to know to follow the next step?
- **Claim:** What exactly is being asserted, and at what epistemic level?
- **Narrative:** How does this claim advance the central story of the paper?

If any corner of the triangle is broken, the writing fails even if the math is correct.

### The One-Sentence Test

A strong theoretical economics paper can be summarized in one sentence:

> "Under incomplete information, competitive screening leads to underprovision of high-quality goods relative to the first best, and the distortion increases in the degree of type dispersion."

If you cannot write this sentence for your paper, the paper lacks a spine. Write this sentence first; everything else is scaffolding around it.

### Compression as a Signal of Understanding

Strong papers compress. They say in three equations what a weaker paper says in thirty. If you find yourself repeating a step, you are missing an abstraction. If you find yourself restating an assumption you already introduced, you are not trusting your reader.

---

## Positive Exemplars

These papers demonstrate structural virtues worth emulating. Note what to learn from each.

### Myerson (1981) — *Optimal Auction Design*

**What to learn:** The paper introduces the revelation principle in one sentence, derives the optimal mechanism in closed form, and interprets every term economically. There is no wasted notation. Every variable serves exactly one role.

**Structural virtue:** The paper's central insight (expected revenue = virtual surplus) is stated in the body, not buried in a proof. The proof is an appendix.

### Akerlof (1970) — *The Market for Lemons*

**What to learn:** A profound result from a two-type example. The paper never tries to prove the most general version; it proves the simplest version clearly and explains why the insight generalizes.

**Structural virtue:** The "so what" is stated before the model is set up. The reader knows why the result matters before they know the formal setting.

### Milgrom & Roberts (1990) — *Rationalizability, Learning, and Equilibrium*

**What to learn:** Clean separation of model, assumptions, and results. Each assumption is stated, numbered, named, and given a one-sentence economic interpretation. The authors never hide behind technical conditions.

**Structural virtue:** Assumptions appear as a named list *before* the main results, so the reader can assess them independently of the argument.

### Tirole (1988) — *The Theory of Industrial Organization* (representative chapters)

**What to learn:** Economic intuition precedes every formal result. After each proposition, Tirole writes a paragraph explaining the mechanism in plain language. The math is a formalization of an idea the reader already understands.

**Structural virtue:** Every result has a "discussion" paragraph that explains the economic mechanism, which assumptions drive it, and what breaks if those assumptions are relaxed.

### Diamond & Dybvig (1983) — *Bank Runs, Deposit Insurance, and Liquidity*

**What to learn:** A model so clean that the equilibrium multiplicity is obvious from inspection. The paper's contribution is the *question*, not the technique. The authors chose their model to make the mechanism transparent.

**Structural virtue:** The model is introduced in a way that makes the result unsurprising in retrospect — the setup is designed to illuminate, not to impress.

---

## Non-Negotiable Principles

### 1. Central Intellectual Spine

Every paper has a single main result. Everything else is in service of that result: assumptions justify it, examples illustrate it, extensions generalize it, comparisons position it. If a section does not serve the main result, cut it.

### 2. Assumption Motivation Before Use

State an assumption, give its economic justification, and *then* use it. Never write "Assume X" without a following sentence of the form "This captures the idea that..." or "This is standard because...". The reader should know why the assumption is present before they encounter it in a proof.

### 3. No Internal Bookkeeping in the Exposition

Do not write "As we will show in Section 4" or "As established above" unless absolutely necessary for navigation. The paper should read as if it unfolds naturally, not as if it is managing a filing system.

### 4. Distinguish the Model from the World

The model is not the world. Results proved in the model should be stated as properties of the model. Economic interpretation translates model results to potential insights about the world. Maintain this distinction explicitly:

> *In the model,* the principal's expected payoff is maximized by a deterministic contract. *This suggests that* deterministic compensation schemes may be robust to the class of information structures studied here.

### 5. Strong Papers Defend Their Assumptions

After proving the main result, address: Which assumptions are necessary? What happens if you relax each one? A result that holds only under very restrictive conditions should say so clearly. A result that is robust to many relaxations should highlight this.

---

## Vocabulary Rules

### Mathematics
- Use standard notation for common objects: $\mathbb{R}$, $\Delta(X)$ (probability simplex), $\mathcal{F}$ (sigma-algebra)
- Define all notation at first use; collect key notation in a table if there are more than ten symbols
- Prefer $\sup$ over $\max$ unless you have proved the maximum is attained

### Economic Objects
- **Mechanism:** a tuple specifying messages, outcomes, and transfers
- **Equilibrium:** always specify the equilibrium concept (Nash, SPE, BNE, PBE, etc.)
- **Efficient:** always specify relative to what benchmark (first-best, second-best, constrained)
- **Surplus:** specify who captures it and from what benchmark it is measured

### Attribution
- Cite the original source for every result you use, not a textbook that also cites it
- If the result is standard (e.g., Kakutani's fixed-point theorem), one citation suffices; do not repeat it at each use
- If you improve or generalize a result, say exactly how: "We extend [Author, year] by allowing..."

---

## Anti-Patterns

Avoid these patterns that weaken economic papers:

| Anti-pattern | Problem | Fix |
|---|---|---|
| "It is easy to show that..." | Readers cannot verify; appears lazy | Either prove it or say "we omit the proof" |
| "Under mild regularity conditions..." | Vague; hides assumptions | State the conditions explicitly |
| "The intuition is clear." | Patronizing; skips the work | Write the intuition |
| "This is left for future work." | Acceptable once; suspicious three times | Include or cut |
| Propositions without economic discussion | The math does not speak for itself | After every proposition: one paragraph of interpretation |
| Assumptions without motivation | Reader cannot assess them | Every assumption: one sentence of justification |
| Related work that only lists papers | Shows no understanding | Related work should explain how each cited paper differs |

---

## Self-Audit Checklist

Before finalizing any section:

- [ ] Every claim is labeled: proved / conjectured / illustrated / borrowed
- [ ] Every assumption is stated, numbered, and given a one-sentence economic justification
- [ ] Every proposition is followed by an economic interpretation paragraph
- [ ] The one-sentence summary of the paper appears in the abstract and introduction
- [ ] No notation is used before it is defined
- [ ] The equilibrium concept is specified every time a result refers to equilibrium
- [ ] Welfare / efficiency claims specify the benchmark
- [ ] Related work explains differences, not just existence, of prior papers
- [ ] Proof steps do not contain logical jumps larger than "by standard arguments" when cited

---

*Developed by Chen Zhu, Xiaolu Wang, and Weilong Zhang (pAI-Econ-claude). Based on pAI/MSc writing standards (Abdelmoneum, Beneventano, Poggio — MIT + Perseus Labs). Adapted for theoretical economics.*
