
test_that("NS, deep", {

  if (!beastier::is_beast2_installed()) return()
  if (!mauricer::is_beast2_pkg_installed("NS")) return()

  # We cannot test
  output_filename <- tempfile(pattern = "beast2_input_file_", fileext = ".xml")

  beautier::create_beast2_input_file_from_model(
    input_filename = beautier::get_beautier_path("anthus_aco_sub.fas"),
    beautier::create_inference_model(
      mcmc = beautier::create_mcmc_nested_sampling()
    ),
    output_filename = output_filename
  )

  # Cannot check a BEAST2 input file to be valid
  # when it is using a construct of the NS package.
  # This is the error BEAST2 will give:
  #
  # "Class could not be found. Did you mean beast.core.util.ESS?"
  # "Perhaps a package required for this class is not installed?"
  # ""
  # "Error detected about here:"
  # "  <beast>"                                                                 # nolint this is commented code indeed
  # "      <run id='mcmc' spec='beast.gss.NS'>"                                 # nolint this is commented code indeed
  #
  #
  # Here, we know that the output_filename holds a valid XML file,
  # but this is incorrectly flagged as invalid:
  expect_false(
    suppressWarnings(
      beastier::is_beast2_input_file(
        output_filename
      )
    )
  )

  i_want_to_see_the_beast2_output <- FALSE # nolint indeed a long variable name
  if (i_want_to_see_the_beast2_output) {
    suppressWarnings(
      beastier::is_beast2_input_file(
        output_filename,
        verbose = TRUE
      )
    )
  }
})
