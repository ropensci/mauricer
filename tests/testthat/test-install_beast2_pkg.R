test_that("deprecated", {
  expect_error(
    install_beast2_pkg(),
    "deprecated"
  )

  expect_silent(beastier::check_empty_beaustier_folders())
})
