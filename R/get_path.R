#' Get the full path of a \code{mauricer} file
#'
#' Get the full path of a file in the \code{inst/extdata} folder.
#' If there is no \code{mauricer} file, \link{get_mrc_path} will \link{stop}.
#' @param filename the file's name, without the path
#' @return the full path of the filename, if and only if
#'   the file is present. Will stop otherwise.
#' @author Richèl J.C. Bilderbeek
#' @seealso for more files, use \code{\link{get_mrc_paths}}
#' @examples
#' get_mrc_path("anthus_aco_sub.fas")
#' @export
get_mrc_path <- function(filename) {

  full <- system.file("extdata", filename, package = "mauricer")
  if (!file.exists(full)) {
    stop("'filename' must be the name of a file in 'inst/extdata'")
  }
  full
}
