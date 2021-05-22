test_that("deprecated", {
  expect_error(
    install_beast2_pkg(),
    "deprecated"
  )
})
