# author_style_guide.md

## Purpose

This guide is for an AI research-writing agent that drafts ML theory, optimization, probability, and mathematical ML papers.

The goal is **not** just to sound “academic.” The goal is to do it by producing papers that read like they were written by a rigorous human researcher with taste, compression, and judgment.

A strong paper is not merely grammatical, polished, or citation-rich. A strong paper is one where:

- the reader can state the main result in one sentence after reading the abstract;
- the introduction makes the problem, surprise, and stakes immediately legible;
- theorem statements are reusable and clean;
- related work gives a map of the field rather than a bibliography dump;
- the prose distinguishes clearly between what is proved, observed, conjectured, and merely suggested;
- the document never sounds more certain than the evidence warrants.

This guide is deliberately stricter than normal “academic writing” advice because LLMs reliably produce papers that are locally fluent but globally empty, structurally repetitive, and epistemically inflated.

---

## What good writing is in ML theory

Good ML theory writing is a three-way alignment:

1. **Reader alignment:** the text is organized for the reader’s understanding, not for the writer’s generation process.
2. **Claim alignment:** the strength of each sentence matches the strongest supporting evidence.
3. **Narrative alignment:** the paper has one central arc, and each section pushes that arc forward.

### Canonical writing principles worth copying

> “The fundamental purpose of scientific discourse is not the mere presentation of information and thought, but rather its actual communication.”  
> — Gopen & Swan, *The Science of Scientific Writing*  
> Source: https://www.usenix.org/sites/default/files/gopen_and_swan_science_of_scientific_writing.pdf

> “Put your readers first.”  
> — Simon Peyton Jones, *How to Write a Great Research Paper*  
> Source: https://simon.peytonjones.org/great-research-paper/

> “This paper is not a comprehensive survey but is rather a tutorial.”  
> — Roman Vershynin, *Estimation in High Dimensions: A Geometric Perspective*  
> Source: https://www.math.uci.edu/~rvershyn/papers/estimation-tutorial-original.pdf

> “simple and easily verifiable hypotheses”  
> — Joel Tropp, *User-Friendly Tail Bounds for Sums of Random Matrices*  
> Source: https://authors.library.caltech.edu/records/9kfkt-ajz08

> “On the first glance spectral clustering appears slightly mysterious”  
> — Ulrike von Luxburg, *A Tutorial on Spectral Clustering*  
> Source: https://graphics.stanford.edu/courses/cs233-25-spring/ReferencedPapers/Luxburg07_spectral_clustering_tutorial_4488.pdf

These are not stylistic ornaments. They reveal what strong human writing in theory actually does:

- it communicates, rather than merely records;
- it foregrounds the reader;
- it chooses a viewpoint and teaches from it;
- it makes results easy to apply;
- it names the mystery before resolving it.

Still, as a constraint it is rigorous about what is a claim, what a proved result, what a conjecture, and proves all it can to the highest academic standards.

---

## Positive exemplars to imitate

Do **not** imitate a single person’s voice. Instead imitate the structural virtues below.

### 1. Ulrike von Luxburg — *A Tutorial on Spectral Clustering*
**Why it is exemplary:**
- starts from a phenomenon that feels opaque;
- states the confusion explicitly;
- gives several derivations, not just one proof;
- explains advantages and disadvantages without sounding weak;
- writes as if the reader deserves orientation at every step.

**What to imitate:**
- name the mystery;
- resolve it from multiple angles;
- include pros/cons and failure modes;
- make the exposition feel like a guided tour.

### 2. Roman Vershynin — *Estimation in High Dimensions: A Geometric Perspective*
**Why it is exemplary:**
- picks one point of view — geometry — and uses it as the organizing principle;
- moves from intuition to theorem to application cleanly;
- gives concrete examples early;
- keeps the exposition mathematically serious while still accessible.

**What to imitate:**
- choose a unifying mental picture;
- say what the paper is *trying to explain*;
- front-load examples before abstraction hardens.

### 3. Joel Tropp — *User-Friendly Tail Bounds for Sums of Random Matrices*
**Why it is exemplary:**
- theorem statements are made for reuse;
- hypotheses are practical rather than ceremonial;
- the exposition is consciously designed to lower activation energy for readers.

