#' Check to see if there is an internet connection
#'
#' Used code from https://stackoverflow.com/a/34970085
#'
#' @author Richèl J.C. Bilderbeek copied the code here from
#'   the original author Jeroen Ooms
#' @return TRUE if there is an internet connection, FALSE otherwise
#' @export
has_internet <- function() {
  !is.null(curl::nslookup("r-project.org", error = FALSE))
}
