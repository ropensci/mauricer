library(testthat)
library(mauricer)

# Make sure no temp files are left undeleted
beautier::clear_beautier_cache()
beautier::check_empty_beautier_folder()
beastier::clear_beastier_cache()
beastier::check_empty_beastier_folder()

test_check("mauricer")

beautier::check_empty_beautier_folder()
beastier::check_empty_beastier_folder()
