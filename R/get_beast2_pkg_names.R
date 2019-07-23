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
    stdout = TRUE,
    stderr = FALSE
  )
  if (length(raw) == 0) {
    stop("No internet connection")
    # Full error message:
    #
    # Error reading the following package repository URLs: https://raw.githubusercontent.com/CompEvol/CBAN/master/packages2.6.xml # nolint
    # Could not get an internet connection. The BEAST Package Manager needs internet access in order to list available packages and download them for installation. Possibly, some software (like security software, or a firewall) blocks the BEAST Package Manager.  If so, you need to reconfigure such software to allow access. # nolint
  }
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