**What to imitate:**
- make statements reusable;
- optimize for “Can another researcher apply this tomorrow?”;
- treat usability as part of rigor.

### 4. Bottou, Curtis, Nocedal — *Optimization Methods for Large-Scale Machine Learning*
**Why it is exemplary:**
- frames methods by the regime in which they matter;
- explains tradeoffs rather than reciting algorithms;
- keeps one eye on theory and one on practice.

**What to imitate:**
- explain which regime the result speaks to;
- connect proofs and asymptotics to actual ML behavior;
- discuss failure regimes explicitly.

### 5. Simon Peyton Jones — *How to Write a Great Research Paper*
**Why it is exemplary:**
- turns writing into a transmission problem;
- emphasizes one key idea, not many equal-weight ideas;
- relentlessly centers the reader.

**What to imitate:**
- identify the one big idea;
- tell the shortest path to that idea;
- do not narrate the writer’s discovery process unless it helps understanding.

---

## Non-negotiable principles

1. **The paper must have one central intellectual spine.**  
   If there are multiple contributions, one must be primary and the others must read as consequences, extensions, or applications.

2. **Every sentence must know its epistemic status.**  
   The draft must distinguish among:
   - proved;
   - derived from prior work;
   - empirically observed;
   - heuristic;
   - conjectural;
   - speculative.

3. **The reader must never be forced to decode internal bookkeeping.**  
   Theorem numbers, assumption nicknames, lemma labels, formula names, and local notation are for the body, not for high-level exposition.

4. **Local fluency does not excuse global incoherence.**  
   A paragraph can be clear and still be serving the wrong paper.

5. **A strong paper compresses.**  
   It does not dump every result, every experiment, every baseline, or every citation into the most visible sections.

---

## Global anti-patterns that make a paper feel AI-generated

These are not vague style complaints. They are concrete failure modes.

### A. Paper-level anti-patterns
- The abstract is a mini-paper.
- The introduction restates the abstract with more words.
- Related work is a flat list of summaries.
- The conclusion re-abstracts the paper instead of adding judgment.
- The paper has many “contributions” but no central claim.
- The document sounds equally confident everywhere.
- The paper uses citations as seriousness markers rather than argumentative support.
- The results are strong, but the paper is too long because the writer treats every sub-result as equally load-bearing.

### B. Section-level anti-patterns
- every paragraph has the same structure;
- every section ends with “our work differs because…”;
- every subsection begins by naming papers rather than questions;
- too many local reminders of theorem numbers, appendix pointers, assumptions, and notation;
- numerical details appear before the reader knows why they matter.

### C. Sentence-level anti-patterns
- “Furthermore / Moreover / Additionally” chains;
- “It is important to note that…”;
- “In recent years…” throat clearing;
- symmetrical hedging everywhere (“may”, “might”, “could”, “potentially”) even when the statement is proved;
- prestige synonyms that add tone but no information;
- noun-pile prose (“performance improvement mechanism characterization”).

### D. Epistemic anti-patterns
- proof-like verbs used for experiments (“we prove empirically”);
- empirical verbs used for theorems (“we observe that Theorem 2 implies…”);
- conjectures narrated like conclusions;
- survey-like breadth with no discriminating judgment;
- references that are unverifiable, suspiciously recent, oddly formatted, or too perfectly aligned with the draft’s needs.

---

## The agent must write shorter papers when the result is already conceptually mature

One recurring LLM failure is this:

> the result is good, but the paper is too long, because the model writes as if every explanation, every citation, and every experiment deserves equal foregrounding.

### Compression rules

- If the main theorem can be stated clearly in 2–3 sentences, the abstract must not read like a section summary.
- If the proof idea has one key move, the introduction should foreground that move rather than enumerate all sub-results.
- If a result is conceptually close to well-established literature, spend fewer words re-explaining the entire field.
- If an experiment only validates a theorem’s qualitative claim, do not write a benchmark paper around it.
- If the claim is narrow, let the paper be narrow. Do not widen the rhetorical frame to make it look bigger.

### Negative heuristic
If a reader can delete 20–30% of the prose without losing the main theorem, proof idea, literature placement, or experimental punchline, the draft is overgrown.

---

## Style of an excellent ML theory abstract

## The job of the abstract
An abstract should do exactly five things:

