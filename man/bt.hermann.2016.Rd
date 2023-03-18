\name{bt.hermann.2016}
\docType{data}
\alias{bt.hermann.2016}
\title{Unravelling the life history of Amazonian fishes}
\description{
The results of this study suggested that \emph{Brachyplatystoma filamentosum} did not enter the estuary during its life history, and introduced what should be a productive line of research desperately needed to better understand the migrations of these unique and imperilled fishes.

}
\usage{
bt.hermann.2016
}
\format{The data frame 7,035 × 6 contains the following columns:
\tabular{lll}{
\bold{sampleid}  \tab \code{character} \tab fish identifier \cr
\bold{species}     \tab \code{character} \tab species studied \cr
\bold{distance}    \tab \code{numeric}   \tab distance from fish otolith cores-edge transects (unit: micron)  \cr
\bold{value}     \tab \code{character}   \tab Laser ablation–inductively coupled plasma mass spectrometry raw value \cr
\bold{oto_element}     \tab \code{character}   \tab bulk elements: Ba, Sr, Ca, Mn \cr
\bold{locality}     \tab \code{character}   \tab locality of captured
}
}
\details{
   Laser ablation–inductively coupled plasma mass spectrometry raw data (background- and drift-corrected) for \emph{Brachyplatystoma rousseauxii} (Ecuador and Colombia), \emph{Brachyplatystoma filamentosum} (Colombia), and six \emph{Prochilodus nigricans}. Data include Ca, Sr, and Ba for both Brachyplatystoma species and localities, and Ca, Ba, and Mn for all six \emph{P. nigricans}.
}
\source{

Hermann, T. W., Stewart, D. J., Limburg, K. E., & Castello, L. (2016). Unravelling the life history of Amazonian fishes through otolith microchemistry. \emph{Royal Society open science}, \bold{3}(6), 160206. \verb{http://dx.doi.org/10.1098/rsos.160206}

Data availability are available at \verb{https://doi.org/10.5061/dryad.8kd35}

Traversing the paper's information via Semantic Scholar ID \verb{73c934cff5baaa29235d0388b4f14133c95415f7} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.hermann.2016
tibble::tibble(dat)
table(dat$species)

\dontrun{
### bulk elements profile figure
library(dplyr)
library(tidyr)
library(ggplot2)

### Brachyplatystoma rousseauxii

dat[which(dat$species == "Brachyplatystoma rousseauxii" &
            dat$locality == "Ecuador"), ]
B_rousseauxii |>
  pivot_wider(
    names_from = oto_element,
    values_from = value
  ) |>
  ggplot(aes(distance, (Ba / Ca) * 1000)) +
  geom_line(aes(col = locality), show.legend = F, linewidth = 0.02, na.rm = T) +
  labs(
    x = (expression(
      paste("Distance from fish otolith cores – edge transects (", mu, "m)",
            sep = ""))),
    y = ("(Ba/Ca)x1000")
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

B_rousseauxii |>
  pivot_wider(
    names_from = oto_element,
    values_from = value
  ) |>
  ggplot(aes(distance, (Sr / Ca) * 1000)) +
  geom_line(aes(col = locality), show.legend = F, linewidth = 0.02, na.rm = T) +
  labs(
    x = (expression(
      paste("distance from fish otolith cores – edge transects (", mu, "m)",
            sep = ""))),
    y = ("Sr/Ca")
  ) +
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
\concept{bulk elements}
\concept{Sr/Ca}
\concept{Mn/Ca}
\concept{Ba/Ca}
\section{Concepts}{
   otolith, bulk elements, Sr/Ca, Mn/Ca, Ba/Ca
}
