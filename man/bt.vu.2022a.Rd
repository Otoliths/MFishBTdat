\name{bt.vu.2022a}
\docType{data}
\alias{bt.vu.2022a}
\title{Life history strategies of Mekong pangasiid catfishes*}
\description{In order to examine the life-history strategies of key pangasiid catfishes in the
Mekong River, the authors collected otoliths from 126 specimens belonging to four species in the Lower Mekong Basin. The authors analysed the otolith microchemical structure using two methods (Laser Ablation-Inductively Coupled Plasma Mass Spectrometry and Scanning X-ray Fluorescence Microscopy) to identify evidence of diadromy
(movements between the ocean and upstream waters).}
\usage{
bt.vu.2022a
}
\format{The data frame 27,522 × 13 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab shark identifier \cr
\bold{species}  \tab \code{character} \tab mekong pangasiid catfishes \cr
\bold{distance}  \tab \code{numeric} \tab distance from core to edge of otolith (um) \cr
\bold{value}  \tab \code{numeric} \tab otolith element(E):Ca
(Ba/Ca x1000;Sr/Ca x1000)
\cr
\bold{element}  \tab \code{character} \tab sr_ca or ba_ca \cr
\bold{technology}  \tab \code{character} \tab analysis technology \cr
\bold{sampling_date}  \tab \code{character} \tab date of sampling \cr
\bold{latitude}  \tab \code{numeric} \tab latitude of capture \cr
\bold{longitude}  \tab \code{numeric} \tab longitude of capture \cr
\bold{length}  \tab \code{numeric} \tab body length (cm) \cr
\bold{weight}  \tab \code{numeric} \tab body weight (g) \cr
\bold{sex}  \tab \code{character} \tab fish sex \cr
\bold{sectioning_plane}  \tab \code{character} \tab sectioning plane
}
}
\details{
   The dataset contains element(E):Ca from otolith core–edge transects of Mekong pangasiid catfishes (\emph{Pangasius bocourti}, \emph{Pangasius elongatus}, \emph{Pangasius krempfi}, and \emph{Pangasius mekongensis}).

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry);SXFM (scanning x-ray fluorescence imaging)

Beam diameter: 25-30um

Scan speed: 3-10um/s

Reference materials: NIST-612 (National Institutes of Standards and Technology glass standard) and MACS-3 (United States Geological Survey microanalytical carbonate standard pressed pellet)

   Note: data extraction via WebPlotDigitizer tool (Title with * label).
}
\source{
Vu, A. V., Baumgartner, L. J., Limburg, K. E., Doran, G. S., Mallen-Cooper, M., Gillanders, B. M., ... & Cowx, I. G. (2022). Life history strategies of Mekong pangasiid catfishes revealed by otolith microchemistry. \emph{Fisheries Research}, \bold{249}, 106239.\verb{https://doi.org/10.1016/j.fishres.2022.106239}

Vu, A. V. (2022). Diversity in migration patterns of selected Mekong River fishes. Charles Sturt University. \verb{https://researchoutput.csu.edu.au/en/publications/diversity-in-migration-patterns-of-selected-mekong-river-fishes}

Traversing the paper's information via Semantic Scholar ID \verb{8adc040f8c2d7913571ecf8f5cd2f3ae282c339f} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.vu.2022a
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### otolith ba/ca
ggplot(data = dat[which(dat$element == "Ba_Ca"), ],
       aes(distance, value)) +
  geom_line(aes(colour = species, group = fish_id),
            show.legend = F, na.rm = T) +
  facet_grid(species ~ ., scales = "free_y") +
  xlab("Distance from core to edge of otolith (um)") +
  ylab("Ba/Ca (umol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
### otolith sr/ca
ggplot(data = dat[which(dat$element == "Sr_Ca"), ],
       aes(distance, value)) +
  geom_line(aes(colour = species, group = fish_id),
            show.legend = F, na.rm = T) +
  facet_grid(species ~ ., scales = "free_y") +
  xlab("Distance from core to edge of otolith (um)") +
  ylab("Sr/Ca (mmol/mol)") +
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
\concept{Ba/Ca}
\concept{Sr/Ca}
\section{Concepts}{
   otolith, trace element, Ba/Ca, Sr/Ca
}
