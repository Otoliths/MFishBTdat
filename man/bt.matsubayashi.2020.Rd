\name{bt.matsubayashi.2020}
\docType{data}
\alias{bt.matsubayashi.2020}
\title{Tracking long-distance migration of marine fishes using stable isotope}
\description{The isotope tracking method successfully reproduced a known chum salmon migration route between the Okhotsk and Bering seas, and the findings suggest the presence of a new migration route to the Bering Sea Shelf during a later growth stage.}
\usage{
bt.matsubayashi.2020
}
\format{The data frame 80 × 11 contains the following columns:
\tabular{lll}{
\bold{id}  \tab \code{character} \tab fish identifier \cr
\bold{river}  \tab \code{character} \tab river of capture \cr
\bold{year}  \tab \code{integer} \tab year of capture \cr
\bold{month}  \tab \code{integer} \tab month of capture \cr
\bold{day}  \tab \code{integer} \tab day of capture \cr
\bold{age}  \tab \code{integer} \tab age of capture (years) \cr
\bold{fork_length}  \tab \code{integer} \tab fork length of capture (mm) \cr
\bold{section_no}  \tab \code{integer} \tab vertebral bone sections are numbered from the centre of the vertebral centrum and increase toward the margin  \cr
\bold{d13c}     \tab \code{numeric}   \tab d13C bulk (permil) \cr
\bold{d15n}     \tab \code{numeric}   \tab d15N bulk (permil)
}
}
\details{
Specimen IDs and a summary of stable carbon and nitrogen isotope results from the vertebral sections of 8 chum salmon.

Instrument: IRMS (isotope ratio mass spectrometer)
}
\source{
Matsubayashi, J., Osada, Y., Tadokoro, K., Abe, Y., Yamaguchi, A., Shirai, K., ... & Tayasu, I. (2020). Tracking long-distance migration of marine fishes using compound-specific stable isotope analysis of amino acids. \emph{Ecology Letters}, \bold{23}(5), 881--890. \verb{https://doi.org/10.1111/ele.13496}

Data availability are available at \verb{https://doi.org/10.5061/dryad.tx95x69tc}

Traversing the paper's information via Semantic Scholar ID \verb{32bf4cf7237572a3559a2d0e32912f93c91774a5} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.matsubayashi.2020
tibble::tibble(dat)

\dontrun{

library(dplyr)
library(ggplot2)

### Carbon stable isotope
ggplot(data = dat, aes(section_no, d13c)) +
  geom_point(aes(colour = id), show.legend = F) +
  geom_line(aes(colour = id), show.legend = F) +
  labs(
    x = "Vertebral section number",
    y = bquote(delta^13 ~C[Bulk]("‰"))
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  ) +
  scale_x_continuous(breaks = 1:10)


### Nitrogen stable isotope
ggplot(data = dat, aes(section_no, d15n)) +
  geom_point(aes(colour = id), show.legend = F) +
  geom_line(aes(colour = id), show.legend = F) +
  labs(
    x = "Vertebral section number",
    y = bquote(delta^15 ~N[Bulk]("‰"))
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  ) +
  scale_x_continuous(breaks = 1:10)
}
}
\keyword{datasets}
\concept{vertebra}
\concept{stable isotope}
\concept{d13C}
\concept{d15N}
\section{Concepts}{
   vertebra, stable isotope, d13C, d15N
}
