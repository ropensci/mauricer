test_that("use", {
  expect_silent(is_beast2_ns_pkg_installed())

  expect_false(is_beast2_ns_pkg_installed(beast2_folder = tempfile()))
})

test_that("use", {
  expect_message(
    is_beast2_ns_pkg_installed(
      beast2_folder = "nonsense",
      verbose = TRUE
    )
  )
})
