#' Get all BEAST2 package names
#'
#' List all BEAST2 packages that are available and installed.
#' Will \link{stop} if there is no internet connection
#' @inheritParams default_params_doc
#' @return a data frame with columns\cr
#' \enumerate{
#'   \item name package name, for example, code{bdmm}
#'   \item installed_version the installed version, for example, \code{2.6.2}.
#'     \code{installed_version} will be NA if the package is not installed
#'   \item latest_version version number of the latest version, for example,
#'     \code{2.6.3}
#'   \item dependencies packages the package depends on, for example
#'     \code{BEASTLabs, GEO_SPHERE}. \code{dependencies} will be empty if there
#'     are no dependencies
#'   \item description description of the package, for example
#'     \code{Nested sampling for model selection and posterior inference}
#' }
#' @author Richèl J.C. Bilderbeek
#' @examples
#' if (is_beast2_installed() && curl::has_internet()) {
#'   get_beast2_pkg_names()
#' }
#' @export
get_beast2_pkg_names <- function(
  has_internet = curl::has_internet()
) {
  if (!beastier::is_beast2_installed()) {
    stop("BEAST2 not installed. Tip: use 'beastier::install_beast2()'")
  }
  if (!has_internet) {
    stop("No internet connection")
  }
  # java -cp beast.jar beast.util.PackageManager -list
  raw <- system2(
    command = beastier::get_default_java_path(),
    args = c(
      "-cp",
      shQuote(beastier::get_default_beast2_jar_path()),
      "beast.util.PackageManager",
      "-list"
    ),
    stdout = TRUE
  )
  raw <- raw[c(-1, -2, -4)]

  df <- stringr::str_split(
    raw, pattern = "\\|", n = 5, simplify = TRUE
  )
  df <- as.data.frame(df)

  colnames(df) <- c(
    "name", "installed_version", "latest_version",
    "dependencies", "description"
  )
  names(df) <- colnames(df)
  for (col in seq_along(colnames(df))) {
    df[, col] <- stringr::str_trim(df[, col])
  }
  df
}
