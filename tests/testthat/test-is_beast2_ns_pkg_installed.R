test_that("use", {
  expect_silent(is_beast2_ns_pkg_installed())
})

test_that("install package at non-standard location", {

  if (!beastier::is_on_ci()) return()
  if (!curl::has_internet()) return()

  folder_name <- tempfile()
  beastier::install_beast2(folder_name = folder_name)
  get_beast2_pkg_names(folder_name = folder_name)
  mauricer::install_beast2_pkg(name = "bacter", folder_name = folder_name)
  expect_silent(is_beast2_ns_pkg_installed())
})