1. state the problem;
2. state the main answer;
3. explain why that answer is non-obvious;
4. give one concrete implication;
5. delimit scope.

It should **not** attempt to certify the whole paper.

### Abstract rules

- Prefer 120–180 words; hard cap around 200 unless there is a very strong reason.
- No theorem, lemma, proposition, conjecture, assumption, or appendix references.
- No internal labels like A1, A6a, Theorem 3, Proposition 4.2.
- Usually no citations.
- Usually no formulas beyond one unforgettable one, and often none.
- At most 1–2 quantitative facts, and only if they are headline facts.
- Never use “Our contributions are threefold” inside the abstract.
- Never include long parenthetical evidence bookkeeping.
- Never mix proof, experiment, and conjecture into one undifferentiated sentence.

### Abstract template
Use this internally, then rewrite into natural prose.

1. We study [problem] motivated by [ML context].
2. A natural expectation is [naive prediction].
3. We show that this expectation is false / incomplete / only partly correct.
4. Instead, [main mechanism, bias, theorem, or viewpoint].
5. This implies [one theoretical or practical consequence].
6. Our analysis applies under [scope], and leaves open [important limit].

### What to optimize for
After reading the abstract, the reader should be able to say:

> “The paper shows that X, not Y, and this matters because Z.”

If the reader instead says:

> “The paper seems to do several sophisticated things involving many lemmas, formulas, and experiments,”

the abstract has failed.

---

## Style of an excellent ML theory related-work section

## The job of related work
Related work should help the reader answer:

- What is already known?
- Which analogy is tempting but wrong?
- Which question is actually open?
- Why is this paper’s angle necessary?

It should not read like a grant application or a BibTeX expansion.

### Related-work rules

- Organize by ideas, regimes, or debates — not by chronological lists.
- Start paragraphs with a conceptual question, not an author name.
- Group papers into camps or functions: foundational, nearest-neighbor, complementary, misleading analogy, orthogonal line.
- Include judgment: what prior work settles, what it leaves open, what it gets right, what it cannot address.
- Do not sell your own theorem in related work.
- Do not put formulas, theorem numbers, or local symbols from your paper into related work unless absolutely unavoidable.
- Do not end every paragraph with “our work differs because…”.
- Do not flatten foundational papers and peripheral papers into the same rhetorical weight.

### Related-work paragraph template

1. State the conceptual cluster.
2. Explain what that cluster established.
3. State the limitation relevant to the present paper.
4. Explain how the current paper differs.

### Litmus test
If a reader removed all the citations and the section became meaningless, the section was never doing conceptual work.

---

## Concrete lints the agent should enforce

### Global lints
- No section should contain more than 2 consecutive paragraphs of the same rhetorical form.
- No paragraph should begin with a connective more than twice in a row across the section.
- No section may be a sequence of citation-led sentences for more than 4 sentences.
- Each major section must contain at least one sentence of authorial judgment.
- Each theorem-heavy section must contain at least one intuition paragraph and one regime/special-case paragraph.

### Abstract lints
- Ban `\\ref`, `Theorem~`, `Lemma~`, `Proposition~`, `Conjecture~`, `Assumption~` in abstract.
- Flag more than 2 parenthetical statements.
- Flag more than 2 explicit numbers.
- Flag more than 1 citation.
- Flag “Our contributions are” in abstract.
- Flag more than 1 displayed or memorable formula.

### Related-work lints
- Flag any paragraph where more than half the sentences begin with citations or author names.
- Flag theorem numbers or formulas from the current paper.
- Flag one-line “related frameworks” paragraphs unless they matter technically.
- Flag repeated endings of the form “we study the complementary setting.”
- Flag sections whose only rhetorical move is “X did A; Y did B; we do C.”

### Epistemic lints
- “prove/show/establish” only for results backed by theorem/proof.
- “observe/find/measure” only for experiments.
- “conjecture/suggest/may indicate” only when uncertainty is real and explicitly marked.
- Ban phrases that erase scope, such as “solves”, “settles”, “fully explains”, unless literally true.

---

## Prompting protocol for the research-writing agent

Before writing prose, the agent must fill the following internal scaffold.

