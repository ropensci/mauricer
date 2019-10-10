#' Checks if a BEAST2 package is already installed.
#'
#' To be able to check this, an internet connection is needed.
#' Without an internet connection, \code{NULL} is returned.
#' @param name BEAST2 package name
#' @return
#' \itemize{
#'   \item \code{TRUE} if the BEAST2 package is installed
#'   \item \code{FALSE} if the BEAST2 package is not installed
#'   \item \code{NULL} if there is no internet connection
#' }
#' @seealso Use \link{is_beast2_ns_pkg_installed}
#'   to see if the NS package is installed without an internet connection
#' @author Richèl J.C. Bilderbeek
#' @examples
#' library(testthat)
#'
#' if (is_beast2_installed() && curl::has_internet()) {
#'   print(
#'     paste(
#'       "Is the Beasy BEAST2 package installed:",
#'       is_beast2_pkg_installed("Beasy")
#'     )
#'   )
#' }
#' @export
is_beast2_pkg_installed <- function(name) {
  if (name == "NS") return(mauricer::is_beast2_ns_pkg_installed())
  if (!curl::has_internet()) return(NULL)
  df <- mauricer::get_beast2_pkg_names()
  df[df$name == name, ]$installed_version != "NA"
}
