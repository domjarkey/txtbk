# Project instructions

These instructions apply to the entire repository unless a more specific `AGENTS.md` exists in a subdirectory.

## Book structure
- Each top-level division is a separate Quarto book project under `books/<book-title>/`.
- Within a book, source content is organised as `source/<part-title>/<chapter-title>.qmd`.
- The build order and canonical list of chapters/parts is defined in each book's `_quarto.yml` and should be updated when adding or removing files.

## Headings and numbering
- Chapter titles use a level-1 heading (`#`), section titles use a level-2 heading (`##`).
- Use Quarto's native numbering for parts, chapters, and sections. Avoid hard-coding numbers in headings, IDs, or captions.
- Use descriptive, stable IDs for sections and artefacts (for example, `#sec-overview` or `#fig-workflow`).
- Frontmatter entries are tagged with `{.unnumbered}` and use lower-case roman numerals (i, ii, iii, iv, ...) in their displayed titles and navigation labels so part numbering begins at Part 1.

## Artefact standards
- **Equations** use Quarto's native equation labels (for example, `$$ ... $$ {#eq-energy}`) so they are numbered automatically.
- **Figures**, **plots**, **tables**, and **code listings** use Quarto's native captioning and labels (`fig-cap`, `tbl-cap`, or listing captions) so numbering is automatic.
- **Text boxes and definitions** use Quarto **callouts** (`note`, `tip`, `important`, `warning`, etc.). Callouts are unnumbered by default.
  - Use a descriptive ID on callouts when they must be referenced (for example, `::: {.callout-note #callout-context}`).
  - Definitions should be callouts with a custom title (for example, `title="Definition: Scope identifier"`).

## References and links
- Use Quarto cross-references (`@id`) for equations, figures, tables, and other numbered artefacts.
- Use standard Markdown links (`[text](#id)`) for callouts and other unnumbered items.
- Keep visible labels free of hard-coded numbers so Quarto controls numbering.

## Styling and formatting
- Prefer consistent blank lines between headings, paragraphs, and artefacts for readability.
- Keep Markdown and HTML consistent with the existing patterns in each chapter.
- **Use standard British English spelling throughout the manuscript, and correct any American spellings you encounter (for example, use "artefact" and "unitalicised").**

## Figure package (txtbkfigures)
- The repository includes a local R package at `r/txtbkfigures` that defines the default ggplot2 theme and scales for textbook figures.
- Load the package in R sessions via `.Rprofile` (already configured) or `pkgload::load_all("r/txtbkfigures")` when working inside the repo.
- Use `theme_txtbk()` and the `scale_txtbk_*()` helpers as the starting point for all plots and diagrams, then customise only when the pedagogical goal requires it.

## Diagram style notes (essentials)
- Prefer a print-first, early-20th-century textbook feel: monochrome ink, serif typography, thin strokes, and boxed frames.
- Keep ornamentation minimal; remove any elements that do not clarify the mathematics or geometry.
- Default to monochrome: use linetype and shape before introducing colour; only add muted colour when shape/linetype are insufficient.
- Favor LaTeX math for labels (e.g., `latex2exp::TeX("$x$")`) and avoid raw ASCII math in axis titles.
- Keep gridlines off by default; if needed, make them faint and sparse.
- Use consistent semantic linetypes (solid for observed, dashed for theoretical, dot-dash for approximations, dotted for construction).
- Always generate figures from code, export PDF + PNG where relevant, and fix random seeds for reproducibility.