### Claim ledger
For each major claim:
- one-sentence claim;
- epistemic type (proved / empirical / conjectural / heuristic);
- where it is supported;
- what assumptions it uses;
- what a skeptical reader might misunderstand.

### Reader ledger
- What will a first-time reader think the naive prediction is?
- What is surprising?
- Why should an ML theorist care?
- Why should a practitioner care, if at all?
- What is the one sentence they should remember tomorrow?

### Deletion pass
Before finalizing a section, ask:
- If I delete this paragraph, does the paper lose a theorem, a proof idea, a literature distinction, or a crucial interpretation?
- If not, delete it or merge it.

---

## Case study: why the Muon abstract is not a good abstract

Below is the abstract exactly as supplied by the user.

```tex
\begin{abstract}
The Muon optimizer---which replaces the gradient with its polar factor $UV^\top$ (from the SVD $G = U\Sigma V^\top$)---has emerged as a competitive alternative to AdamW for training transformers. The natural prediction from spectral-nuclear duality is that Muon, as spectral-norm steepest descent, biases toward minimum-nuclear-norm solutions in underdetermined regression. We prove this prediction is wrong and characterize Muon's actual implicit bias.

Our contributions are threefold. \textbf{(1) Obstruction and constructive failure.} The nuclear norm is not a Legendre function (Lemma~\ref{lem:non_legendre}): it fails essential strict convexity, blocking the standard Bregman-based implicit bias theorems of Gunasekar et al.\ (2018) and Wu--Rebeschini (2021). We construct explicit counterexamples (Proposition~\ref{prop:failure}, numerical): in 20 of 20 independent underdetermined matrix sensing instances with $m = n = 6$, Muon converges to solutions with nuclear norm $1.57\times$ larger (mean; range $1.29$--$2.02\times$) than the minimum-nuclear-norm interpolant. \textbf{(2) Spectral flattening.} Muon's actual implicit bias is \emph{spectral flattening}---driving singular values toward equality (per-step, under a shared-singular-frame assumption A6a; globally, as a conjecture confirmed in all 9 tested configurations). We prove (Theorem~\ref{thm:perstep}) that under A6a, each polar update maximizes first-order loss decrease (unconditionally, via Von Neumann trace inequality) and spectral entropy increase (conditionally). We conjecture (Conjecture~\ref{conj:global}) that this compounds to maximum spectral entropy solutions globally; this is confirmed across all 9 tested matrix sensing configurations (entropy fraction $\geq 0.999$, mean condition number $4.3\times$ lower than GD). \textbf{(3) Batch scaling.} We derive a critical batch size $\Bcrit^{\mathrm{Muon}} = 2\sigma^2 S(\mu)/r$ governed by the spectral functional $S(\mu) = \sum_{i \neq j} (\sigma_i + \sigma_j)^{-2}$ of the weight matrix (Theorem~\ref{thm:bcrit}). For $B \gg \Bcrit$, the optimal learning rate converges to a \emph{constant plateau}---unlike the linear scaling rule for SGD. On NanoGPT (204 runs, 7 batch sizes), Muon outperforms AdamW at small batch sizes ($B \leq 32$) and underperforms at large ones ($B \geq 64$), consistent with the fixed-magnitude update theory.

We identify a regression-vs-classification dichotomy: Muon produces spectrally flat solutions in regression and spectrally concentrated (max-margin) solutions in classification \citep{FanEtal2025}. Our finding that norm duality does not predict implicit bias for all norm geometries has implications beyond Muon, for any optimizer designed around a novel norm.
\end{abstract}
```

## Diagnosis

This abstract fails in concrete, not vague, ways.

### 1. It is a compressed results section, not an abstract
It tries to carry nearly the full paper: technical obstruction, counterexample, per-step theorem, global conjecture, batch-scaling law, NanoGPT experiments, and regression/classification dichotomy.

### 2. It contains internal bookkeeping that should never be in an abstract
Bad signals:
- `Lemma~\ref{...}`
- `Proposition~\ref{...}`
- `Theorem~\ref{...}`
- `Conjecture~\ref{...}`
- assumption names like `A6a`

An abstract must survive outside the paper. Internal cross-references are a category mistake.

