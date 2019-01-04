#' Install a BEAST2 package
#' @param name the package's name
#' @return nothing. It does install the BEAST2 package
#' @author Richel J.C. Bilderbeek
#' @examples
#'   install_beast2_pkg(name = "NS")
#' @export
install_beast2_pkg <- function(name) {
  if (mrc_is_installed(name)) {
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

#' Obsolete function to install a BEAST2 package.
#' Use \link{install_beast2_pkg} instead
#' @param name the package's name
#' @return nothing. It does install the BEAST2 package
#' @author Richel J.C. Bilderbeek
#' @export
mrc_install <- function(name = NA) {
  stop("'mrc_install' is deprecated, use 'install_beast2_pkg' instead")
}
