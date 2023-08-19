\name{bt.mohan.2018}
\docType{data}
\alias{bt.mohan.2018}
\title{Vertebral sclerochronology in shark*}
\description{Vertebral sclerochronology has the potential to advance knowledge of elasmobranch life history including age and growth estimation and environmental reconstruction, and regular oscillations in vertebrae manganese (Mn) content corresponded well with the number of validated band pairs, suggesting that Mn variation could be used to age sharks.}
\usage{
bt.mohan.2018
}
\format{The data frame 11,118 × 12 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab shark identifier \cr
\bold{vert_sample_id}  \tab \code{character} \tab shark vertebral sample identifier \cr
\bold{distance}  \tab \code{numeric} \tab distance from core to edge of shark vertebrae (um) \cr
\bold{value}  \tab \code{numeric} \tab vertebral element(E):Ca
(Mn/Ca in umol/mol;
Ba/Ca in umol/mol;
Sr/Ca in mmol/mol)
\cr
\bold{common_name}  \tab \code{character} \tab common name \cr
\bold{scientific_name}  \tab \code{character} \tab scientific name \cr
\bold{recapture_lat}  \tab \code{numeric} \tab latitude of recapture \cr
\bold{recapture_long}  \tab \code{numeric} \tab longitude of recapture \cr
\bold{recapture_date}  \tab \code{character} \tab date of recapture \cr
\bold{recapture_fl}  \tab \code{numeric} \tab fork length of recapture (cm) \cr
\bold{sex}  \tab \code{character} \tab shark sex
}
}
\details{
   The dataset contains element(E):Ca from vertebral core–edge transects of three shark. Elemental profiles were characterized in vertebrae encompassing complete life histories (birth-to-death) of shortfin mako (\emph{Isurus oxyrinchus}), common thresher (\emph{Alopias vulpinus}) and blue shark (\emph{Prionace glauca}) of known tag and recapture locations in the eastern North Pacific Ocean.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Beam diameter: 100-150um

Scan speed: 150um/s

Reference materials: NIST-612 (National Institutes of Standards and Technology glass standard), MACS-3 (United States Geological Survey microanalytical carbonate standard pressed pellet) and MAPS-4

Note: data extraction via WebPlotDigitizer tool (Title with * label).
}
\source{
Mohan, J. A., Miller, N. R., Herzka, S. Z., Sosa-Nishizaki, O., Kohin, S., Dewar, H., ... & Wells, R. D. (2018). Elements of time and place: manganese and barium in shark vertebrae reflect age and upwelling histories. \emph{Proceedings of the Royal Society B}, \bold{285}(1890), 20181760. \verb{https://doi.org/10.1098/rspb.2018.1760}

Traversing the paper's information via Semantic Scholar ID \verb{e65acf2cafe143c21578de2aa2149b3d17ad2cbc} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.mohan.2018
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### vertebrae ba/ca
ggplot(data = dat[which(dat$element == "Ba_Ca"), ],
       aes(distance, value)) +
  geom_line(aes(colour = scientific_name, group = fish_id),
            show.legend = F, na.rm = T) +
  facet_grid(scientific_name ~ ., scales = "free_y") +
  xlab("Distance from core to edge of shark vertebrae (um)") +
  ylab("Ba/Ca (umol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### vertebrae mn/ca
ggplot(data = dat[which(dat$element == "Mn_Ca"), ],
       aes(distance, value)) +
  geom_line(aes(colour = scientific_name, group = fish_id),
            show.legend = F, na.rm = T) +
  facet_grid(scientific_name ~ ., scales = "free_y") +
  xlab("Distance from core to edge of shark vertebrae (um)") +
  ylab("Mn/Ca (umol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### vertebrae sr/ca
ggplot(data = dat[which(dat$element == "Sr_Ca"), ],
       aes(distance, value)) +
  geom_line(aes(colour = scientific_name, group = fish_id),
            show.legend = F, na.rm = T) +
  facet_grid(scientific_name ~ ., scales = "free_y") +
  xlab("Distance from core to edge of shark vertebrae (um)") +
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
\concept{vertebrae}
\concept{trace element}
\concept{Ba/Ca}
\concept{Mn/Ca}
\concept{Sr/Ca}
\section{Concepts}{
   vertebrae, trace element, Ba/Ca, Mn/Ca, Sr/Ca
}
