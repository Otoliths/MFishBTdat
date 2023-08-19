\name{bt.limburg.2015}
\docType{data}
\alias{bt.limburg.2015}
\title{Use of otoliths for tracking fish exposure to hypoxia}
\description{Otolith chemistry is often useful for tracking provenance of fishes, as well as examining migration histories.
Whereas elements such as strontium and barium correlate well with salinity and temperature, experiments that
examine manganese uptake as a function of these parameters have found no such correlation. Instead, dissolved
manganese is available as a redox product, and as such, is indicative of low-oxygen conditions. Here the authors present
evidence for thatmechanism in a range of habitats frommarine to freshwater, across species, and also present ancillary
proxies that support the mechanism as well.}
\usage{
bt.limburg.2015
}
\format{The data frame 13,843 × 10 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{integer} \tab fish identifier \cr
\bold{species}  \tab \code{character} \tab scientic name \cr
\bold{common_name}  \tab \code{character} \tab common name \cr
\bold{system}  \tab \code{character} \tab location of capture \cr
\bold{status}  \tab \code{character} \tab habitat of capture (Normoxic or Hypoxic) \cr
\bold{distance}  \tab \code{integer} \tab distance from otolith core, microns \cr
\bold{mn_ca}  \tab \code{numeric} \tab otolith mn:ca
}
}
\details{
   These data are transects of Mn:Ca ratios measured on otoliths of 19 Atlantic croaker \emph{Micropogonias
undulatus}, 20 Baltic flounder \emph{Platichthys flesus} , and 12 yellow perch (YP) \emph{Perca flavescens} .
Negative distances on some transects are data extracted from longer transects that went "edge to edge"
on an otolith, crossing the core, which was designated as zero. Data collected to the left of the core were by default given negative distance values. Mn and Ca are expressed in mass, not molar, ratios.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Beam diameter: 35-75um

Scan speed: 3-5um/s

Reference materials: NIST-612 (National Institutes of Standards and Technology glass standard) and MACS-3 (United States Geological Survey microanalytical carbonate standard pressed pellet)
}
\source{
Limburg, K. E., Walther, B. D., Lu, Z., Jackman, G., Mohan, J., Walther, Y., ... & Schmitt, A. K. (2015). In search of the dead zone: use of otoliths for tracking fish exposure to hypoxia. \emph{Journal of Marine Systems}, \bold{141}, 167-178.
\verb{https://doi.org/10.1016/J.JMARSYS.2014.02.014}

Data availability are available at \verb{https://ars.els-cdn.com/content/image/1-s2.0-S0924796314000438-mmc1.pdf}

Traversing the paper's information via Semantic Scholar ID \verb{1d926323b07c59e8808b0c36d61d06b3a56c1454} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.limburg.2015
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### otolith sr/ca
ggplot(data = dat, aes(distance, mn_ca*1000)) +
  geom_line(aes(colour = species, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(species ~ status, scales = "free_y") +
  xlab("Distance from otolith core, microns") +
  ylab("Otolith Mn/Ca (x1000)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
}
}
\keyword{datasets}
\concept{otolith}
\concept{trace element}
\concept{Mn/Ca}
\section{Concepts}{
   otolith, trace element, Mn/Ca
}
