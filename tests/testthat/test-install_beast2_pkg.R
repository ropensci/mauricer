context("install_beast2_pkg")

test_that("use", {

  df <- mrc_list()
  name <- df[df$installed_version == "NA", ]$name[1]

  expect_false(mrc_is_installed(name))

  install_beast2_pkg(name)

  expect_true(mrc_is_installed(name))

  mrc_uninstall(name)

  expect_false(mrc_is_installed(name))
})

test_that("cannot install installed package", {

  # This test needs internet connection
  if (!beastier::is_on_ci()) return()

  df <- mrc_list()
  present_package_name <- df[df$installed_version != "NA", ]$name[1]

  expect_error(
    install_beast2_pkg(present_package_name),
    "Cannot install installed package"
  )
})
