context("get_beast2_pkg_names")

test_that("use", {
  if (!beastier::is_beast2_installed()) return()
  if (!has_internet()) return()

  df <- get_beast2_pkg_names()
  expect_true("name" %in% names(df))
  expect_true("installed_version" %in% names(df))
  expect_true("latest_version" %in% names(df))
  expect_true("dependencies" %in% names(df))
  expect_true("description" %in% names(df))
})

test_that("no packages without internet", {

  if (!has_internet()) {
    expect_error(
      get_beast2_pkg_names(),
      "No internet connection"
    )
  }

})
