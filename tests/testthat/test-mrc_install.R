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