### 3. It mistakes numerical density for rigor
Bad abstract details include:
- “20 of 20”
- `m=n=6`
- `1.57×`
- `1.29--2.02×`
- “all 9 tested configurations”
- `entropy fraction >= 0.999`
- `4.3× lower`
- “204 runs, 7 batch sizes”
- `B <= 32`, `B >= 64`

These are reviewer-audit details, not memory-trace details.

### 4. It contains too much notation too early
The abstract introduces:
- polar factor notation;
- SVD notation;
- a critical batch-size formula;
- a spectral functional;
- threshold notation.

The reader has not yet bought into the paper. Notation is being spent before attention is earned.

### 5. It has no hierarchy of ideas
The real central claim is simple and strong:

> spectral-nuclear duality suggests minimum nuclear norm, but Muon actually favors spectral flattening.

That should be the spine. Everything else should subordinate itself to that sentence.

### 6. It mixes proof, experiment, and conjecture without rhetorical separation
The abstract uses “we prove”, “we construct numerical counterexamples”, “we conjecture”, and “this is confirmed” in a single undifferentiated stream. The statuses are named but not organized.

### 7. “Our contributions are threefold” makes it sound like checklist-writing
This is a classic AI-paper smell. It often marks a draft that is optimizing for coverage rather than emphasis.

### 8. The last sentence changes genre
The final citation to classification-side work makes the abstract feel like it is leaking into related work.

## What should stay
- the naive nuclear-norm expectation;
- the fact that it is wrong;
- the replacement picture of spectral flattening;
- one practical consequence, e.g. different batch-scaling behavior.

## What should move out immediately
- all theorem / lemma / proposition / conjecture labels;
- assumption nicknames;
- most explicit numeric ranges;
- the exact batch-size formula;
- almost all thresholds and run counts;
- the related-work citation in the closing sentence.

## A better version of the same abstract

Muon can be viewed as spectral-norm steepest descent, which makes it natural to expect minimum-nuclear-norm bias in underdetermined matrix regression. We show that this expectation is false. Instead, Muon favors **spectrally flatter** solutions: its updates tend to equalize singular values rather than minimize their sum. We explain why the standard mirror-descent route to nuclear-norm bias does not apply here, and under a shared singular-frame condition we prove a per-step entropy-increase property that formalizes the flattening effect. We also derive a Muon-specific critical batch size, implying that its optimal learning rate saturates rather than following the linear scaling rule familiar from SGD. Synthetic matrix-sensing experiments and NanoGPT runs support these predictions. More broadly, the result shows that norm duality alone need not determine implicit bias for polar or normalized optimizers.

---

## Case study: why the Muon related-work section is flat

Below is the related-work section exactly as supplied by the user.

