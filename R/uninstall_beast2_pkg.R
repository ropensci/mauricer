#' Uninstall a BEAST2 package
#' @param name the package's name
#' @return nothing. It does install the BEAST2 package
#' @author Richèl J.C. Bilderbeek
#' @examples
#' library(testthat)
#'
#' # Only install a package on Travis, if BEAST2 is installed
#' # and the package is not
#' if (is_on_travis() &&
#'   is_beast2_installed() &&
#'   curl::has_internet() &&
#'   !is_beast2_pkg_installed("Beasy")
#' ) {
#'   install_beast2_pkg("Beasy")
#'   expect_true(is_beast2_pkg_installed("Beasy"))
#'
#'   uninstall_beast2_pkg("Beasy")
#'   expect_false(is_beast2_pkg_installed("Beasy"))
#' }
#' @export
uninstall_beast2_pkg <- function(name) {
  if (!curl::has_internet()) {
    stop("No internet connection")
  }
  if (isFALSE(is_beast2_pkg_installed(name))) {
    stop("Cannot uninstall absent package")
  }
  # java -cp beast.jar beast.util.PackageManager -add bacter
  system2(
    command = beastier::get_default_java_path(),
    args = c(
      "-cp",
      shQuote(beastier::get_default_beast2_jar_path()),
      "beast.util.PackageManager",
      "-del",
      name
    ),
    stdout = FALSE
  )
}
