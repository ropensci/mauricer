.onLoad <- function(libname, pkgname){

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
