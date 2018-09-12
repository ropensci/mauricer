context("get_mrc_path")

test_that("use", {

  testthat::expect_equal(
    system.file("extdata", "anthus_nd2_sub.fas", package = "mauricer"),
    get_mrc_path("anthus_nd2_sub.fas")
  )

  testthat::expect_equal(
    system.file("extdata", "anthus_aco_sub.fas", package = "mauricer"),
    get_mrc_path("anthus_aco_sub.fas")
  )

})

test_that("abuse", {

  testthat::expect_error(
    get_mrc_path("abs.ent"),
    "'filename' must be the name of a file in 'inst/extdata'"
  )

})
