# mauricer

<!-- markdownlint-disable MD013 -->

[![Peer Review Status](https://badges.ropensci.org/209_status.svg)](https://github.com/ropensci/software-review/issues/209)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/mauricer)](https://cran.r-project.org/package=mauricer)
[![Total number of downloads](http://cranlogs.r-pkg.org/badges/grand-total/mauricer)]( https://CRAN.R-project.org/package=mauricer)
[![Downloads per month](http://cranlogs.r-pkg.org/badges/mauricer)](https://CRAN.R-project.org/package=mauricer)


Branch   |[![GitHub Actions logo](man/figures/GitHubActions.png)](https://github.com/ropensci/mauricer/actions)|[![Codecov logo](man/figures/Codecov.png)](https://about.codecov.io/)
---------|-----------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------
`master` |![R-CMD-check](https://github.com/ropensci/mauricer/workflows/R-CMD-check/badge.svg?branch=master)   |[![codecov.io](https://codecov.io/github/ropensci/mauricer/coverage.svg?branch=master)](https://app.codecov.io/github/ropensci/mauricer/branch/master)
`develop`|![R-CMD-check](https://github.com/ropensci/mauricer/workflows/R-CMD-check/badge.svg?branch=develop)  |[![codecov.io](https://codecov.io/github/ropensci/mauricer/coverage.svg?branch=develop)](https://app.codecov.io/github/ropensci/mauricer/branch/develop)

<!-- markdownlint-enable MD013 -->

Work with BEAST2 packages from R.

Related packages:

* [babette](https://github.com/ropensci/babette) do a full BEAST2 workflow.
* [beautier](https://github.com/ropensci/beautier)
  creates BEAST2 input (`.xml`) files.
* [beastier](https://github.com/ropensci/beastier) runs BEAST2
* [lumier](https://github.com/ropensci/lumier)
  helps to create the `babette` function call needed
* [tracerer](https://github.com/ropensci/tracerer)
  parses BEAST2 output (`.log`, `.trees`, etc) files.

Non-CRAN extensions:

* [beastierinstall](https://github.com/richelbilderbeek/beastierinstall)
  Install and uninstall BEAST2
* [mauricerinstall](https://github.com/richelbilderbeek/mauricerinstall)
  Install and uninstall BEAST2 packages

## Examples

To install the BEAST2 NS package:

```r
remotes::install_github("richelbilderbeek/mauricerinstall")
mauricerinstall::install_beast2_pkg("NS")
```

An introduction video:

* [YouTube video about mauricer](https://youtu.be/Yk737gorcrw)


## Package dependencies

<!-- markdownlint-disable MD013 -->

Package                                                                     |[![Codecov logo](man/figures/Codecov.png)](https://about.codecov.io/)
----------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------
[beastier](https://github.com/ropensci/beastier)                            |[![codecov.io](https://codecov.io/github/ropensci/beastier/coverage.svg?branch=master)](https://app.codecov.io/github/ropensci/beastier/branch/master)

<!-- markdownlint-enable MD013 -->

## Related packages

<!-- markdownlint-disable MD013 -->

Package                                         |[![Codecov logo](man/figures/Codecov.png)](https://about.codecov.io/)
------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------
[babette](https://github.com/ropensci/babette)  |[![codecov.io](https://codecov.io/github/ropensci/babette/coverage.svg?branch=master)](https://app.codecov.io/github/ropensci/babette/branch/master)
[beautier](https://github.com/ropensci/beautier)|[![codecov.io](https://codecov.io/github/ropensci/beautier/coverage.svg?branch=master)](https://app.codecov.io/github/ropensci/beautier/branch/master)
[lumier](https://github.com/ropensci/lumier)    |[![codecov.io](https://codecov.io/github/ropensci/lumier/coverage.svg?branch=master)](https://app.codecov.io/github/ropensci/lumier/branch/master)
[tracerer](https://github.com/ropensci/tracerer)|[![codecov.io](https://codecov.io/github/ropensci/tracerer/coverage.svg?branch=master)](https://app.codecov.io/github/ropensci/tracerer/branch/master)

Package                                                                        | Status
-------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
[mauricer_on_windows](https://github.com/richelbilderbeek/mauricer_on_windows) |[![Build status](https://ci.appveyor.com/api/projects/status/bc43iwp68xo2dduh/branch/master?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/mauricer-on-windows/branch/master)

[![ropensci_footer](https://ropensci.org/public_images/ropensci_footer.png)](https://ropensci.org)

<!-- markdownlint-enable MD013 -->


## Files used by continuous integration scripts

<!-- markdownlint-disable MD013 -->

Filename                              |Descriptions
--------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
[`mlc_config.json`](mlc_config.json)    |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[`.spellcheck.yml`](.spellcheck.yml)    |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[`.wordlist.txt`](.wordlist.txt)        |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[`.markdownlint.jsonc`](.markdownlint.jsonc)|Configuration of the Markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
[`.markdownlintignore`](.markdownlintignore)|Files ignored by the Markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.

<!-- markdownlint-enable MD013 -->

## Links

* ['mauricer' CRAN page](https://CRAN.R-project.org/package=mauricer)

