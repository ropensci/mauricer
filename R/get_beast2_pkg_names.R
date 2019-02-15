#' List all BEAST2 packages available and installed
#' @return a data frame
#' @author Richèl J.C. Bilderbeek
#' @examples
#'   df <- get_beast2_pkg_names()
#'   testthat::expect_true("name" %in% names(df))
#'   testthat::expect_true("installed_version" %in% names(df))
#'   testthat::expect_true("latest_version" %in% names(df))
#'   testthat::expect_true("dependencies" %in% names(df))
#'   testthat::expect_true("description" %in% names(df))
#' @export
get_beast2_pkg_names <- function() {
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
