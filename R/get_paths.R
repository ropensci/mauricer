#' Get the full path of one or more \code{mauricer} files
#'
#' Get the full paths of files in the \code{inst/extdata} folder
#' If there is a \code{mauricer} file absent,
#' \link{get_mrc_paths} will \link{stop}.
#' @param filenames the files' names, without the path
#' @return the filenames' full paths
#' @author Richèl J.C. Bilderbeek
#' @seealso for one file, use \code{\link{get_mrc_path}}
#' @examples
#' get_mrc_paths(c("anthus_aco_sub.fas", "anthus_nd2_sub.fas"))
#' @export
get_mrc_paths <- function(filenames) {

  for (i in seq_along(filenames)) {
    filenames[i] <- mauricer::get_mrc_path(filenames[i])
  }

  filenames
}
