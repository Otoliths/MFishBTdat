\name{bt.hane.2022}
\docType{data}
\alias{bt.hane.2022}
\title{Natal origin of Pacific bluefin tuna Thunnus}
\description{In this study, high-resolution stable oxygen isotope (δ18O) analysis was performed on the otoliths of adult Pacific bluefin tuna Thunnus orientalis using secondary ion mass spectrometry (SIMS) to determine the natal origin of an individual fish.}
\usage{
bt.hane.2022
}
\format{The data frame 676 × 7 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab fish identifier \cr
\bold{distance} \tab \code{numeric}   \tab distance from the otolith core (um)  \cr
\bold{d18o}     \tab \code{numeric}   \tab oxygen isotope ratio relative to VPDB in permil \cr
\bold{catch_location}     \tab \code{character}   \tab location of capture \cr
\bold{year_class}    \tab \code{integer}   \tab year of hach  \cr
\bold{weight}     \tab \code{numeric}   \tab body weight (kg)
}
}
\details{
   Summary on sampling data, biological information, and d18O otolith analyses of 51 Pacific bluefin tuna otoliths.

Instrument: SIMS (secondary ion mass spectrometer)

Beam diameter: 10um
}
\source{
Hane, Y., Ushikubo, T., Yokoyama, Y., Miyairi, Y., & Kimura, S. (2022). Natal origin of Pacific bluefin tuna Thunnus orientalis determined by SIMS oxygen isotope analysis of otoliths. \emph{Plos one}, \bold{17}(8), e0272850.
\verb{https://doi.org/10.1371/journal.pone.0272850}

Traversing the paper's information via Semantic Scholar ID \verb{c94e2c7aa2ba576f747d4494c3594613423895d3} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.hane.2022
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### d18O profile figure
ggplot(data = dat, aes(distance, d18o)) +
  geom_line(aes(col = fish_id), show.legend = F, linewidth = 0.02, na.rm = T) +
  geom_point(aes(col = fish_id), show.legend = F, na.rm = T) +
  facet_wrap(. ~ fish_id) +
  labs(
    x = ("Distance from the otolith core (um)"),
    y = (expression(delta * ""^18 * "O" * " (‰)"))
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
\concept{stable isotope}
\concept{d18O}
\section{Concepts}{
   otolith, stable isotope, d18O
}
