test_that("cannot uninstall absent package", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  df <- get_beast2_pkg_names()
  absent_package_name <- df[df$installed_version == "NA", ]$name[1]
  expect_error(
    uninstall_beast2_pkg(absent_package_name),
    "Cannot uninstall absent package"
  )
})

test_that("abuse", {

  expect_error(
    uninstall_beast2_pkg(
      "irrelevant",
      has_internet = FALSE
    ),
    "No internet connection"
  )
})

test_that("uninstall must be silent", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  beast2_folder <- tempfile()
  beastier::install_beast2(folder_name = beast2_folder)
  df <- get_beast2_pkg_names(beast2_folder = beast2_folder)
  name <- df[df$installed_version == "NA", ]$name[1]
  expect_silent(install_beast2_pkg(name = name, beast2_folder = beast2_folder))
  expect_silent(
    uninstall_beast2_pkg(name = name, beast2_folder = beast2_folder)
  )
})

test_that("uninstall can be verbose", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()

  beast2_folder <- tempfile()
  beastier::install_beast2(folder_name = beast2_folder)
  df <- get_beast2_pkg_names(beast2_folder = beast2_folder)
  name <- df[df$installed_version == "NA", ]$name[1]
  expect_silent(install_beast2_pkg(name = name, beast2_folder = beast2_folder))
  expect_output(
    uninstall_beast2_pkg(
      name = name,
      beast2_folder = beast2_folder,
      verbose = TRUE
    ),
    "Uninstalling BEAST2 package"
  )
})
