#' Get the full path of a file in the \code{inst/extdata} folder
#' @param filename the file's name, without the path
#' @return the full path of the filename, if and only if
#'   the file is present. Will stop otherwise.
#' @author Richel J.C. Bilderbeek
#' @seealso for more files, use \code{\link{get_mrc_paths}}
#' @examples
#'   testit::assert(is.character(get_mrc_path("anthus_aco_sub.fas")))
#'   testit::assert(is.character(get_mrc_path("anthus_nd2_sub.fas")))
#' @export
get_mrc_path <- function(filename) {

  full <- system.file("extdata", filename, package = "mauricer")
  if (!file.exists(full)) {
    stop("'filename' must be the name of a file in 'inst/extdata'")
  }
  full
}
