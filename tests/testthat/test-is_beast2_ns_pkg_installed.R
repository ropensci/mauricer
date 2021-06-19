test_that("install NS package at non-standard location", {
  # On CI, as this uninstalls the NS package
  if (!beastier::is_on_ci()) return()
  if (!curl::has_internet()) return()

  beast2_folder <- tempfile(pattern = "mauricer_")
  expect_false(
    mauricer::is_beast2_ns_pkg_installed(beast2_folder = beast2_folder)
  )

  # Install BEAST2
  beastierinstall::install_beast2(folder_name = beast2_folder)

  # NS is installed by default, uninstall it if so
  if (mauricer::is_beast2_ns_pkg_installed()) {
    mauricer::uninstall_beast2_pkg(name = "NS", beast2_folder = beast2_folder)
  }
  pkgs <- mauricer::get_beast2_pkg_names(beast2_folder = beast2_folder)
  expect_equal("NA", pkgs$installed_version[pkgs$name == "NS"])
  expect_false(
    mauricer::is_beast2_pkg_installed(
      name = "NS", beast2_folder = beast2_folder
    )
  )
  expect_false(
    mauricer::is_beast2_ns_pkg_installed(beast2_folder = beast2_folder)
  )

  # Install (or re-install) the NS package
  mauricerinstall::install_beast2_pkg(
    name = "NS",
    beast2_folder = beast2_folder
  )
  expect_true(
    mauricer::is_beast2_pkg_installed(
      name = "NS", beast2_folder = beast2_folder
    )
  )
  expect_true(
    mauricer::is_beast2_ns_pkg_installed(beast2_folder = beast2_folder)
  )
})
