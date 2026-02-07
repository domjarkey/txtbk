.onLoad <- function(libname, pkgname) {
  base_family <- getOption("txtbkfigures.base_family")
  if (is.null(base_family)) {
    setup_txtbk_fonts()
  }
}
