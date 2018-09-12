context("mrc_install")

test_that("use", {

  df <- mrc_list()
  name <- df[df$installed_version == "NA", ]$name[1]

  testthat::expect_false(mrc_is_installed(name))

  mrc_install(name)

  testthat::expect_true(mrc_is_installed(name))

  mrc_uninstall(name)

  testthat::expect_false(mrc_is_installed(name))
})

test_that("cannot install installed package", {
  df <- mrc_list()
  present_package_name <- df[df$installed_version != "NA", ]$name[1]
  testthat::expect_error(
    mrc_install(present_package_name),
    "Cannot install installed package"
  )
})