```tex
\section{Related Work}
\label{sec:related_work}

\paragraph{Muon optimizer.}
\citet{JordanKellerRessel2024} introduced Muon as a practical optimizer for hidden layers of neural networks, updating weights by their polar factor $\polar{G} = UV^\top$ from the SVD $G = U\Sigma V^\top$.
\citet{BernsteinNewhouse2024} identified that this update is precisely \emph{spectral-norm steepest descent}---the solution to $\arg\max_{\|S\|_{\mathrm{op}} \leq 1} \langle G, S \rangle_F$---unifying Muon within the geometry of steepest descent under general norms. We take this identification as our starting point, not a contribution.

\paragraph{Convergence theory for Muon.}
Several concurrent works study the \emph{convergence rate} of Muon.
\citet{MaEtal2026} show that spectral orthogonalization induces a spectral decoupling of the gradient dynamics, yielding condition-number-independent convergence rates for Muon.
\citet{SatoEtal2025} analyze stochastic first-order (SFO) complexity and derive a critical batch size for Muon as a function of target precision $\varepsilon$.
\citet{DavisDrusvyatskiy2025} characterize per-step conditions under which spectral gradient updates reduce the loss faster than standard gradient steps, establishing a per-step improvement criterion.
These works address \emph{convergence rates} and \emph{per-step improvement}; none addresses solution \emph{selection} in the underdetermined setting, which is the focus of our paper.

\paragraph{Implicit bias: classification side.}
\citet{FanEtal2025} establish that Muon converges to the spectral-norm max-margin classifier on linearly separable data---the classification-side implicit bias via a concentration argument.
\citet{GronichVardi2026} extend this to smooth homogeneous neural networks with Nesterov momentum, covering the full Muon implementation.
These works establish the classification-side implicit bias of Muon.
We study the complementary \emph{regression} side (underdetermined linear matrix sensing), where the solution set is an affine manifold and the max-margin geometry does not apply.
The regression-side implicit bias of Muon is open prior to this work.

\paragraph{Implicit bias via mirror descent.}
\citet{Gunasekar2018} showed that steepest descent under a norm $\|\cdot\|$ on underdetermined linear models converges to the minimum-dual-norm solution, provided the update direction is the gradient of a \emph{Legendre} potential.
\citet{WuRebeschini2021} extended this framework to matrix sensing.
\citet{AkhtiamovEtal2026} provide the most recent extension of matrix stochastic mirror descent implicit bias, still requiring Legendre-compatible potentials.
Our Lemma~\ref{lem:non_legendre} shows that the nuclear norm---the natural potential for Muon---is \emph{not} a Legendre function, blocking these frameworks.
This is distinct from prior negative results \citep{GunasekarEtal2017,Arora2019}, which concern deep factorized models rather than direct polar updates.

\paragraph{Batch size scaling and critical batch size.}
\citet{McCandlishEtal2018} introduced the \emph{gradient noise scale} $B_{\mathrm{noise}} = \mathrm{Tr}(\Sigma) / \|\mu\|^2$ and the associated critical batch size for SGD-family optimizers.
\citet{GoyalEtal2017} and \citet{SmithEtal2018} established linear scaling rules for SGD: $\eta^* \propto B$ below $B_{\mathrm{crit}}$.
\citet{SatoEtal2025} derive a Muon-specific $\Bcrit$ from SFO complexity; their formula depends on the target precision $\varepsilon$ and the smoothness constant.
Our Theorem~\ref{thm:bcrit} derives $\Bcrit$ from the \emph{spectral geometry} of the polar map's Jacobian, yielding $\Bcrit^{\mathrm{Muon}} = 2\sigma^2 \Smu / r$ for square matrices---a quantity intrinsic to the weight spectrum and independent of $\varepsilon$.
These are fundamentally different quantities measuring different phenomena.

\paragraph{Spectral properties of optimizers.}
\citet{SoudryEtal2018} proved gradient descent on logistic regression converges to the $\ell_2$-min-norm (max-margin) solution.
\citet{Gunasekar2018} and \citet{LiEtal2018} established nuclear norm minimization for matrix sensing under GD.
Our paper shows that Muon---spectral-norm steepest descent---does \emph{not} minimize nuclear norm in regression (Proposition~\ref{prop:failure}), establishing a fundamental departure from the duality prediction and revealing an orthogonal implicit bias: spectral flattening.
\citet{DavisDrusvyatskiy2025}'s per-step criterion for spectral gradient improvement is complementary: it addresses when each step is beneficial, not which solution is ultimately selected.

\paragraph{Related frameworks.}
\citet{LauEtal2025} develop PolarGrad as a unifying framework for polar-based optimizers.
\citet{XieEtal2026} study NucGD for nuclear-norm-constrained optimization, distinct from our unconstrained setting.
```

## Diagnosis

### 1. It is organized by checklist, not by question
It reads like the writer filled mandatory slots:
- optimizer origin;
- convergence theory;
- classification-side implicit bias;
- mirror descent;
- batch size;
- spectral properties;
- related frameworks.

That is not a literature map. It is a compliance document.

### 2. Every paragraph has the same skeleton
Typical shape:
- cite paper A;
- cite paper B;
- cite paper C;
- final sentence: “none addresses X” or “we study the complementary setting.”

This uniformity is one of the strongest AI-smell markers in technical related-work writing.

### 3. It is too citation-led
Too many sentences start with author names or citations. This makes the section about papers rather than about ideas.

### 4. It contains theorem-selling from the present paper
Bad related-work signals:
- `Our Lemma~...`
- `Our Theorem~...`
- explicit formulas from the current paper;
- proposition-level promotion of the present result.

Related work should position the paper, not run an advertisement for its internal numbering.

### 5. It has almost no evaluative voice
It says what papers do, but rarely says:
- what is now settled;
- what analogy is misleading;
- what prior viewpoint breaks on the present problem;
- why the open gap matters.

