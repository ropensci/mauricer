context("get_mrc_paths")

test_that("use", {

  testthat::expect_equal(
    c(
      get_mrc_path("anthus_aco_sub.fas"),
      get_mrc_path("anthus_nd2_sub.fas")
    ),
    get_mrc_paths(c("anthus_aco_sub.fas", "anthus_nd2_sub.fas"))
  )

})
