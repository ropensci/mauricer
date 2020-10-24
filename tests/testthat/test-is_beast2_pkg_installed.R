test_that("use", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  df <- get_beast2_pkg_names()
  name <- df[df$installed_version == "NA", ]$name[1]
  expect_false(is_beast2_pkg_installed(name))
})

test_that("can install NS in two equivalent ways", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  expect_equal(
    is_beast2_pkg_installed("NS"),
    is_beast2_ns_pkg_installed()
  )
})

test_that("return NULL without internet", {

  # No internet, so it should return NULL
  expect_null(
    is_beast2_pkg_installed(
      "irrelevant",
      has_internet = FALSE
    )
  )
})

test_that("install new package at non-standard location", {

  if (!beastier::is_on_ci()) return()
  if (!curl::has_internet()) return()

  beast2_folder <- tempfile()
  beastier::install_beast2(folder_name = beast2_folder)

  df <- get_beast2_pkg_names(beast2_folder = beast2_folder)
  name <- df[df$installed_version == "NA", ]$name[1]

  mauricer::install_beast2_pkg(
    name = name, beast2_folder = beast2_folder
  )
  expect_true(
    is_beast2_pkg_installed(name = name, beast2_folder = beast2_folder)
  )
})
