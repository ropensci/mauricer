#' Install a BEAST2 package
#'
#' Install a BEAST2 package. If the package is already installed,
#' (see \link{is_beast2_pkg_installed}), this function \link{stop}s.
#' @inheritParams default_params_doc
#' @return nothing. It does install the BEAST2 package
#' @author Richèl J.C. Bilderbeek
#' @examples
#' \dontrun{
#'   install_beast2_pkg("NS")
#' }
#' @export
install_beast2_pkg <- function(name) {
  if (!name %in% get_beast2_pkg_names()$name) {
    stop(
      "Invalid package name '", name, "'. \n",
      "Tip: use 'get_beast2_pkg_names' to see all BEAST2 package names"
    )
  }
  if (mauricer::is_beast2_pkg_installed(name)) {
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
