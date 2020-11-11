test_that("use", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  df <- get_beast2_pkg_names()
  name <- df[df$installed_version == "NA", ]$name[1]

  install_beast2_pkg(name)

  expect_true(is_beast2_pkg_installed(name))

  uninstall_beast2_pkg(name)

  expect_false(is_beast2_pkg_installed(name))
})

test_that("cannot install installed package", {

  # This test needs internet connection
  if (!beastier::is_on_ci()) return()
  if (!beastier::is_beast2_installed()) return()

  df <- get_beast2_pkg_names()
  present_package_name <- df[df$installed_version != "NA", ]$name[1]

  expect_error(
    install_beast2_pkg(present_package_name),
    "Cannot install installed package"
  )
})

test_that("cannot install nonsense package", {

  # This test needs internet connection
  if (!beastier::is_on_ci()) return()
  if (!beastier::is_beast2_installed()) return()

  expect_error(
    install_beast2_pkg("nonsense"),
    "Invalid package name 'nonsense'"
  )
})

test_that("install and uninstall at non-standard location", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  beast2_folder <- tempfile()
  beastier::install_beast2(folder_name = beast2_folder)

  df <- get_beast2_pkg_names(beast2_folder = beast2_folder)
  name <- df[df$installed_version == "NA", ]$name[1]

  install_beast2_pkg(name = name, beast2_folder = beast2_folder)

  expect_true(
    is_beast2_pkg_installed(name = name, beast2_folder = beast2_folder)
  )

  uninstall_beast2_pkg(name = name, beast2_folder = beast2_folder)

  expect_false(
    is_beast2_pkg_installed(name = name, beast2_folder = beast2_folder)
  )
})

test_that("install must be silent", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  beast2_folder <- tempfile()
  beastier::install_beast2(folder_name = beast2_folder)
  df <- get_beast2_pkg_names(beast2_folder = beast2_folder)
  name <- df[df$installed_version == "NA", ]$name[1]
  expect_silent(install_beast2_pkg(name = name, beast2_folder = beast2_folder))
})

test_that("install can be verbose", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  beast2_folder <- tempfile()
  beastier::install_beast2(folder_name = beast2_folder)
  df <- get_beast2_pkg_names(beast2_folder = beast2_folder)
  name <- df[df$installed_version == "NA", ]$name[1]

  expect_message(
    install_beast2_pkg(
      name = name,
      beast2_folder = beast2_folder,
      verbose = TRUE
    ),
    "Installing BEAST2 package"
  )
})

test_that("install and uninstall happen globally", {

  if (!beastier::is_beast2_installed()) return()
  if (!is_beast2_ns_pkg_installed()) return()
  if (!curl::has_internet()) return()


  beast2_folder <- tempfile()
  beastier::install_beast2(folder_name = beast2_folder)

  expect_true(is_beast2_ns_pkg_installed())
  expect_true(is_beast2_ns_pkg_installed(beast2_folder = beast2_folder))

  uninstall_beast2_pkg(name = "NS", beast2_folder = beast2_folder)

  expect_false(is_beast2_ns_pkg_installed())
  expect_false(is_beast2_ns_pkg_installed(beast2_folder = beast2_folder))

  install_beast2_pkg(name = "NS", beast2_folder = beast2_folder)

  expect_true(is_beast2_ns_pkg_installed())
  expect_true(is_beast2_ns_pkg_installed(beast2_folder = beast2_folder))

  uninstall_beast2_pkg(name = "NS")

  expect_false(is_beast2_ns_pkg_installed())
  expect_false(is_beast2_ns_pkg_installed(beast2_folder = beast2_folder))

  install_beast2_pkg(name = "NS")

  expect_true(is_beast2_ns_pkg_installed())
  expect_true(is_beast2_ns_pkg_installed(beast2_folder = beast2_folder))
})
