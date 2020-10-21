test_that("use", {
  expect_silent(is_beast2_ns_pkg_installed())
})

test_that("install NS package at non-standard location", {

  if (!beastier::is_on_ci()) return()
  if (!curl::has_internet()) return()

  beast2_folder <- tempfile()
  beastier::install_beast2(folder_name = beast2_folder)
  mauricer::install_beast2_pkg(name = "NS", beast2_folder = beast2_folder)
  expect_true(
    is_beast2_pkg_installed(name = "NS", beast2_folder = beast2_folder)
  )
  expect_true(is_beast2_ns_pkg_installed(beast2_folder = beast2_folder))
})
