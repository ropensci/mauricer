library(testthat)
library(mauricer)

# Make sure no temp files are left undeleted
beastier::remove_beaustier_folders()
beastier::check_empty_beaustier_folders()

test_check("mauricer")

beastier::check_empty_beaustier_folders()
