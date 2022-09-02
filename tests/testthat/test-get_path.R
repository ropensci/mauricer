test_that("use", {

  expect_equal(
    system.file("extdata", "anthus_nd2_sub.fas", package = "mauricer"),
    get_mrc_path("anthus_nd2_sub.fas")
  )

  expect_equal(
    system.file("extdata", "anthus_aco_sub.fas", package = "mauricer"),
    get_mrc_path("anthus_aco_sub.fas")
  )

  beastier::remove_beaustier_folders()
  expect_silent(beastier::check_empty_beaustier_folders())
})

test_that("abuse", {

  expect_error(
    get_mrc_path("abs.ent"),
    "'filename' must be the name of a file in 'inst/extdata'"
  )

  beastier::remove_beaustier_folders()
  expect_silent(beastier::check_empty_beaustier_folders())
})
