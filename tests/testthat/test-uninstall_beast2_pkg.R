context("uninstall_beast2_pkg")

test_that("cannot uninstall absent package", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  df <- get_beast2_pkg_names()
  absent_package_name <- df[df$installed_version == "NA", ]$name[1]
  expect_error(
    uninstall_beast2_pkg(absent_package_name),
    "Cannot uninstall absent package"
  )
})

test_that("abuse", {

  expect_error(
    uninstall_beast2_pkg(
      "irrelevant",
      has_internet = FALSE
    ),
    "No internet connection"
  )
})
