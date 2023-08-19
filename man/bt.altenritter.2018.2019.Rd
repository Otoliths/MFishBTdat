\name{bt.altenritter.2018.2019}
\docType{data}
\alias{bt.altenritter.2018.2019}
\title{Atlantic croaker otolith geochemical concentrations}
\description{
Consequences of sub-lethal hypoxia exposure for teleosts tracked with biogeochemical markers: a trans-basin comparison.}
\usage{
bt.altenritter.2018.2019
}
\format{The data frame 820,891 × 9 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab fish identifier,number of each individual fish \cr
\bold{distance}  \tab \code{numeric} \tab otolith transect distance traversed by laser; distance across the otolith (um) \cr
\bold{mg_m24}  \tab \code{numeric} \tab concentration of Magnesium isotope 24, parts per million (ppm) \cr
\bold{mg_m25}  \tab \code{numeric} \tab concentration of Magnesium isotope 25, parts per million (ppm) \cr
\bold{mn_m55}  \tab \code{numeric} \tab concentration of Manganese isotope 55, parts per million (ppm) \cr
\bold{sr_m88}  \tab \code{numeric} \tab concentration of Strontium isotope 88, parts per million (ppm) \cr
\bold{in_115}  \tab \code{numeric} \tab concentration of Indium isotope 115, parts per million (ppm) \cr
\bold{i_m127}  \tab \code{numeric} \tab concentration of Iodine isotope 127, parts per million (ppm) \cr
\bold{ba_m138}  \tab \code{numeric} \tab concentration of Barium isotope 138, parts per million (ppm)
}
}
\details{
Geochemical concentrations (ppm) of six elements measured in otoliths of Atlantic croaker sampled on board of the R/V Oregon II during the NOAA Seamap Fall Groundfish Survey of 2014 (Oct 10 to Nov 4) and 2015 (Oct 8 to Nov 22).

Otolith element concentrations for each individual fish (labeled as “HMU ####”) were measured at the University of Austin, Jackson School of Geosciences using laser ablation inductively coupled mass spectrometry.  Standard reference materials included a National Institutes of Standards and Technology glass standard (NIST-612) and a United States Geological Survey microanalytical carbonate standard pressed pellet (MACS-3). Otolith element concentrations were quantified along the longest dorso-ventral axis spanning the core (i.e. hatch) to the edge (i.e. death). Please reference Altenritter et al. (2018) and Altenritter and Walther (2019) for detailed information on sampling and analysis, instrumentation, and data processing.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Beam diameter: 25um

Scan speed: 5um/s

Reference materials: NIST-612 (National Institutes of Standards and Technology glass standard) and MACS-3 (United States Geological Survey microanalytical carbonate standard pressed pellet)
}
\source{

Altenritter, M. E., & Walther, B. D. (2019). The Legacy of Hypoxia: Tracking Carryover Effects of Low Oxygen Exposure in a Demersal Fish Using Geochemical Tracers. \emph{Transactions of the American Fisheries Society}, \bold{148}(3), 569–583. \verb{https://doi.org/10.1002/tafs.10159}

Altenritter, M., Cohuo, A., & Walther, B. (2018). Proportions of demersal fish exposed to sublethal hypoxia revealed by otolith chemistry. \emph{Marine Ecology Progress Series}, \bold{589}, 193–208. \verb{https://doi.org/10.3354/meps12469}

Data availability are available at \verb{https://www.bco-dmo.org/dataset/784969}

Data availability are available at \verb{https://doi.org/10.26008/1912/bco-dmo.784969.1}

Traversing the paper's information via Semantic Scholar ID \verb{959aa4c423a8e4a052877c672889f51c3ebda532;
eabf95501fd3accc84e69120dfb2a15e0570f436} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.altenritter.2018.2019
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)


### otolith Sr/Ba
ggplot(data = dat, aes(distance, sr_m88/ba_m138)) +
  geom_line(aes(group = fish_id), show.legend = F, na.rm = T) +
  xlab("Distance across the otolith (um)") +
  ylab("otolith sr/ba") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
### otolith Mg24/Mg25
ggplot(data = dat, aes(distance, mg_m24/mg_m25)) +
  geom_line(aes(group = fish_id), show.legend = F, na.rm = T) +
  xlab("Distance across the otolith (um)") +
  ylab(expression(Mg * ""^24 * "/" * Mg * ""^25)) +
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
\concept{Sr/Ba}
\concept{Mn}
\concept{Mg}
\concept{I}
\concept{In}
\section{Concepts}{
   otolith, trace element, Sr/Ba, Mn, Mg, I, In
}
