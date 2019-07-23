#' Install a BEAST2 package
#' @param name the package's name
#' @return nothing. It does install the BEAST2 package
#' @author Richèl J.C. Bilderbeek
#' @examples
#' library(testthat)
#'
#' # Only install a package on Travis,
#' # if BEAST2 is installed and the package is not
#' if (is_on_travis() &&
#'   is_beast2_installed()
#'   && !is_beast2_ns_pkg_installed()
#' ) {
#'   install_beast2_pkg("NS")
#'   expect_true(is_beast2_ns_pkg_installed())
#' }
#' @export
install_beast2_pkg <- function(name) {
  if (is_beast2_pkg_installed(name)) {
    stop("Cannot install installed package")
  }
  # java -cp beast.jar beast.util.PackageManager -add bacter
  system2(
    command = beastier::get_default_java_path(),
    args = c(
      "-cp",
      shQuote(beastier::get_default_beast2_jar_path()),
      "beast.util.PackageManager",
      "-add",
      name
    ),
    stdout = FALSE
  )
}
