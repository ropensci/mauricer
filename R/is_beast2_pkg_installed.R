#' Checks if a BEAST2 package is already installed
#' @param name BEAST2 package name
#' @return TRUE if the BEAST2 package is installed
#' @author Richèl J.C. Bilderbeek
#' @examples
#'   library(testthat)
#'
#'   if (is_beast2_installed()) {
#'     print(
#'       paste(
#'         "Is the NS BEAST2 package installed:",
#'         is_beast2_pkg_installed("NS")
#'       )
#'     )
#'   }
#' @export
is_beast2_pkg_installed <- function(name) {
  df <- mauricer::get_beast2_pkg_names()
  df[df$name == name, ]$installed_version != "NA"
}

#' Obsolete function to checks if a BEAST2 package is already installed.
#' Use \link{is_beast2_pkg_installed} instead
#' @param name BEAST2 package name
#' @return TRUE if the BEAST2 package is installed
#' @author Richèl J.C. Bilderbeek
#' @export
mrc_is_installed <- function(name = NA) {
  stop(
    "'mrc_is_installed' is deprecated, use 'is_beast2_pkg_installed' instead"
  )
}
