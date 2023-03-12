\name{dat_search}
\alias{dat_search}
\title{Search Function for the Datasets}
\description{Function to search among the existing datasets.}
\usage{
dat_search(pattern, concept = TRUE, matchall = TRUE, fixed = TRUE, pkgdown = FALSE)
}
\arguments{
   \item{pattern}{character string or vector of strings specifying the terms to search for within the datasets. Can also be left unspecified to start the function in an interactive mode.}
   \item{concept}{logical indicating whether the search should be confined to the concept terms (\code{TRUE} by default) or whether a full-text search should be conducted.}
   \item{matchall}{logical indicating whether only the datasets matching all terms (if multiple are specified) are returned (\code{TRUE} by default) or whether datasets matching any one of the terms are returned.}
   \item{fixed}{logical indicating whether a term is a string to be matched as is (\code{TRUE} by default). If \code{FALSE}, a search term is a regular expression that \code{\link{grep}} will search for. Only relevant when \code{concept=FALSE} (i.e., when doing a full-text search).}
   \item{pkgdown}{logical indicating whether the standard help file or the pkgdown docs (at \url{https://wviechtb.github.io/metadat/}) should be shown for a chosen dataset (\code{FALSE} by default).}
}
\details{
   The function can be used to search all existing datasets in the \pkg{metadat} package based on their concept terms (see below) or based on a full-text search of their corresponding help files.

   When running \code{dat_search()} without the \code{pattern} argument specified, the function starts in an interactive mode and prompts for one or multiple search terms.

   Alternatively, one can specify a single search term via the \code{pattern} argument or multiple search terms by using a string vector as the \code{pattern} or by separating multiple search terms in a single string with \sQuote{,}, \sQuote{;}, or \sQuote{and}.

   If \code{matchall=TRUE} (the default), only datasets matching all search terms (if multiple are specified) are returned. If \code{matchall=FALSE}, datasets matching any one of the search terms are returned.

   If a single match is found, the corresponding help file is directly shown. If multiple matches are found, the user is prompted to choose one of the matching datasets of interest.

   \bold{Concept Terms}

   Each dataset is tagged with one or multiple concept terms that refer to various aspects of a dataset, such as the biogeochemical tags, the biomineral archives/structures, the microchemical/isotopic elements, and the FAO major fishing areas that can be illustrated with the dataset.

   \itemize{
      \item In terms of \sQuote{biogeochemical tags}, the following terms have been used at least once: bulk elements,isotopic ratios.
      \item In terms of \sQuote{biomineral archives/structures}, the following terms have been used at least once: otolith, scale, eye lenses, vertebra.
      \item In terms of \sQuote{microchemical/isotopic elements}, the following terms have been used at least once: H: Hydrogen; Li: Lithum; Be: Beryllium; B: Boron; C: Carbon; N: Nitrogen; O: Oxygen;
F: Fluorine; Na: Sodium; Mg: Magnesium; Al: Aluminium; Si: Silicon; P: Phosphorus;
S: Sulfur; Cl: Chlorlne; K: Potassium; Ca: Calcium; Sc: Scandium; Ti: Titanium;
V: Vanadium; Cr: Chromium; Mn: Manganum; Fe: Iron; Co: Cobalt; Ni: Nickel;
Cu: Copper; Zn: Zinc; Ga: Gallium; Ge: Germanium; As: Arsenic; Se: Selenium;
Br: Bormine; Kr: Krypton; Rb: Rubidium; Sr: Strontium; Y: Yttrium; Zr: Zirconium;
Nb: Niobium; Mo: Molybdanium; Tc: Technetium; Pd: Palladium; Ag: Silver;
Cd: Cadmium; In: Inlium; Sn: Tin; Sb: Antimony; I: Iodine; Cs: Caesium;
Ba: Barium; Hf: Hafnium; W: Tungsten; Os: Osmium; Au: Gold; Hg: Mercury;
Tl: Thallium; Pb: Lead; Bi: Bismuth; At: Astatium; Ra: Radium; La: Lanthanum;
Ce: Cerium; Pr: Praseodymium; Nd: Neodymium; Sm: Samarium; Gd: Gadolinium;
Tb: Terbium; Dy: Dysprosium; Ho: Holmium; Er: Erbium; Tm: Thulium; Yb: Ytterbium;
Lu: Lrtetium; Th: Thorium; Pa: Protactinium; U: Uranium;
d34S; d13C; d15N; d18O; Sr8786;
Sr/Ca; elements(E)/Ca;
more elements were available from \url{https://periodictable.com}.
      \item In terms of \sQuote{FAO major fishing areas}, the following terms have been used at least once: Africa, North America, South America, Asia, Europe, Oceania, Antarctica, Arctic sea, Northwest Atlantic, Northeast Atlantic, Western Central Atlantic,
Eastern Central Atlantic, Mediterranean and Black sea, Southwest Atlantic,
Southeast Atlantic, Antarctic Atlantic, Western Indian Ocean, Eastern Indian Ocean,
Antarctic Indian Ocean, Northwest Pacific, Northeast Pacific, Western Central Pacific,
Eastern Central Pacific, Southwestern Pacific, Southeastern Pacific, Antarctic Pacific.
   }
}
\author{
   Liuyong Ding, \email{ly_ding@126.com} \cr
   Bangli Tang, \email{tangbangli9@gmail.com}
}
\examples{
# note: the examples below are not run since they require interactivity

if (FALSE) {

   # start the function in the interactive mode
   dat_search()

   # find all datasets tagged with the concept term 'otolith'
   dat_search("otolith")

   # find all datasets tagged with the concept terms 'otolith' and 'sr'
   dat_search("otolith, Sr8786")

   # do a full-text search for the term 'infarct'
   dat_search("Sr8786", concept=FALSE)

   # do a full-text search for 'rma.mv(' (essentially finds all datasets where
   # the rma.mv() function was used in the examples section of a help file)
   dat_search("rma.mv(", concept=FALSE)

}
}
\source{This function source from the \emph{datsearch} of \bold{metadat} \url{https://github.com/wviechtb/metadat}
}

\keyword{file}
