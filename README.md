# mauricer

[![Peer Review Status](https://badges.ropensci.org/209_status.svg)](https://github.com/ropensci/onboarding/issues/209)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/mauricer)](https://cran.r-project.org/package=mauricer)
[![](http://cranlogs.r-pkg.org/badges/grand-total/mauricer)]( https://CRAN.R-project.org/package=mauricer)
[![](http://cranlogs.r-pkg.org/badges/mauricer)](https://CRAN.R-project.org/package=mauricer)

Branch   |[![GitHub Actions logo](man/figures/GitHubActions.png)](https://github.com/ropensci/mauricer/actions)|[![Travis CI logo](man/figures/TravisCI.png)](https://travis-ci.org)                                                  |[![Codecov logo](man/figures/Codecov.png)](https://www.codecov.io)
---------|-----------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------
`master` |![R-CMD-check](https://github.com/ropensci/mauricer/workflows/R-CMD-check/badge.svg?branch=master)   |[![Build Status](https://travis-ci.org/ropensci/mauricer.svg?branch=master)](https://travis-ci.org/ropensci/mauricer) |[![codecov.io](https://codecov.io/github/ropensci/mauricer/coverage.svg?branch=master)](https://codecov.io/github/ropensci/mauricer/branch/master)
`develop`|![R-CMD-check](https://github.com/ropensci/mauricer/workflows/R-CMD-check/badge.svg?branch=develop)  |[![Build Status](https://travis-ci.org/ropensci/mauricer.svg?branch=develop)](https://travis-ci.org/ropensci/mauricer)|[![codecov.io](https://codecov.io/github/ropensci/mauricer/coverage.svg?branch=develop)](https://codecov.io/github/ropensci/mauricer/branch/develop)

Work with BEAST2 packages from R.

Related packages:

 * [babette](https://github.com/ropensci/babette) do a full BEAST2 workflow.
 * [beautier](https://github.com/ropensci/beautier) creates BEAST2 input (`.xml`) files.
 * [beastier](https://github.com/ropensci/beastier) runs BEAST2
 * [lumier](https://github.com/ropensci/lumier) helps to create the `babette` function call needed
 * [tracerer](https://github.com/ropensci/tracerer) parses BEAST2 output (`.log`, `.trees`, etc) files.

Non-CRAN extensions:

 * [mauricerinstall](https://github.com/richelbilderbeek/mauricerinstall) Install and uninstall BEAST2 packages

## Examples

To install the BEAST2 NS package:

```
remotes::install_github("richelbilderbeek/mauricerinstall")
mauricerinstall::install_beast2_pkg("NS")
```

An intoduction video:

 * [YouTube video about mauricer](https://youtu.be/Yk737gorcrw)


## Package dependencies

Package                                                                     |[![Travis CI logo](man/figures/TravisCI.png)](https://travis-ci.org)                                                 |[![Codecov logo](man/figures/Codecov.png)](https://www.codecov.io)
----------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------
[beastier](https://github.com/ropensci/beastier)                            |[![Build Status](https://travis-ci.org/ropensci/beastier.svg?branch=master)](https://travis-ci.org/ropensci/beastier)|[![codecov.io](https://codecov.io/github/ropensci/beastier/coverage.svg?branch=master)](https://codecov.io/github/ropensci/beastier/branch/master)

## Related packages

Package                                         |[![Travis CI logo](man/figures/TravisCI.png)](https://travis-ci.org)                                                 |[![Codecov logo](man/figures/Codecov.png)](https://www.codecov.io)
------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------
[babette](https://github.com/ropensci/babette)  |[![Build Status](https://travis-ci.org/ropensci/babette.svg?branch=master)](https://travis-ci.org/ropensci/babette)  |[![codecov.io](https://codecov.io/github/ropensci/babette/coverage.svg?branch=master)](https://codecov.io/github/ropensci/babette/branch/master)
[beautier](https://github.com/ropensci/beautier)|[![Build Status](https://travis-ci.org/ropensci/beautier.svg?branch=master)](https://travis-ci.org/ropensci/beautier)|[![codecov.io](https://codecov.io/github/ropensci/beautier/coverage.svg?branch=master)](https://codecov.io/github/ropensci/beautier/branch/master)
[lumier](https://github.com/ropensci/lumier)    |[![Build Status](https://travis-ci.org/ropensci/lumier.svg?branch=master)](https://travis-ci.org/ropensci/lumier)    |[![codecov.io](https://codecov.io/github/ropensci/lumier/coverage.svg?branch=master)](https://codecov.io/github/ropensci/lumier/branch/master)
[tracerer](https://github.com/ropensci/tracerer)|[![Build Status](https://travis-ci.org/ropensci/tracerer.svg?branch=master)](https://travis-ci.org/ropensci/tracerer)|[![codecov.io](https://codecov.io/github/ropensci/tracerer/coverage.svg?branch=master)](https://codecov.io/github/ropensci/tracerer/branch/master)

Package                                                                        | Status
-------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
[mauricer_on_windows](https://github.com/richelbilderbeek/mauricer_on_windows) |[![Build status](https://ci.appveyor.com/api/projects/status/bc43iwp68xo2dduh/branch/master?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/mauricer-on-windows/branch/master)

[![ropensci_footer](https://ropensci.org/public_images/ropensci_footer.png)](https://ropensci.org)

