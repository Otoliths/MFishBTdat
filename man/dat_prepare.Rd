\name{dat_prepare}
\alias{dat_prepare}
\title{Data preparation function}
\description{Function to run data processing scripts.}
\usage{
dat_prepare(rebuild = FALSE, overwrite, pkgdir)
}
\arguments{
   \item{rebuild}{logical indicating whether the entire database should be rebuild (default is \code{FALSE}).}
   \item{overwrite}{character vector with one or more \code{.Rd} filenames to overwrite (if they already exist). The default is to never overwrite any existing \code{.Rd} files.}
   \item{pkgdir}{character string specifying the root directory of the source package (if unspecified, the current working directory is assumed to be the package root directory).}
}
\details{
   The function is only for used for processing new datasets for inclusion in the package. It should be used as described on the \pkg{\link{MFishBTdat-package}} help page.
}
\author{
   Liuyong, Ding \email{ly_ding@126.com}
}
\source{This function source from the \emph{prep_dat} of \bold{metadat} \url{https://github.com/wviechtb/metadat}
}
\keyword{file}
