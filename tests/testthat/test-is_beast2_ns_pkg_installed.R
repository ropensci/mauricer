test_that("use", {
  expect_silent(is_beast2_ns_pkg_installed())

  expect_false(is_beast2_ns_pkg_installed(beast2_folder = tempfile()))
})

test_that("install NS package at non-standard location", {

  if (!beastier::is_on_ci()) return()
  if (!curl::has_internet()) return()

  beast2_folder <- tempfile(pattern = "mauricer_")
  expect_false(is_beast2_ns_pkg_installed(beast2_folder = beast2_folder))

  # Install BEAST2
  beastier::install_beast2(folder_name = beast2_folder)

  # Hmmm, NS is installed by default
  pkgs <- mauricer::get_beast2_pkg_names(beast2_folder = beast2_folder, verbose = TRUE)
  expect_true("NA" != pkgs$installed_version[pkgs$name == "NS"])
  expect_true(
    is_beast2_pkg_installed(name = "NS", beast2_folder = beast2_folder)
  )
  expect_true(is_beast2_ns_pkg_installed(beast2_folder = beast2_folder))

  # No need to install NS package
  if (1 == 2) {
    mauricer::install_beast2_pkg(name = "NS", beast2_folder = beast2_folder)
  }
  expect_true(
    is_beast2_pkg_installed(name = "NS", beast2_folder = beast2_folder)
  )
  expect_true(is_beast2_ns_pkg_installed(beast2_folder = beast2_folder))
})
