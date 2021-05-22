#' Uninstall a BEAST2 package
#' @inheritParams default_params_doc
#' @return nothing. It does install the BEAST2 package
#' @note Installing or uninstalling a BEAST2 package for a
#' (singular) BEAST2 installation, does so for all BEAST2
#' installations
#' @author Richèl J.C. Bilderbeek
#' @examples
#' \dontrun{
#'   uninstall_beast2_pkg("Beasy")
#' }
#' @export
uninstall_beast2_pkg <- function(
  name,
  beast2_folder = beastier::get_default_beast2_folder(),
  verbose = FALSE,
  has_internet = curl::has_internet()
) {
  stop(
    "'mauricer::uninstall_beast2_pkg' is deprecated, \n",
    "as it violated CRAN policy. \n",
    " \n",
    "To uninstall BEAST2 packages from R, do: \n",
    " \n",
    "remotes::install_github(\"richelbilderbeek/mauricerinstall\") \n",
    "mauricerinstall::uninstall_beast2_pkg(\"[your package here]\") \n"
  )
}
