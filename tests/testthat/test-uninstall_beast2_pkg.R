test_that("deprecated", {
  expect_error(
    uninstall_beast2_pkg(),
    "deprecated"
  )
})
