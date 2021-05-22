#' Install a BEAST2 package
#'
#' Install a BEAST2 package. If the package is already installed,
#' (see \link{is_beast2_pkg_installed}), this function \link{stop}s.
#'
#' @note Installing or uninstalling a BEAST2 package for a
#' (singular) BEAST2 installation, does so for all BEAST2
#' installations
#' @inheritParams default_params_doc
#' @return nothing. It does install the BEAST2 package
#' @author Richèl J.C. Bilderbeek
#' @examples
#' \dontrun{
#'   install_beast2_pkg("NS")
#' }
#' @export
install_beast2_pkg <- function(
  name,
  beast2_folder = beastier::get_default_beast2_folder(),
  verbose = FALSE,
  has_internet = curl::has_internet()
) {
  stop(
    "'mauricer::install_beast2_pkg' is deprecated, \n",
    "as it violated CRAN policy. \n",
    " \n",
    "To install BEAST2 packages from R, do: \n",
    " \n",
    "remotes::install_github(\"richelbilderbeek/mauricerinstall\") \n",
    "mauricerinstall::install_beast2_pkg(\"[your package here]\") \n"
  )
}
