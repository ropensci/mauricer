#' List all BEAST2 packages available and installed
#' @return a data frame
#' @author Richèl J.C. Bilderbeek
#' @examples
#'   library(testthat)
#'
#'   if (is_beast2_installed()) {
#'     df <- get_beast2_pkg_names()
#'     expect_true("name" %in% names(df))
#'     expect_true("installed_version" %in% names(df))
#'     expect_true("latest_version" %in% names(df))
#'     expect_true("dependencies" %in% names(df))
#'     expect_true("description" %in% names(df))
#'   }
#' @export
get_beast2_pkg_names <- function() {
  if (!beastier::is_beast2_installed()) {
    stop("BEAST2 not installed. Tip: use 'beastier::install_beast2()'")
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

#' Obsolete function to list all BEAST2 packages available and installed.
#' Use \link{get_beast2_pkg_names} instead
#' @return a data frame
#' @author Richèl J.C. Bilderbeek
#' @export
mrc_list <- function() {
  stop("'mrc_list' is deprecated, use 'get_beast2_pkg_names' instead")
}
