\name{bt.harada.2022}
\docType{data}
\alias{bt.harada.2022}
\title{Reconstructing trophic geographies of chub mackerel using isotope}
\description{Stable isotope analysis of eye lenses can reconstruct the geographic and trophic histories of fish. However, it is difficult to distinguish between the two pieces of information: migration and changing trophic relationships with the conventional bulk stable isotope approach. In this study, we measured the nitrogen isotope ratios of individual amino acids in eye lenses of chub mackerel \emph{Scomber japonicus}(n = 3) from the western North Pacific to test whether the two pieces of information could be distinguished.}
\usage{
bt.harada.2022
}
\format{The data frame 54 × 5 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab fish identifier \cr
\bold{radius}     \tab \code{numeric}   \tab eye lens radius (mm) \cr
\bold{fl}     \tab \code{numeric}   \tab fork length (mm) \cr
\bold{age}     \tab \code{numeric}   \tab fish age (day) \cr
\bold{d15n}     \tab \code{numeric}   \tab d15N bulk values (permil)
}
}
\details{
The dataset contains chronologies of d15N bulk values measured in eye lenses of Chub mackerel (n = 3) from the western North Pacific.

Instrument: EA-IRMS (elemental analyzer–isotope ratio mass spectrometry )
}
\source{

Harada, Y., Ito, S. I., Ogawa, N. O., Yoshikawa, C., Ishikawa, N. F., Yoneda, M., & Ohkouchi, N. (2022). Compound-Specific Nitrogen Isotope Analysis of Amino Acids in Eye Lenses as a New Tool to Reconstruct the Geographic and Trophic Histories of Fish. \emph{Frontiers in Marine Science}, \bold{8}, 2146.
\verb{https://doi.org/10.3389/fmars.2021.796532}


Traversing the paper's information via Semantic Scholar ID \verb{59c01879e1713cb2380d18050ed887f1c7b19a7f} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.harada.2022
tibble::tibble(dat)

\dontrun{
library(dplyr)
library(ggplot2)

### Nitrogen Isotope Analysis of Amino Acids
ggplot(data = dat, aes(radius, d15n)) +
  geom_point(aes(colour = fish_id), show.legend = F) +
  geom_line(aes(colour = fish_id), show.legend = F) +
  labs(
    x = "Eye lens radius (mm)",
    y = expression(delta * ""^15 * "N" * " (‰)")
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  ) +
  scale_y_continuous(breaks = c(0, 5, 10, 15))
}
}
\keyword{datasets}
\concept{eye lenses}
\concept{stable isotope}
\concept{d15N}
\section{Concepts}{
  eye lenses, stable isotope, d15N
}
