#' Uninstall a BEAST2 package
#' @param name the package's name
#' @return nothing. It does install the BEAST2 package
#' @author Richel J.C. Bilderbeek
#' @export
uninstall_beast2_pkg <- function(name) {
  if (!mrc_is_installed(name)) {
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

#' Uninstall a BEAST2 package
#' @param name the package's name
#' @return nothing. It does install the BEAST2 package
#' @author Richel J.C. Bilderbeek
#' @export
mrc_uninstall <- function(name = NA) {
  stop("'mrc_uninstall' is deprecated, use 'uninstall_beast2_pkg' instead")
}
