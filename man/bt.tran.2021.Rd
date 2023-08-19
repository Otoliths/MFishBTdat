\name{bt.tran.2021}
\docType{data}
\alias{bt.tran.2021}
\title{Natal origin and migration pathways of Mekong catfish}
\description{This study highlighted the importance of using both Sr/Ca and 87Sr/86Sr ratios to understand life history of anadromous fishes as the 87SR/ 86Sr ratio in the water was shown to be less effective than the Sr/ Ca ratio in identifying movements between different saline areas.}
\usage{
bt.tran.2021
}
\format{The data frame 4,641 × 4 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab fish identifier \cr
\bold{distance} \tab \code{numeric}   \tab distance from the core to the edge of otolith (um) \cr
\bold{oto_sr8786} \tab \code{numeric}   \tab otolith 87Sr/86Sr (permil) \cr
\bold{location}  \tab \code{character} \tab location of capture
}
}
\details{
  The dataset contains 87Sr/86Sr values in otoliths of 27 individual \emph{Pangasius krempfi} (47.8 to 84.5 cm total length) were collected from March-August 2017 (24 individuals) and in April 2018 (3 individuals) in the Mekong Delta. The fish were collected on landing or in markets in Binh Dai city (18 individuals, coded BD01 to BD18), My Tho city (7 individuals, MT01 to MT07) and Dinh An city (2 individuals, DA01 and DA02).

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry);LA-MC-ICP-MS (laser ablation multi-collector inductively coupled plasma mass spectrometry)

Reference materials: MACS-3 (United States Geological Survey microanalytical carbonate standard pressed pellet)
}
\source{
Tran, N. T.  Labonne, M.  Chung, M. T.  Wang, C. H.  Huang, K. F.  Durand, J. D.  . . & Panfili, J. (2021). Natal origin and migration pathways of Mekong catfish (Pangasius krempfi) using strontium isotopes and trace element concentrations in environmental water and otoliths. \emph{PloS One}, \bold{16}(6), e0252769. \verb{https://doi.org/10.1371/journal.pone.0252769}

Traversing the paper's information via Semantic Scholar ID \verb{fe0dd27155562d6f808969155187de1e3c1dc035} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.tran.2021
tibble::tibble(dat)

\dontrun{

library(dplyr)
library(ggplot2)

### Sr stable isotope
ggplot(data = dat, aes(distance, oto_sr8786)) +
  geom_line(aes(colour = location, group = fish_id), show.legend = F) +
  facet_grid(location ~. ,scales = "free_y")+
  labs(
    x = expression(paste("Distance from the core to the edge of otolith (", mu, "m)", sep = "")),
    y = expression(paste(
      {}^"87",
      "Sr/",
      {}^"86",
      "Sr"
    ))
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  ) +
  scale_x_continuous(breaks = c(0, 200, 400, 600, 800, 1000))
}
}
\keyword{datasets}
\concept{otolith}
\concept{vertebra}
\concept{trace element}
\concept{stable isotope}
\concept{Sr8786}
\concept{Sr/Ca}
\concept{d34S}
\section{Concepts}{
   otolith, vertebra, trace element, stable isotope, Sr8786, Sr/Ca, d34S
}
