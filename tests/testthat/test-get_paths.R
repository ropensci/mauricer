test_that("use", {

  expect_equal(
    c(
      get_mrc_path("anthus_aco_sub.fas"),
      get_mrc_path("anthus_nd2_sub.fas")
    ),
    get_mrc_paths(c("anthus_aco_sub.fas", "anthus_nd2_sub.fas"))
  )

  beastier::remove_beaustier_folders()
  expect_silent(beastier::check_empty_beaustier_folders())
})
