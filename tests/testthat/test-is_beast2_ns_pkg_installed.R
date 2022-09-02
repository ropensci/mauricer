test_that("use", {
  expect_silent(is_beast2_ns_pkg_installed())
  expect_false(is_beast2_ns_pkg_installed(beast2_folder = "abs.ent"))

  beastier::remove_beaustier_folders()
  expect_silent(beastier::check_empty_beaustier_folders())
})
