context("uninstall_beast2_pkg")

test_that("cannot uninstall absent package", {

  if (!beastier::is_beast2_installed()) return()

  df <- get_beast2_pkg_names()
  absent_package_name <- df[df$installed_version == "NA", ]$name[1]
  testthat::expect_error(
    uninstall_beast2_pkg(absent_package_name),
    "Cannot uninstall absent package"
  )
})
