\name{bt.feyrer.2020}
\docType{data}
\alias{bt.feyrer.2020}
\title{Otolith chemistry chronicles life histories of coastal lagoon fishes}
\description{This study examined the habitat ecology of two lagoon species, the endangered Tidewater Goby (\emph{Eucyclogobius newberryi}) and the Prickly Sculpin (\emph{Cottus asper}) by reconstructing individual life histories from patterns in the concentration of the element Sr (as ratioed to Ca; Sr:Ca) in otoliths.Specific objectives were to (1) elucidate any movements of individual fishes among three primary habitat components of typical bar-built lagoon systems: coastal ocean, brackish lagoon, and freshwater watershed streams, and (2) determine if either species exhibited a standard life history as defined by a prototypical otolith Sr:Ca chronology, which could be indicative of a standard range of salinity or temperature occupied through ontogeny.}
\usage{
bt.feyrer.2020
}
\format{The data frame 5,734 × 11 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{integer} \tab fish identifier \cr
\bold{distance}  \tab \code{numeric} \tab distance from the core to the edge of otolith (microns) \cr
\bold{value}  \tab \code{numeric} \tab Sr:Ca or Mn:Ca \cr
\bold{element}  \tab \code{character} \tab trace element \cr
\bold{common_name}  \tab \code{character} \tab species common name \cr
\bold{scientific_name}  \tab \code{character} \tab species scientific name \cr
\bold{location}  \tab \code{character} \tab location of capture \cr
\bold{date}  \tab \code{character} \tab date of capture \cr
\bold{standard_length}  \tab \code{numeric} \tab standard length (mm) \cr
\bold{weight}  \tab \code{numeric} \tab fish weight (g) \cr
\bold{otolith_radius}  \tab \code{numeric} \tab otolith_radius (microns)
}
}
\details{
   This dataset contains otolith elemental raw data of two coastal lagoon fishes from around the
perimeter of Rodeo Lagoon following a hypoxia-induced fish kill that occurred on 08 August 2016. Additional Prickly Sculpins were collected on 12 April 2016 from Rodeo Lagoon using a beach seine and from Rodeo Creek using a minnow trap. In total, 14 Tidewater Gobies (mean standard length = 40 mm, standard deviation = 2) and 10 Prickly Sculpins (mean standard length = 62 mm, standard deviation = 12) were examined.

Instrument: SXFM (scanning x-ray fluorescence imaging)
}
\source{

Feyrer, F., Young, M., Fong, D., Limburg, K., & Johnson, R. (2020). Cryptic Lives of Conspicuous Animals: Otolith Chemistry Chronicles Life Histories of Coastal Lagoon Fishes. \emph{Frontiers in Marine Science}, \bold{7}, 417.
\verb{https://doi.org/10.3389/fmars.2020.00417}

Data availability are available at \verb{https://doi.org/10.5066/P9PZMELL}

Traversing the paper's information via Semantic Scholar ID \verb{57c668a6b12ca55f2534f448db15ddbe8212c2f9} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.feyrer.2020
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### otolith sr/ca
ggplot(data = dat[which(dat$element == "Sr_Ca" & dat$value < 0.02), ],
       aes(distance, value)) +
  geom_line(aes(colour = common_name, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(common_name ~ ., scales = "free_y") +
  xlab("Distance from the core to the edge of otolith (mm)") +
  ylab("Otolith Sr:Ca") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
### otolith mn/ca
ggplot(data = dat[which(dat$element == "Mn_Ca" & dat$value < 0.001),],
       aes(distance, value)) +
  geom_line(aes(colour = common_name, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(common_name ~ ., scales = "free_y") +
  xlab("Distance from the core to the edge of otolith (mm)") +
  ylab("Otolith Mn:Ca") +
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
\concept{Sr/Ca}
\concept{Mn/Ca}
\section{Concepts}{
   otolith, trace element, Sr/Ca, Mn/Ca
}
