context("install_beast2_pkg")

test_that("use", {

  if (!beastier::is_beast2_installed()) return()
  if (!has_internet()) return()

  df <- get_beast2_pkg_names()
  name <- df[df$installed_version == "NA", ]$name[1]

  expect_false(is_beast2_pkg_installed(name))

  install_beast2_pkg(name)

  expect_true(is_beast2_pkg_installed(name))

  uninstall_beast2_pkg(name)

  expect_false(is_beast2_pkg_installed(name))
})

test_that("cannot install installed package", {

  # This test needs internet connection
  if (!beastier::is_on_ci()) return()
  if (!beastier::is_beast2_installed()) return()

  df <- get_beast2_pkg_names()
  present_package_name <- df[df$installed_version != "NA", ]$name[1]

  expect_error(
    install_beast2_pkg(present_package_name),
    "Cannot install installed package"
  )
})
