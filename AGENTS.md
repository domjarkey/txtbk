# Project instructions

These instructions apply to the entire repository unless a more specific `AGENTS.md` exists in a subdirectory.

## Book structure
- Each top-level division is a separate Quarto book project under `books/<book-title>/`.
- Within a book, source content is organized as `source/<part-title>/<chapter-title>.qmd`.
- The build order and canonical list of chapters/parts is defined in each book's `_quarto.yml` and should be updated when adding or removing files.

## Headings and numbering
- Chapter titles use a level-1 heading (`#`), section titles use a level-2 heading (`##`).
- Use Quarto's native numbering for parts, chapters, and sections. Avoid hard-coding numbers in headings, IDs, or captions.
- Use descriptive, stable IDs for sections and artifacts (for example, `#sec-overview` or `#fig-workflow`).
- Frontmatter entries are tagged with `{.unnumbered}` and use lower-case roman numerals (i, ii, iii, iv, ...) in their displayed titles and navigation labels so part numbering begins at Part 1.

## Artifact standards
- **Equations** use Quarto's native equation labels (for example, `$$ ... $$ {#eq-energy}`) so they are numbered automatically.
- **Figures**, **plots**, **tables**, and **code listings** use Quarto's native captioning and labels (`fig-cap`, `tbl-cap`, or listing captions) so numbering is automatic.
- **Text boxes and definitions** use Quarto **callouts** (`note`, `tip`, `important`, `warning`, etc.). Callouts are unnumbered by default.
  - Use a descriptive ID on callouts when they must be referenced (for example, `::: {.callout-note #callout-context}`).
  - Definitions should be callouts with a custom title (for example, `title="Definition: Scope identifier"`).

## References and links
- Use Quarto cross-references (`@id`) for equations, figures, tables, and other numbered artifacts.
- Use standard Markdown links (`[text](#id)`) for callouts and other unnumbered items.
- Keep visible labels free of hard-coded numbers so Quarto controls numbering.

## Styling and formatting
- Prefer consistent blank lines between headings, paragraphs, and artifacts for readability.
- Keep Markdown and HTML consistent with the existing patterns in each chapter.
