#' This function does nothing. It is intended to inherit is parameters'
#' documentation.
#' @param beast2_folder the folder where the BEAST2 is installed.
#'   Note that this is not the folder where the BEAST2 executable is installed:
#'   the BEAST2 executable is in a subfolder.
#'   Use \link[beastier]{get_default_beast2_folder}
#'     to get the default BEAST2 folder.
#'   Use \link[beastier]{get_default_beast2_bin_path}
#'     to get the full path to the default BEAST2 executable.
#'   Use \link[beastier]{get_default_beast2_jar_path}
#'     to get the full path to the default BEAST2 jar file.
#' @param has_internet boolean to indicate if the user has access to the
#'   internet. By default, this value equals the result
#'   of \code{curl::has_internet}
#' @param name the package's name
#' @author Richèl J.C. Bilderbeek
#' @note This is an internal function, so it should be marked with
#'   \code{@noRd}. This is not done, as this will disallow all
#'   functions to find the documentation parameters
default_params_doc <- function(
  beast2_folder,
  has_internet,
  name
) {
  # Nothing
}
