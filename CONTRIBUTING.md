# Contributing

Awesome that you are reading this.

This GitHub follows the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md).

* For questions, you can create an Issue
* Code changes go via Pull Requests

## Which package to contribute to?

`maurcer` is part of the `babette` package suite,
which consists out of five packages.
Here is how to determine which package is best suited for your contribution:

If you want to contribute to the creation of BEAST2 XML input file,
go to [beautier](https://github.com/ropensci/beautier/blob/master/CONTRIBUTING.md).

If you want to contribute to how BEAST2 is run,
go to [beautier](https://github.com/ropensci/beautier/blob/master/CONTRIBUTING.md).

If you want to contribute to how BEAST2 output is parsed,
go to [tracerer](https://github.com/ropensci/tracerer/blob/master/CONTRIBUTING.md)

If you want to contribute how these packages work together,
go to [babette](https://github.com/ropensci/babette/blob/master/CONTRIBUTING.md)

If you want to contribute regarding the BEAST2 package management,
you are at the right spot :-)

## Submitting code

Submitted code should follow these quality guidelines:

* All tests pass cleanly/silently
* Code coverage must be 100%
* Coding style should follow the default style by `lintr`

These are all checked by Travis CI when submitting
a Pull Request.

Emails with code will not be accepted.

## Submitting bugs

Awesome. These are your options:

* Add an Issue, with the test that fails
* Submit a Pull Request, where the test is added to the `tests/testthat` folder
* Send @richelbilderbeek an email (@richelbilderbeek will make an Issue of it)

Pull Requests should follow the same guidelines as 'Submitting code'.

## Branching policy

* The `master` branch should always build successfully
* The `development` branch is for developers

## git usage

To get started working on `babette` do:

```bash
git clone https://github.com/ropensci/babette
```

Development is done on the `develop` branch.
To download and checkout the `develop` branch,
first go into the `beautier` folder (`cd babette`), then do:

```bash
git checkout develop
```

Then the workflow is the common `git` workflow:

```bash
git pull
git add --all :/
git commit -m "Did something awesome"
git push
```

