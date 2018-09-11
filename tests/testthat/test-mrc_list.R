context("mrc_list")

test_that("use", {
  df <- mrc_list()
  expect_true("name" %in% names(df))
  expect_true("installed_version" %in% names(df))
  expect_true("latest_version" %in% names(df))
  expect_true("dependencies" %in% names(df))
  expect_true("description" %in% names(df))
})
