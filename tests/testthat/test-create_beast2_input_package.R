
test_that("NS, deep", {

  if (!beastier::is_beast2_installed()) return()
  if (!curl::has_internet()) return()
  if (!is_beast2_ns_pkg_installed()) return()

  # We cannot test
  output_filename <- get_beastier_tempfilename()

  beautier::create_beast2_input_file_from_model(
    input_filename = beautier::get_beautier_path("anthus_aco_sub.fas"),
    beautier::create_inference_model(
      mcmc = beautier::create_mcmc_nested_sampling()
    ),
    output_filename = output_filename
  )

  # If BEAST2 NS package is not installed, this is the error you'll get:
  #
  # "Class could not be found. Did you mean beast.core.util.ESS?"
  # "Perhaps a package required for this class is not installed?"
  # ""
  # "Error detected about here:"
  # "  <beast>"                                                                 # nolint this is commented code indeed
  # "      <run id='mcmc' spec='beast.gss.NS'>"                                 # nolint this is commented code indeed
  #
  #
  expect_true(
    beastier::is_beast2_input_file(
      output_filename
    )
  )
  file.remove(output_filename)
})
