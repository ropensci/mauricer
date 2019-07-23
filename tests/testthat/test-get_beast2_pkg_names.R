context("get_beast2_pkg_names")

test_that("use", {
  if (!beastier::is_beast2_installed()) return()
  df <- get_beast2_pkg_names()
  expect_true("name" %in% names(df))
  expect_true("installed_version" %in% names(df))
  expect_true("latest_version" %in% names(df))
  expect_true("dependencies" %in% names(df))
  expect_true("description" %in% names(df))
})

test_that("no packages without internet", {

  if (1 == 2) {
    # Run this test without internet

    # Check to see if there is internet,
    # from https://stackoverflow.com/a/34970085
    testit::assert(is.null(curl::nslookup("r-project.org", error = FALSE)))

    # No internet, so it should return NULL
    expect_error(
      get_beast2_pkg_names(),
      "No internet connection"
    )
  }

})
