\name{bt.carlisle.2015}
\docType{data}
\alias{bt.carlisle.2015}
\title{Reconstructing ontogenetic patterns of habitat use in shark}
\description{A novel combination of stable isotope analysis of vertebral annuli, Bayesian mixing models, isoscapes and electronic tag data is used to reconstruct ontogenetic patterns of habitat and resource use in a pelagic apex predator, the salmon shark.}
\usage{
bt.carlisle.2015
}
\format{The data frame 251 × 8 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab shark identifier \cr
\bold{sex}  \tab \code{character} \tab shark sex \cr
\bold{date}  \tab \code{character} \tab date of capture \cr
\bold{plc} \tab \code{numeric}   \tab precaudal length (cm) \cr
\bold{age} \tab \code{integer}   \tab age (years) ,vertebrae from each annulus, including inside the birthmark
representing in utero growth (age U), -1 represent U \cr
\bold{sample_id}  \tab \code{character} \tab sample id \cr
\bold{d15n} \tab \code{numeric}   \tab carbon isotope ratio of shark vertebrae  \cr
\bold{d13c}     \tab \code{numeric}   \tab nitrogen isotope ratio of shark vertebrae
}
}
\details{
   This dataset contains measured isotope values (expressed in ‰) for shark (shortfin
mako shark \emph{Isurus oxyrinchus} and sandbar shark \emph{Carcharhinus plumbeus}) tooth collagen, for individual teeth across different rows and tooth positions.

Instrument: EA-IRMS (elemental analyzer–isotope ratio mass spectrometry)
}
\source{
Carlisle, A. B., Goldman, K. J., Litvin, S. Y., Madigan, D. J., Bigman, J. S., Swithenbank, A. M., ... & Block, B. A. (2015). Stable isotope analysis of vertebrae reveals ontogenetic changes in habitat in an endothermic pelagic shark. \emph{Proceedings of the Royal Society B: Biological Sciences}, \bold{282}(1799), 20141446.
\verb{https://doi.org/10.1098/rspb.2014.1446}

Traversing the paper's information via Semantic Scholar ID \verb{4d57b5713b276fe341e8928ce0c6dcabd6356d79} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.carlisle.2015
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### d13C profile figure
ggplot(data = dat, aes(age, d13c)) +
  geom_line(aes(col = fish_id), show.legend = F, linewidth = 0.02, na.rm = T) +
  geom_point(aes(col = fish_id), show.legend = F, na.rm = T) +
  facet_wrap(. ~ sex) +
  labs(
    x = "Age (years)",
    y = expression(delta * ""^13 * "C" * " (‰)")
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )+
  scale_x_continuous(breaks = c(-1:14),labels = c("U",0:14))

### d15N profile figure
ggplot(data = dat, aes(age, d15n)) +
  geom_line(aes(col = fish_id), show.legend = F, linewidth = 0.02, na.rm = T) +
  geom_point(aes(col = fish_id), show.legend = F, na.rm = T) +
  facet_wrap(. ~ sex) +
  labs(
    x = "Age (years)",
    y = expression(delta * ""^15 * "N" * " (‰)")
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )+
  scale_x_continuous(breaks = c(-1:14),labels = c("U",0:14))
}
}
\keyword{datasets}
\concept{vertebrae}
\concept{stable isotope}
\concept{d13c}
\concept{d15n}
\section{Concepts}{
   vertebrae, stable isotope, d13c, d15n
}
