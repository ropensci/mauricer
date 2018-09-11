#' Checks if a BEAST2 package is already installed
#' @param name BEAST2 package name
#' @author Richel J.C. Bilderbeek
#' @export
mrc_is_installed <- function(name) {
  df <- mrc_list()
  df[df$name == name, ]$installed_version != "NA"
}
