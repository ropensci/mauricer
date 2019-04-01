#' Get the full path of a file in the \code{inst/extdata} folder
#' @param filename the file's name, without the path
#' @return the full path of the filename, if and only if
#'   the file is present. Will stop otherwise.
#' @author Richèl J.C. Bilderbeek
#' @seealso for more files, use \code{\link{get_mrc_paths}}
#' @examples
#'   library(testthat)
#'
#'   expect_true(file.exists(get_mrc_path("anthus_aco_sub.fas")))
#'   expect_true(file.exists(get_mrc_path("anthus_nd2_sub.fas")))
#' @export
get_mrc_path <- function(filename) {

  full <- system.file("extdata", filename, package = "mauricer")
  if (!file.exists(full)) {
    stop("'filename' must be the name of a file in 'inst/extdata'")
  }
  full
}
