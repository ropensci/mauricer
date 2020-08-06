#' Uninstall a BEAST2 package
#' @inheritParams default_params_doc
#' @return nothing. It does install the BEAST2 package
#' @author Richèl J.C. Bilderbeek
#' @examples
#' \dontrun{
#'   uninstall_beast2_pkg("Beasy")
#' }
#' @export
uninstall_beast2_pkg <- function(
  name,
  has_internet = curl::has_internet()
) {
  if (!has_internet) {
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
