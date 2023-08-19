\name{bt.trueman.2013}
\docType{data}
\alias{bt.trueman.2013}
\title{Thermal, trophic and metabolic life histories of Orange roughy}
\description{Results demonstrate that \emph{Hoplostethus atlanticus} from the north-east Atlantic Ocean have a complex life history with three distinct depth-stratified life stages, and lifetime fastest growth rates are achieved during juvenile stages when otolith isotopes imply deep-water residency and relatively low metabolic rates.}
\usage{
bt.trueman.2013
}
\format{The data frame 88 × 6 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab fish identifier \cr
\bold{body_mass} \tab \code{numeric}   \tab reconstructed mass (g) \cr
\bold{distance} \tab \code{numeric}   \tab distance from otolith centre (mm) \cr
\bold{d18o} \tab \code{numeric}   \tab oxgen isotope ratio  \cr
\bold{d13c}     \tab \code{numeric}   \tab carbon isotope ratio \cr
\bold{temperature}     \tab \code{numeric}   \tab reconstructed temperature (°C)
}
}
\details{
   This dataset contains stable-isotope compositions recorded in otoliths from \emph{Hoplostethus atlanticus},
together with body mass reconstructed using equations (3 and 4), and ambient water temperature
recovered using estimated water δ18O values (provided) and equation (6).

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)
}
\source{
Trueman, C. N., Rickaby, R. E. M., & Shephard, S. (2013). Thermal, trophic and metabolic life histories of inaccessible fishes revealed from stable‐isotope analyses: a case study using orange roughy \emph{Hoplostethus atlanticus}. \emph{Journal of Fish Biology}, \bold{83}(6), 1613-1636. \verb{https://doi.org/10.1111/jfb.12267}

Traversing the paper's information via Semantic Scholar ID \verb{54ddb8efcba3ee2b9a6d70c9ce6c092fbb8094e4} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.trueman.2013
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### d13C profile figure
ggplot(data = dat, aes(distance, d13c)) +
  geom_line(aes(col = fish_id), show.legend = F, linewidth = 0.02, na.rm = T) +
  geom_point(aes(col = fish_id), show.legend = F, na.rm = T) +
  labs(
    x = "Distance from otolith centre (mm)",
    y = expression(delta * ""^13 * "C" * " (‰)")
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### d18O profile figure
ggplot(data = dat, aes(distance, d18o)) +
  geom_line(aes(col = fish_id), show.legend = F, linewidth = 0.02, na.rm = T) +
  geom_point(aes(col = fish_id), show.legend = F, na.rm = T) +
  labs(
    x = "Distance from otolith centre (mm)",
    y = expression(delta * ""^18 * "O" * " (‰)")
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
\concept{d13C}
\concept{d18O}
\section{Concepts}{
   otolith, stable isotope, d13C, d18O
}
