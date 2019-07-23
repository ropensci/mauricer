test_that("use", {

  expect_silent(has_internet())

  if (1 == 2) {
    # Run this test with internet
    expect_true(has_internet())
  }

  if (1 == 2) {
    # Run this test without internet
    expect_false(has_internet())
  }
})
