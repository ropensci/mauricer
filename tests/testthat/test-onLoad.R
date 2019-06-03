test_that("use", {
  expect_silent(
    mauricer:::.onLoad(
      libname = "irrelevant",
      pkgname = "irrelevant"
    )
  )
})
