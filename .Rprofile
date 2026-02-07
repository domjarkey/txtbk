local({
  pkg_path <- file.path(getwd(), "r", "txtbkfigures")
  if (!dir.exists(pkg_path)) {
    return(invisible(NULL))
  }

  if (requireNamespace("txtbkfigures", quietly = TRUE)) {
    suppressPackageStartupMessages(library(txtbkfigures))
    return(invisible(NULL))
  }

  if (requireNamespace("pkgload", quietly = TRUE)) {
    pkgload::load_all(pkg_path, quiet = TRUE)
    return(invisible(NULL))
  }

  message(
    "txtbkfigures package not loaded. Install pkgload or install the package locally."
  )
})
