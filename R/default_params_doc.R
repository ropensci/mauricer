#' This function does nothing. It is intended to inherit is parameters'
#' documentation.
#' @param has_internet boolean to indicate if the user has access to the
#'   internet. By default, this value equals the result
#'   of \code{curl::has_internet}
#' @param name the package's name
#' @author Richèl J.C. Bilderbeek
#' @note This is an internal function, so it should be marked with
#'   \code{@noRd}. This is not done, as this will disallow all
#'   functions to find the documentation parameters
default_params_doc <- function(
  has_internet,
  name
) {
  # Nothing
}
