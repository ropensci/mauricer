.onLoad <- function(libname, pkgname) { # nolint cannot use snake_case here

  suppressPackageStartupMessages(
    lapply(
      c("beastier"),
      library,
      character.only = TRUE,
      warn.conflicts = FALSE
    )
  )
  invisible()
}
