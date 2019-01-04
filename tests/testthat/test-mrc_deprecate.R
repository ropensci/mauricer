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

test_that("mrc_list", {
  expect_error(
    mrc_list(),
    "'mrc_list' is deprecated, use 'get_beast2_pkg_names' instead"
  )
})

test_that("mrc_is_installed", {
  expect_error(
    mrc_list(),
    "'mrc_is_installed' is deprecated, use 'is_beast2_pkg_installed' instead"
  )
})


