## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(mauricer)
library(testthat)

## ------------------------------------------------------------------------
beast2_packages <- list_beast2_packages() 
knitr::kable(head(beast2_packages))

## ------------------------------------------------------------------------
first_absent_package_name <- beast2_packages[ 
  beast2_packages$installed_version == "NA", 
]$name[1]
print(first_absent_package_name)

## ------------------------------------------------------------------------
install_beast2_package(first_absent_package_name)

