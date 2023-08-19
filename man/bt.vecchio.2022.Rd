\name{bt.vecchio.2022}
\docType{data}
\alias{bt.vecchio.2022}
\title{Golden Tilefish eye-lens stable isotopes from the Gulf of Mexico}
\description{Many predatory marine fishes undergo ontogenetic diet and habitat shifts as they grow. Most fishery datasets, such as catch records, length frequencies, and stomach contents, create a series of snapshots, with each captured fish representing a single timepoint during the lifespan. Chemical archives, such as eye lenses, preserve information regarding several life stages for each individual. With this work, the authors demonstrate that eye-lens isotope value profiles can enhance fisheries datasets and may provide a method of recreating diet and movement histories for species without long-term biological information.}
\usage{
bt.vecchio.2022
}
\format{The data frame 288 × 9 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab shark identifier \cr
\bold{species}  \tab \code{numeric} \tab scientific name \cr
\bold{location}  \tab \code{character} \tab location code \cr
\bold{longitude}  \tab \code{numeric} \tab longitude of capture \cr
\bold{latitude}  \tab \code{numeric} \tab latitude of capture \cr
\bold{lamina_x.diameter}  \tab \code{numeric} \tab lens diameter prior to removal of lamina x (in mm) \cr
\bold{lamina_x_position}  \tab \code{numeric} \tab radial midpoint of the lamina (in mm) \cr
\bold{d13c}  \tab \code{numeric} \tab eye lenses carbon isotope ratios (‰) \cr
\bold{d15n}  \tab \code{numeric} \tab eye lenses nitrogen isotope ratios (‰)
}
}
\details{
   The dataset contains 36 red grouper \emph{Epinephelus morio} of d13C and d15N bulk values in sequential eye-lens laminae from the Gulf of Mexico, summer 2013.

Instrument: CF-IRMS (continuous flow isotope ratio mass spectrometer)
}
\source{
Vecchio, J. L., & Peebles, E. B. (2022). Lifetime-scale ontogenetic movement and diets of red grouper inferred using a combination of instantaneous and archival methods. \emph{Environmental Biology of Fishes}, 1-20. \verb{https://doi.org/10.1007/s10641-022-01210-2}

Data availability are available at \verb{https://doi.org/10.7266/N77D2S4S}

Traversing the paper's information via Semantic Scholar ID \verb{9409e26847c35f1d3ca794cd94dc24d6d1181eb0} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.vecchio.2022
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### eye lenses d13C
ggplot(data = dat,aes(lamina_x.diameter, d13c)) +
  geom_point(aes(group = fish_id),shape = 1, size = 2)+
  geom_line(aes(group = fish_id),
            show.legend = F, na.rm = T) +
  facet_wrap(fish_id ~ ., scales = "free_y") +
  xlab("Eye lens diameter (mm)") +
  ylab(expression(delta * ""^13 * "C" * " (‰)")) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
### eye lenses d15N
ggplot(data = dat,aes(lamina_x.diameter, d15n)) +
  geom_point(aes(group = fish_id),shape = 1, size = 2)+
  geom_line(aes(group = fish_id),
            show.legend = F, na.rm = T) +
  facet_wrap(fish_id ~ ., scales = "free_y") +
  xlab("Eye lens diameter (mm)") +
  ylab(expression(delta * ""^15 * "N" * " (‰)")) +
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
\concept{eye lenses}
\concept{stable isotope}
\concept{d13C}
\concept{d15N}
\section{Concepts}{
   eye lenses, stable isotope, d13C, d15N
}
