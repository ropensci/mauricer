context("nested_sampling")

# Use Nested Sampling, from [1]
#
# * [1] Maturana, P., Brewer, B. J., Klaere, S., & Bouckaert, R. (2017).
# Model selection and parameter inference in phylogenetics
# using Nested Sampling. arXiv preprint arXiv:1703.05471.

test_that("nested_sampling setup", {
  if (!file.exists(beastier::get_default_beast2_jar_path()))
  {
    install_beast2()
  }
  testit::assert(file.exists(beastier::get_default_beast2_jar_path()))
  if (!mauricer::mrc_is_installed("NS"))
  {
    mauricer::mrc_install("NS")
  }
  testit::assert(mauricer::mrc_is_installed("NS"))
  filename <- tempfile(fileext = ".xml")
  beautier::create_beast2_input_file(
    input_filenames = get_mrc_path("anthus_aco_sub.fas"),
    output_filename = filename,
    mcmc = beautier::create_mcmc_nested_sampling(chain_length = 10000)
  )
  beastier::is_beast2_input_file(filename, show_warnings = TRUE, verbose = TRUE)
  skip("WIP")
  expect_true(beastier::is_beast2_input_file(filename))
})

