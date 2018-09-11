## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(mauricer)
library(testthat)

## ------------------------------------------------------------------------
beast2_packages <- mrc_list() 
knitr::kable(head(beast2_packages))

## ------------------------------------------------------------------------
first_absent_package_name <- beast2_packages[ 
  beast2_packages$installed_version == "NA", 
]$name[1]
print(first_absent_package_name)

## ------------------------------------------------------------------------
testthat::expect_false(mrc_is_installed(first_absent_package_name))

## ------------------------------------------------------------------------
# mrc_install(first_absent_package_name)

## ------------------------------------------------------------------------
# beast2_packages <- mrc_list() 
# new_first_absent_package_name <- beast2_packages[ 
#   beast2_packages$installed_version == "NA", 
# ]$name[1]
# expect_true(new_first_absent_package_name != first_absent_package_name)

## ------------------------------------------------------------------------
# unmrc_install(first_absent_package_name)

## ------------------------------------------------------------------------
# beast2_packages <- mrc_list() 
# last_first_absent_package_name <- beast2_packages[ 
#   beast2_packages$installed_version == "NA", 
# ]$name[1]
# expect_true(last_first_absent_package_name == first_absent_package_name)

