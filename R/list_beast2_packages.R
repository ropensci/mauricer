#' List all BEAST2 packages available and installed
#' @return a data frame
#' @author Richel J.C. Bilderbeek
#' @export
list_beast2_packages <- function()
{
  # java -cp beast.jar beast.util.PackageManager -list
  raw <- system2(
    command = "java",
    args = c(
      "-cp",
      beastier::get_default_beast2_jar_path(),
      "beast.util.PackageManager",
      "-list"
    ),
    stdout = TRUE
  )
  raw <- raw[c(-1, -2, -4)]

  df <- stringr::str_split(raw, pattern = "\\|", n = 5, simplify = TRUE)
  colnames(df) <- c("name", "installed_version", "latest_version", "dependencies", "description")
  df
}
