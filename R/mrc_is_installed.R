#' Checks if a BEAST2 package is already installed
#' @param name BEAST2 package name
#' @return TRUE if the BEAST2 package is installed
#' @author Richel J.C. Bilderbeek
#' @export
mrc_is_installed <- function(name) {
  df <- mauricer::mrc_list()
  df[df$name == name, ]$installed_version != "NA"
}
