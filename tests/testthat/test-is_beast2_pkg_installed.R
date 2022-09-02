test_that("use", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  df <- get_beast2_pkg_names()
  name <- df[df$installed_version == "NA", ]$name[1]
  expect_false(is_beast2_pkg_installed(name))

  expect_silent(beastier::check_empty_beaustier_folders())
})

test_that("can install NS in two equivalent ways", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  expect_equal(
    is_beast2_pkg_installed("NS"),
    is_beast2_ns_pkg_installed()
  )

  expect_silent(beastier::check_empty_beaustier_folders())
})

test_that("return NULL without internet", {

  # No internet, so it should return NULL
  expect_null(
    is_beast2_pkg_installed(
      "irrelevant",
      has_internet = FALSE
    )
  )

  expect_silent(beastier::check_empty_beaustier_folders())
})
