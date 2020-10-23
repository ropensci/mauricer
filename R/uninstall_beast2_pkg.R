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
  beast2_folder = beastier::get_default_beast2_folder(),
  verbose = FALSE,
  has_internet = curl::has_internet()
) {
  if (!has_internet) {
    stop("No internet connection")
  }
  if (
    isFALSE(is_beast2_pkg_installed(name = name, beast2_folder = beast2_folder))
  ) {
    stop("Cannot uninstall absent package")
  }
  if (isTRUE(verbose)) {
    print(
      paste0(
        "Uninstalling BEAST2 package '", name, "' from '", beast2_folder, "'"
      )
    )
  }
  # java -cp beast.jar beast.util.PackageManager -add bacter
  cmds <- c(
    beastier::get_default_java_path(),
    "-cp",
    shQuote(
      beastier::get_default_beast2_jar_path(beast2_folder = beast2_folder)
    ),
    "beast.util.PackageManager",
    "-del",
    name
  )
  if (isTRUE(verbose)) {
    print(paste0("Running commmand '", paste0(cmds, collapse = " "), "'"))
  }
  system2(
    command = cmds[1],
    args = cmds[-1],
    stdout = FALSE
  )
}
