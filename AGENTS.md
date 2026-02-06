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
- **Text boxes, definitions, figures, plots, tables, and code blocks** must be wrapped in a div with their anchor ID and must not use subheaders.
  - Use `::: {#<id>}` (plus a class like `.definition` for text boxes) to wrap the artifact content.
  - Place the caption below the artifact content inside the same div.
  - Captions are plain paragraphs (no subheader) that include the numbering and optional description, e.g. `Figure 1.1.1.1.1: Description.`.
  - Example:
    ```
    ::: {#figure-1-1-1-1-1}
    <figure>
      ...
    </figure>

    <p class="caption">Figure 1.1.1.1.1: A simple three-stage workflow.</p>
    :::
    ```

## References and links
- Use Quarto cross-references (`@id`) for equations, figures, tables, and other artifacts.
- Keep the visible label and numeric identifier consistent with the file location (part, book, chapter, section).

## Styling and formatting
- Prefer consistent blank lines between headings, paragraphs, and artifacts for readability.
- Keep Markdown and HTML consistent with the existing patterns in each chapter.
