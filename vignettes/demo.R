## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(mauricer)

## ------------------------------------------------------------------------
beast2_packages <- list_beast2_packages() 
knitr::kable(list_beast2_packages())

## ------------------------------------------------------------------------
first_absent_package_name <- beast2_packages[ beast2_packages$installed_version == "NA", ]$name[1]
print(first_absent_package_name)

