\name{bt.matsubayashi.2017}
\docType{data}
\alias{bt.matsubayashi.2017}
\title{Reconstructing the stable isotope chronology of teleost fishes}
\description{It is suggested that the method presented can provide reproducible isotopic chronology, even in teleost fishes smaller than 50 cm, and can be used in isoscape studies and in studies of the ecology of marineteleost fishes.}
\usage{
bt.matsubayashi.2017
}
\format{The data frame 86 × 8 contains the following columns:
\tabular{lll}{
\bold{fish_samples}  \tab \code{character} \tab fish sample id \cr
\bold{biomineral_archives}  \tab \code{character} \tab biomineral archives (vertebra and otolith) \cr
\bold{biogeochemical_tags}  \tab \code{character} \tab biogeochemical tags \cr
\bold{element_ratio}  \tab \code{character} \tab element ratio \cr
\bold{section}  \tab \code{character} \tab biomineral archives of fish equally into sections \cr
\bold{distance}     \tab \code{numeric}   \tab distance of from biomineral archives core to edge \cr
\bold{mean_values}     \tab \code{numeric}   \tab mean values (ug/mg in bulk elements; permil in isotopic ratios)\cr
\bold{sd}     \tab \code{numeric}   \tab standard deviation (ug/mg in bulk elements; permil in isotopic ratios)
}
}
\details{
Sulfur stable isotope ratios of vertebral sections of masu salmon. Each vertebral centrum was subdivided equally into 10 sections numbered from the center (01) to the margin (10). Fish samples were collected in the Churui River, Hokkaido Islands, japan. All fish samples analyzed consisted of bone collagen.

Elemental and 87Sr/86Sr analyses of fish otolith sections from masu salmon (identified as OM-01, OM-02 and OM-03) collected from the Churui River.

}
\source{

Matsubayashi, J., Saitoh, Y., Osada, Y., Uehara, Y., Habu, J., Sasaki, T., & Tayasu, I. (2017). Incremental analysis of vertebral centra can reconstruct the stable isotope chronology of teleost fishes. \emph{Methods in Ecology and Evolution}, \bold{8}(12), 1755-1763. \verb{https://doi.org/10.1111/2041-210X.12834}

Data availability are available at \verb{https://doi.org/10.5061/dryad.r6p27}

Traversing the paper's information via Semantic Scholar ID \verb{f0f6b76481b0b6b97d802e49e610b290c30c6e76} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.matsubayashi.2017
tibble::tibble(dat)

\dontrun{

library(dplyr)
library(ggplot2)

### Sulfur stable isotope
dat[which(dat$element_ratio == "d34S"), ] |>
  ggplot(aes(distance, mean_values)) +
  geom_point(aes(colour = fish_samples), show.legend = F) +
  geom_line(aes(colour = fish_samples), show.legend = F) +
  labs(
    x = "Vertebral section number",
    y = expression(delta * ""^34 * "S" * " (‰)")
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  ) +
  scale_x_continuous(breaks = 1:10)

### Sr stable isotope
dat[which(dat$element_ratio == "Sr8786"), ] |>
  ggplot(aes(distance, mean_values)) +
  geom_point(aes(colour = fish_samples), show.legend = F) +
  geom_line(aes(colour = fish_samples), show.legend = F) +
  labs(
    x = expression(paste("Distance from core (", mu, "m)", sep = "")),
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
  scale_x_continuous(breaks = c(0, 200, 400, 600, 800, 1000, 1200))


### Sr/Ca
dat[which(dat$element_ratio == "Sr/Ca"), ] |>
  ggplot(aes(distance, mean_values)) +
  geom_point(aes(colour = fish_samples), show.legend = F) +
  geom_line(aes(colour = fish_samples), show.legend = F) +
  labs(
    x = expression(paste("Distance from core (", mu, "m)", sep = "")),
    y = expression(paste("Sr/Ca (", x1000, ")", sep = ""))
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  ) +
  scale_x_continuous(breaks = c(0, 200, 400, 600, 800, 1000, 1200))
}
}
\keyword{datasets}
\concept{otolith}
\concept{vertebra}
\concept{bulk elements}
\concept{isotopic ratios}
\concept{Sr8786}
\concept{Sr/Ca}
\concept{d34S}
\section{Concepts}{
   otolith, vertebra, bulk elements, isotopic ratios, Sr8786, Sr/Ca, d34S
}
