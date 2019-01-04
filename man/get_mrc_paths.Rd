% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_paths.R
\name{get_mrc_paths}
\alias{get_mrc_paths}
\title{Get the full paths of files in the 'inst/extdata' folder}
\usage{
get_mrc_paths(filenames)
}
\arguments{
\item{filenames}{the files' names, without the path}
}
\value{
the filenames' full paths, if and only if
  all files are present. Will stop otherwise.
}
\description{
Get the full paths of files in the 'inst/extdata' folder
}
\examples{
  testit::assert(
    length(
      get_mrc_paths(
        c("anthus_aco_sub.fas", "anthus_nd2_sub.fas")
      )
     ) == 2
   )
}
\seealso{
for one file, use \code{\link{get_mrc_path}}
}
\author{
Richel J.C. Bilderbeek
}