### 6. It gives equal rhetorical weight to unequal literatures
Foundational geometry, local-step analyses, classification implicit bias, and peripheral frameworks are all flattened into the same paragraph type.

### 7. The paper’s real conceptual split is present, but hidden
The important split is:
- local / convergence / per-step geometry,
- versus global / solution-selection / implicit-bias geometry.

That is the organizing principle the related-work section should use.

## Better structure
A stronger related-work section would use four conceptual paragraphs:

1. **Muon as spectral-norm steepest descent** and what is known about its local geometry.  
2. **Implicit-bias results for normalized / margin-seeking dynamics**, separating classification from regression.  
3. **Mirror-descent and Legendre-potential intuitions** that would tempt one toward nuclear-norm bias, plus why that route breaks.  
4. **Batch-scaling laws** for SGD-family methods versus Muon-specific geometry.

Each paragraph should answer a question, not fill a slot.

---

## Rules the agent must follow for introductions, theorems, proofs, and conclusions

### Introduction
The introduction must answer, in this order:
1. What is the problem?
2. Why is the naive view incomplete or wrong?
3. What is the paper’s answer?
4. Why should the reader care?
5. How is the paper organized?

It should contain at least one sentence of the form:
- “One might expect … but …”
- “The natural prediction is …; we show instead that …”
- “What fails is not … but …”

### Theorem statements
- State the object, regime, dependence, and special case cleanly.
- Do not bury the key message under constants.
- If a statement has a simple version and a sharp version, present the simple version first.
- If the theorem is meant to be reused, write for reusability.

### Proof exposition
Proofs must have a visible structure:
- strategy;
- key reduction;
- bottleneck lemma;
- technical closure.

The agent must not treat a proof as a symbolic transcript. It must explain what invariant or idea makes the proof go.

### Conclusion
A conclusion should add judgment.
It should not merely restate the abstract.
It should answer:
- What have we learned?
- What remains unresolved?
- What plausible conjecture or broader implication is worth carrying forward?

---

## Explicit alignment with manuscript-validity concerns

The style guide must enforce a distinction between **local quality** and **global manuscript validity**. A manuscript can be locally fluent and still globally unsound. It can have citations and still misrepresent the literature. It can have execution-backed experiments and still overstate what those experiments establish. This is exactly the distinction emphasized in the user’s uploaded survey draft, which stresses that benchmark success often misses whether the abstract states the contribution accurately, whether the discussion overgeneralizes, and whether the document is “honest about uncertainty.” The same draft also stresses that manuscript validity is global rather than local, and introduces “closure failure” as the document-level error of resolving uncertainty rhetorically before the science is actually resolved.  
Source for these manuscript-validity points: user-uploaded survey draft, pages 20–23. See also the discussion of abstract accuracy, overgeneralization, global coherence, and closure failure in the uploaded PDF.

---

## Final self-audit checklist

Before returning a draft, the agent must check:

### Paper-level
- Can the paper’s main claim be summarized in one sentence?
- Is there exactly one primary intellectual spine?
- Is the paper shorter than the same content would have been in a generic LLM draft?

### Abstract-level
- Is the abstract a memory trace rather than a compressed section list?
- Are there any theorem numbers, proposition numbers, conjecture numbers, assumptions, formulas, or too many numeric facts?
- Can the reader say “X not Y, because Z” after reading it?

### Related-work-level
- Is related work organized by questions or conceptual clusters?
- Does each paragraph contain genuine judgment?
- Are citations supporting ideas rather than replacing them?

### Epistemic-level
- Does each major statement have the right modal force?
- Are proved, observed, conjectured, and suggested claims clearly distinguished?
- Does any sentence sound stronger than its supporting evidence?

### Deletion-level
- Which paragraphs could be deleted without loss? Delete or merge them.
- Which equations are decorative rather than load-bearing? Remove them.
- Which citations are performing seriousness rather than argumentative work? Remove them.

---

## Bottom line

The research-writing agent must never confuse:

- density with depth;
- notation with rigor;
- citation count with scholarship;
- confidence with warrant;
- long papers with strong papers.

The best human-written ML theory papers are selective, opinionated, mathematically honest, and built around a real intellectual spine. The agent should optimize for that standard.
