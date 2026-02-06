# Project instructions

These instructions apply to the entire repository unless a more specific `AGENTS.md` exists in a subdirectory.

## Book structure
- The book is authored in Quarto `.qmd` files under `frontmatter/` and `source/`.
- Source content is organized as `source/part-<n>/book-<n>/chapter-<n>.qmd`.
- The build order and canonical list of chapters/appendices is defined in `_quarto.yml` and should be updated when adding or removing files.

## Headings and numbering
- Chapter titles use a level-1 heading (`#`), section titles use a level-2 heading (`##`).
- Section anchors follow the pattern `#sec-<part>-<book>-<chapter>-<section>`.
- Artifact labels include their type in the visible title and use an ID that matches the numbering scheme.

## Artifact standards
- **Equations must be wrapped in a div** so they can be referenced without a visible tag in text. Use this exact format:
  ```
  ::: {#equation-<part>-<book>-<chapter>-<section>-<equation>}
  $$
  ...
  \tag{<part>.<book>.<chapter>.<section>.<equation>}
  $$
  :::
  ```
  Appendices use the same wrapper with their appendix-specific IDs (for example, `#eq-appendix-a-energy`).
- **Figures/plots** use `<figure>` elements with an `id` and include a `<figcaption>` that matches the artifact numbering.
- **Tables** use a `###` heading with the label and anchor (for example, `### Table 1.2.1.1.1 {#table-1-2-1-1-1}`).
- **Text boxes** are blockquotes followed by `{: .definition}` or another class as needed.
- **Code blocks** include a `### Code Block ... {#code-...}` heading and a fenced code block with the proper language.

## References and links
- Use Quarto cross-references (`@id`) for equations, figures, tables, and other artifacts.
- Keep the visible label and numeric identifier consistent with the file location (part, book, chapter, section).

## Styling and formatting
- Prefer consistent blank lines between headings, paragraphs, and artifacts for readability.
- Keep Markdown and HTML consistent with the existing patterns in each chapter.
