context("get_beast2_pkg_names")

test_that("use", {
  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  df <- get_beast2_pkg_names()
  expect_true("name" %in% names(df))
  expect_true("installed_version" %in% names(df))
  expect_true("latest_version" %in% names(df))
  expect_true("dependencies" %in% names(df))
  expect_true("description" %in% names(df))
})

test_that("no packages without internet", {

  expect_error(
    get_beast2_pkg_names(
      has_internet = FALSE
    ),
    "No internet connection"
  )
})

test_that("use", {
  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  testit::assert(beastier::is_beast2_installed())

  beastier::uninstall_beast2()

  testit::assert(!beastier::is_beast2_installed())

  expect_error(
    get_beast2_pkg_names(),
    "BEAST2 not installed"
  )

  beastier::install_beast2()

  testit::assert(beastier::is_beast2_installed())

})
