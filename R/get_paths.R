#' Get the full paths of files in the 'inst/extdata' folder
#' @param filenames the files' names, without the path
#' @return the filenames' full paths, if and only if
#'   all files are present. Will stop otherwise.
#' @author Richel J.C. Bilderbeek
#' @seealso for one file, use \code{\link{get_mrc_path}}
#' @examples
#'   testit::assert(
#'     length(
#'       get_mrc_paths(
#'         c("anthus_aco_sub.fas", "anthus_nd2_sub.fas")
#'       )
#'      ) == 2
#'    )
#' @export
get_mrc_paths <- function(filenames) {

  for (i in seq_along(filenames)) {
    filenames[i] <- get_mrc_path(filenames[i]) # nolint internal function
  }

  filenames
}