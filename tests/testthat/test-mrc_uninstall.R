context("mrc_uninstall")

test_that("cannot uninstall absent package", {
  df <- mrc_list()
  absent_package_name <- df[df$installed_version == "NA", ]$name[1]
  testthat::expect_error(
    mrc_uninstall(absent_package_name),
    "Cannot uninstall absent package"
  )
})
