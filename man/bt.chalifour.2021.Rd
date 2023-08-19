\name{bt.chalifour.2021}
\docType{data}
\alias{bt.chalifour.2021}
\title{Quantifying estuarine habitat use of Chinook salmon via otolith analyses}
\description{The authors use genetic stock identification and otolith analyses to quantify estuarine habitat use by Chinook salmon (\emph{Oncorhynchus tshawytscha})-the Pacific salmon species considered most reliant on this habitat-in Canada's most productive salmon river, the Fraser River.}
\usage{
bt.chalifour.2021
}
\format{The data frame 91 × 8 contains the following columns:
\tabular{lll}{
\bold{fishid}  \tab \code{integer} \tab fish identifier \cr
\bold{habitat}  \tab \code{character} \tab habitat type \cr
\bold{forklength_mm}     \tab \code{numeric}   \tab fork length (mm) \cr
\bold{side}  \tab \code{character} \tab otolith side (L or R) \cr
\bold{sr_edge}     \tab \code{numeric}   \tab sr/ca of otolith edge (mmol/mol) \cr
\bold{ba_edge}     \tab \code{numeric}   \tab ba/ca of otolith edge (umol/mol) \cr
\bold{sr_core}     \tab \code{numeric}   \tab sr/ca of otolith core (mmol/mol) \cr
\bold{ba_core}     \tab \code{numeric}   \tab ba/ca of otolith core (umol/mol)
}
}
\details{
Sr:Ca at the otolith edge increases, and Ba:Ca at the otolith edge decreases with increasing residency in the estuary. This suggests that tidal fluctuations in the estuary and an ontogenetic shift outward towards more saline habitats influence otolith microchemistry over time as the fish reside in this estuarine environment.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Beam diameter: 30um

Scan speed: 5um/s

Reference materials: NIST611, NIST613, NIST615 (National Institutes of Standards and Technology glass standard)
}
\source{
Chalifour, L., Scott, D. C., MacDuffee, M., Stark, S., Dower, J. F., Beacham, T. D., ... & Baum, J. K. (2021). Chinook salmon exhibit long-term rearing and early marine growth in the Fraser River, British Columbia, a large urban estuary. \emph{Canadian Journal of Fisheries and Aquatic Sciences}, \bold{78}(5), 539-550. \verb{https://doi.org/10.1139/cjfas-2020-0247}

Sturrock, A. M., Wikert, J. D., Heyne, T., Mesick, C., Hubbard, A. E., Hinkelman, T. M., ... & Johnson, R. C. (2015). Reconstructing the migratory behavior and long-term survivorship of juvenile Chinook salmon under contrasting hydrologic regimes. \emph{PLoS One}, \bold{10}(5), e0122380.

Code and data availability are available at \verb{https://github.com/baumlab/Chalifour_etal_2021_CJFAS}

Traversing the paper's information via Semantic Scholar ID \verb{a9b228af81e0e3ac67d0f621adbc10fc55b1fb1a} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.chalifour.2021
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### otolith core
ggplot(data = dat, aes(sr_core, ba_core)) +
  geom_point(aes(col = habitat), show.legend = F, na.rm = T) +
  facet_grid(. ~ habitat) +
  xlab("Sr/Ca of otolith core (mmol/mol)") +
  ylab("Ba/Ca of otolith core (umol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### otolith edge
ggplot(data = dat, aes(sr_edge, ba_edge)) +
  geom_point(aes(col = habitat), show.legend = F, na.rm = T) +
  facet_grid(. ~ habitat) +
  xlab("Sr/Ca of otolith edge (mmol/mol)") +
  ylab("Ba/Ca of otolith edge (umol/mol)") +
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
\concept{Ba/Ca}
\section{Concepts}{
   otolith, trace element, Sr/Ca, Ba/Ca
}
