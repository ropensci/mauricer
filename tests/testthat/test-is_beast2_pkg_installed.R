context("is_beast2_pkg_installed")

test_that("use", {

  if (!beastier::is_beast2_installed()) return()
  if (!has_internet()) return()

  df <- get_beast2_pkg_names()
  name <- df[df$installed_version == "NA", ]$name[1]
  expect_false(is_beast2_pkg_installed(name))
})

test_that("return NULL without internet", {

  if (1 == 2) {
    # Run this test without internet

    # Check to see if there is internet,
    # from https://stackoverflow.com/a/34970085
    testit::assert(is.null(curl::nslookup("r-project.org", error = FALSE)))

    # No internet, so it should return NULL
    expect_null(is_beast2_pkg_installed("NS"))
  }

})
