context("mrc_is_installed")

test_that("use", {
  df <- mrc_list()
  name <- df[df$installed_version == "NA", ]$name[1]
  testthat::expect_false(mrc_is_installed(name))
})
