context("test-mrc_deprecate")

test_that("mrc_install", {
  expect_error(
    mrc_install("irrelevant"),
    "'mrc_install' is deprecated, use 'install_beast2_pkg' instead"
  )
})

test_that("mrc_uninstall", {
  expect_error(
    mrc_uninstall("irrelevant"),
    "'mrc_uninstall' is deprecated, use 'uninstall_beast2_pkg' instead"
  )
})


