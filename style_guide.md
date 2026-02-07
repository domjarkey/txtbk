# Measurement, Abstraction, and Information in the Natural World — Style Guide  
**File:** `style_guide.md`  
**Status:** Living document (normative unless explicitly marked “advisory”)

---

## 1. Purpose and Scope

This document codifies the stylistic, structural, and editorial conventions used throughout *Measurement, Abstraction, and Information in the Natural World*. It is intended for all contributors, editors, and collaborators working on the manuscript.

---

## 2. High-Level Philosophy

### 2.1 A Living Textbook
- The book is a **work in progress** by design.
- It is intended to function simultaneously as:
  - Course material (linear, guided reading)
  - A reference text (nonlinear, selective consultation)
- Redundancy is avoided at the global level, but **local self-containment** is preserved wherever feasible.

### 2.2 Reader Model
The book is written for:
- Advanced undergraduates
- Beginning graduate students
- Independent readers with strong mathematical or physical backgrounds

The text must:
- Be rigorous without being brittle
- Be conceptual without being vague
- Prefer structural clarity over rhetorical flourish
- Keep high standards of literary elegance, academic seriousness, and erudition, avoiding cliche or cheap "pop science" language
- Demand thoughtful engagement from the reader by delving deeper into conceptual and interpretive ambiguities to unearth the underlying connections and symmetries between all of the broad topics covered in this book

## 3 Structure

### 3.1 Project Structure

The textbook is to be treated as a volume containing multiple books. Each book is organised into **parts** and **chapters**. Each chapter contains numbered sections and learning artifacts. Quarto assigns the numbering automatically, so headings and captions should not include hard-coded numbers.

### 3.2 Artifacts

Artifacts are various types of additions to the text, and are of the following types:
- **Code blocks** present structured snippets that illustrate a concept or a workflow.
- **Plots** and **figures** provide visual summaries; plots emphasise data trends, while figures depict diagrams or layouts.
- **Tables** highlight structured comparisons or checklists.
- **Callouts** highlight key takeaways, contextual notes, and definitions. Callout tips should be used for definitions of technical terms. If used for a definition, the title should begin with "Definition:", and in the text of the callout the defined term should be underlined. Callout notes or callout tips can be used for text boxes where the content is important or interesting, but may interrupt the natural flow of the main body of the text.
- **Equations** summarise mathematical relationships used in proofs or derivations.
- **Epigraphs** introduce a chapter or section with a styled quotation, and **quotes** insert a styled quotation within the flow of text. Use `.epigraph` or `.quote` wrappers and place the attribution after a long dash in a paragraph with the `.attribution` class so it renders unitalicised.

### 3.3 Chapter Structure
Chapters should begin with an epigraph.
- They may be:
  - Literary
  - Historical
  - Philosophical
- Epigraphs should:
  - Illuminate the *theme* of a chapter or arc
  - Not merely decorate it
 
 Longer or more poetic epigraphs are acceptable at the beginning of parts.
 
 Generally chapters should come in pairs, first a "content" chapter introducing new material and concepts, followed by an "exercise" chapter in which this new material is reinforced with mathematical problems, short or extended response questions, and discussion topics. Fully worked solutions and thorough example responses to each exercise should be given directly after the exercise for the ease of the reader.

## 4. Appendices

### 4.1 Purpose
Appendices exist to:
- Preserve mathematical rigor
- Offload technical derivations
- Support readers needing additional preparation in pre-requisite topics

They should not disrupt the main pedagogical flow. They may be of any length so as to exhaustively include all necessary information or full mathematical proofs that may be of interest to the curious reader.

## 5. Quotations and Historical Claims

### 5.1 Accuracy Requirement
At the end of any response or chapter containing:
- A **direct quotation**
- A **specific historical anecdote**
- A **claimed opinion of a historical figure**

The author must:
- Verify the quote or claim
- Cite a source where possible

### 5.2 Unverified Material
- Apocryphal or uncertain quotes may be used **only if clearly marked as such**.
- Paraphrasing is acceptable and often preferred.

If a quote cannot be confirmed, it must be rewritten or removed.

## 6. Tone and Register

### 6.1 Mathematical and Physical Discourse
- Use standard disciplinary language.
- Do not oversimplify at the expense of correctness.
- Avoid unnecessary formalism where conceptual clarity suffices.

### 6.2 Authorial Voice
- Confident but not didactic
- Precise but not pedantic
- Willing to acknowledge open questions and unresolved debates
