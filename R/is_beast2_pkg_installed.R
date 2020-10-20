#' Is a BEAST2 package installed?
#'
#' Checks if a BEAST2 package is installed.
#'
#' To be able to check this, an internet connection is needed.
#' Without an internet connection, \code{NULL} is returned.
#' @inheritParams default_params_doc
#' @return
#' \itemize{
#'   \item \code{TRUE} if the BEAST2 package is installed
#'   \item \code{FALSE} if the BEAST2 package is not installed
#'   \item \code{NULL} if there is no internet connection
#' }
#' @seealso Use \link{is_beast2_ns_pkg_installed}
#'   to see if the NS package is installed without an internet connection
#' @author Richèl J.C. Bilderbeek
#' @examples
#' \dontrun{
#'   is_beast2_pkg_installed("Beasy")
#' }
#' @export
is_beast2_pkg_installed <- function(
  name,
  beast2_folder = beastier::get_default_beast2_folder(),
  has_internet = curl::has_internet()
) {
  if (!has_internet) return(NULL)
  if (name == "NS") return(
    mauricer::is_beast2_ns_pkg_installed(beast2_folder = beast2_folder)
  )
  df <- mauricer::get_beast2_pkg_names(beast2_folder = beast2_folder)
  df[df$name == name, ]$installed_version != "NA"
}
