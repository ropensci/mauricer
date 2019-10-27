#' Determine if the BEAST2 NS package is installed
#'
#' @return TRUE if the BEAST2 NS package is installed, FALSE otherwise
#' @author Richèl J.C. Bilderbeek
#' @examples
#' library(testthat)
#'
#' if (is_beast2_installed()) {
#'   print(
#'     paste(
#'       "Is the BEAST2 NS package installed:",
#'       is_beast2_ns_pkg_installed()
#'     )
#'   )
#' }
#' @export
is_beast2_ns_pkg_installed <- function() {
  beastier::is_beast2_input_file(
    mauricer::get_mrc_path("nested_sampling.xml"),
    show_warnings = FALSE
  )
}
