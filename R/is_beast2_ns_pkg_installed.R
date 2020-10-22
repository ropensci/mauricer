#' Is the BEAST2 NS package installed?
#'
#' Determine if the BEAST2 NS package is installed.
#'
#' Unlike \link{is_beast2_pkg_installed},
#' this function does not need an internet connection.
#' Instead, the function calls BEAST2 to read a BEAST2 XML file that
#' uses NS.
#' @inheritParams default_params_doc
#' @return TRUE if the BEAST2 NS package is installed, FALSE otherwise
#' @author Richèl J.C. Bilderbeek
#' @examples
#' \dontrun{
#'   is_beast2_ns_pkg_installed()
#' }
#' @export
is_beast2_ns_pkg_installed <- function(
  show_warnings = FALSE,
  verbose = FALSE,
  beast2_folder = beastier::get_default_beast2_folder()
) {
  result <- FALSE
  tryCatch({
    result <- beastier::is_beast2_input_file(
      mauricer::get_mrc_path("nested_sampling.xml"),
      show_warnings = show_warnings,
      verbose = verbose,
      beast2_path = beastier::get_default_beast2_bin_path(
        beast2_folder = beast2_folder
      )
    )
  }, error = function(e) {
      if (isTRUE(verbose)) {
        message(e$msg)
      }
    }
  )
  result
}
