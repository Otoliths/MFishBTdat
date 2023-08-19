\name{bt.shipley.2021}
\docType{data}
\alias{bt.shipley.2021}
\title{Shark tooth collagen stable isotopes as ecological proxies}
\description{Within-individual variability of tooth stable isotope values suggests teeth of different ages may serve as ecological chronologies, which could be applied to studies on migration and individual-level diet variation across diverse time scales.}
\usage{
bt.shipley.2021
}
\format{The data frame 33 × 5 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab shark identifier \cr
\bold{jaw_position}  \tab \code{character} \tab jaw position \cr
\bold{file_position} \tab \code{numeric}   \tab location of the row relative to the centre,
lower numbers represent older, more mature teeth and higher numbers represent younger teeth \cr
\bold{d15n} \tab \code{numeric}   \tab carbon isotope ratio of shark tooth collagen  \cr
\bold{d13c}     \tab \code{numeric}   \tab nitrogen isotope ratio of shark tooth collagen
}
}
\details{
   This dataset contains measured isotope values (expressed in ‰) for shark (shortfin
mako shark \emph{Isurus oxyrinchus} and sandbar shark \emph{Carcharhinus plumbeus}) tooth collagen, for individual teeth across different rows and tooth positions.

Instrument: EA-IRMS (elemental analyzer–isotope ratio mass spectrometry)
}
\source{
Shipley, O. N., Henkes, G. A., Gelsleichter, J., Morgan, C. R., Schneider, E. V., Talwar, B. S., & Frisk, M. G. (2021). Shark tooth collagen stable isotopes (δ15N and δ13C) as ecological proxies. \emph{Journal of Animal Ecology}, \bold{90}(9), 2188--2201. \verb{https://doi.org/10.1111/1365-2656.13518}

Data availability are available at \verb{https://doi.org/10.5061/dryad.j6q573ncs}

Traversing the paper's information via Semantic Scholar ID \verb{4e0d4172c63f18f7ae22c4800031c4e96db1a2cc} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.shipley.2021
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### d13C profile figure
ggplot(data = dat, aes(file_position, d13c)) +
  geom_line(aes(col = fish_id), show.legend = F, linewidth = 0.02, na.rm = T) +
  geom_point(aes(col = fish_id), show.legend = F, na.rm = T) +
  facet_wrap(. ~ jaw_position) +
  labs(
    x = ("Location of the row relative to the centre"),
    y = (expression(delta * ""^13 * "C" * " (‰)"))
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### d15N profile figure
ggplot(data = dat, aes(file_position, d15n)) +
  geom_line(aes(col = fish_id), show.legend = F, linewidth = 0.02, na.rm = T) +
  geom_point(aes(col = fish_id), show.legend = F, na.rm = T) +
  facet_wrap(. ~ jaw_position) +
  labs(
    x = ("Location of the row relative to the centre"),
    y = (expression(delta * ""^15 * "N" * " (‰)"))
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
\concept{teeth}
\concept{stable isotope}
\concept{d13c}
\concept{d15n}
\section{Concepts}{
   tooth, stable isotope, d13c, d15n
}
