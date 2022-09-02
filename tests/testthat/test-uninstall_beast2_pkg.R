test_that("deprecated", {
  expect_error(
    uninstall_beast2_pkg(),
    "deprecated"
  )

  beastier::remove_beaustier_folders()
  expect_silent(beastier::check_empty_beaustier_folders())
})
