context("is_beast2_pkg_installed")

test_that("use", {

  if (!beastier::is_beast2_installed()) return()

  df <- get_beast2_pkg_names()
  name <- df[df$installed_version == "NA", ]$name[1]
  expect_false(is_beast2_pkg_installed(name))
})
