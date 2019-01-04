context("test-mrc_deprecate")

test_that("mrc_install", {
  expect_error(
    mrc_install("irrelevant"),
    "'mrc_install' will be deprecated, use 'install_beast2_pkg' instead"
  )
})
