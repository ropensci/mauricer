#' Is the BEAST2 NS package installed?
#'
#' Determine if the BEAST2 NS package is installed.
#'
#' Unlike \link{is_beast2_pkg_installed},
#' this function does not need an internet connection.
#' Instead, the function calls BEAST2 to read a BEAST2 XML file that
#' uses NS.
#' @return TRUE if the BEAST2 NS package is installed, FALSE otherwise
#' @author Richèl J.C. Bilderbeek
#' @examples
#' \dontrun{
#'   is_beast2_ns_pkg_installed()
#' }
#' @export
is_beast2_ns_pkg_installed <- function() {
  beastier::is_beast2_input_file(
    mauricer::get_mrc_path("nested_sampling.xml"),
    show_warnings = FALSE
  )
}
