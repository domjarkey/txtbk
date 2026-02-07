setup_txtbk_fonts <- function() {
  base_family <- "serif"

  if (requireNamespace("showtext", quietly = TRUE) &&
      requireNamespace("sysfonts", quietly = TRUE)) {
    candidates <- c("Latin Modern Roman", "CMU Serif", "Computer Modern Serif")
    avail <- sysfonts::font_families()
    hit <- candidates[candidates %in% avail]
    if (length(hit) > 0) {
      base_family <- hit[1]
    }
    showtext::showtext_auto(enable = TRUE)
  }

  options(txtbkfigures.base_family = base_family)
  base_family
}

txtbk_base_family <- function() {
  base_family <- getOption("txtbkfigures.base_family")
  if (is.null(base_family)) {
    base_family <- setup_txtbk_fonts()
  }
  base_family
}

theme_txtbk <- function(base_size = 11, base_family = txtbk_base_family()) {
  ggplot2::theme_classic(base_size = base_size, base_family = base_family) %+replace%
    ggplot2::theme(
      panel.border = ggplot2::element_rect(
        colour = "black",
        fill = NA,
        linewidth = 0.6
      ),
      axis.line = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_line(colour = "black", linewidth = 0.4),
      axis.ticks.length = grid::unit(2.2, "pt"),
      plot.title = ggplot2::element_text(
        hjust = 0.5,
        face = "plain",
        margin = ggplot2::margin(b = 6)
      ),
      plot.subtitle = ggplot2::element_text(
        hjust = 0.5,
        margin = ggplot2::margin(b = 6)
      ),
      plot.caption = ggplot2::element_text(
        hjust = 0,
        size = ggplot2::rel(0.9),
        margin = ggplot2::margin(t = 6)
      ),
      axis.title = ggplot2::element_text(face = "plain"),
      legend.title = ggplot2::element_text(face = "plain"),
      legend.text = ggplot2::element_text(face = "plain"),
      legend.key = ggplot2::element_blank(),
      legend.background = ggplot2::element_blank(),
      panel.grid = ggplot2::element_blank(),
      plot.margin = ggplot2::margin(10, 12, 10, 12)
    )
}

txtbk_set_theme <- function(base_size = 11, base_family = txtbk_base_family()) {
  ggplot2::theme_set(theme_txtbk(base_size = base_size, base_family = base_family))
}

scale_txtbk_linetype <- function(...) {
  ggplot2::scale_linetype_manual(
    values = c("solid", "22", "42", "13", "33", "44"),
    ...
  )
}

scale_txtbk_shape <- function(...) {
  ggplot2::scale_shape_manual(
    values = c(1, 0, 2, 5, 6, 7),
    ...
  )
}

scale_txtbk_colour <- function(...) {
  ggplot2::scale_colour_manual(values = c("black", "black", "black", "black"), ...)
}

scale_txtbk_fill <- function(...) {
  ggplot2::scale_fill_manual(values = c("white", "grey85", "grey70", "grey55"), ...)
}
