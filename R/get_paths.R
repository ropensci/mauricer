#' Get the full paths of files in the 'inst/extdata' folder
#' @param filenames the files' names, without the path
#' @return the filenames' full paths, if and only if
#'   all files are present. Will stop otherwise.
#' @author Richèl J.C. Bilderbeek
#' @seealso for one file, use \code{\link{get_mrc_path}}
#' @examples
#'   filenames <- get_mrc_paths(c("anthus_aco_sub.fas", "anthus_nd2_sub.fas"))
#'
#'   library(testthat)
#'   expect_true(all(file.exists(filenames)))
#' @export
get_mrc_paths <- function(filenames) {

  for (i in seq_along(filenames)) {
    filenames[i] <- mauricer::get_mrc_path(filenames[i])
  }

  filenames
}
