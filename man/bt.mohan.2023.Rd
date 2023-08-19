\name{bt.mohan.2023}
\docType{data}
\alias{bt.mohan.2023}
\title{Inferring habitat use of the Pacific White Shark}
\description{The conservation and management of highly migratory sharks relies on
understanding age-related movements and nursery habitat utilization. The authors
reconstructed the habitat use and migratory history of young White Sharks
(\emph{Carcharodon carcharias}), a highly protected species, by utilizing natural
chemical tracers (element:Ca ratios and stable isotope analysis, SIA) in vertebral
cartilage growth bands.}
\usage{
bt.mohan.2023
}
\format{The data frame 96 × 12 contains the following columns:
\tabular{lll}{
\bold{shark_id}  \tab \code{character} \tab white sharks identifier \cr
\bold{date}  \tab \code{integer} \tab year of capture \cr
\bold{region}  \tab \code{character} \tab fishing region \cr
\bold{site}  \tab \code{character} \tab fishing landing site \cr
\bold{total_length}  \tab \code{numeric} \tab total length (cm) \cr
\bold{life_stage}  \tab \code{character} \tab life stage \cr
\bold{age}  \tab \code{numeric} \tab back-calculated ages (years) \cr
\bold{subsamples_per_vertebrae}  \tab \code{integer} \tab subsamples per vertebrae \cr
\bold{n_subsamples}  \tab \code{integer} \tab subsamples \cr
\bold{subsample_position}  \tab \code{character} \tab subsample position \cr
\bold{d13c}  \tab \code{numeric} \tab d13c (‰) \cr
\bold{d15n}  \tab \code{numeric} \tab d15n (‰)
}
}
\details{
   Vertebrae from coastal Mexican artisanal fisheries off central Baja California in the Pacific (12 neonates and juveniles; 139-280 cm total length) and the GC (3 subadults; 289-355 cm TL) were analyzed to characterize trophic histories from collagen d13C and d15N values.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry);EA-IRMS (elemental analyzer–isotope ratio mass spectrometry )

Beam diameter: 125um

Scan speed: 50um/s

Reference materials: NIST-612 (National Institutes of Standards and Technology glass standard)
}
\source{
Mohan, J. A., Romo-Curiel, A. E., Herzka, S. Z., Wells, R. D., Miller, N. R., Sosa-Nishizaki, O., & Garcıa-Rodrıguez, E. (2023). Inferring habitat use of the Pacific White Shark using vertebral chemistry. \emph{Frontiers in Marine Science}, 9.
\verb{https://doi.org/10.3389/fmars.2022.1082219}

Traversing the paper's information via Semantic Scholar ID \verb{2329d647007517f585a2c46a6395bb3d15c968c2} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.mohan.2023
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### vertebrae d13c
ggplot(data = dat, aes(n_subsamples, d13c)) +
  geom_line(aes(colour = region, group = shark_id), show.legend = F, na.rm = T) +
  facet_grid(region ~ ., scales = "free_y") +
  xlab("Subsamples per vertebrae") +
  ylab(expression(delta * ""^13 * "C" * " (‰)")) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
### vertebrae d15n
ggplot(data = dat, aes(n_subsamples, d15n)) +
  geom_line(aes(colour = region, group = shark_id), show.legend = F, na.rm = T) +
  facet_grid(region ~ ., scales = "free_y") +
  xlab("Subsamples per vertebrae") +
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
\concept{vertebra}
\concept{stable isotope}
\concept{d13C}
\concept{d15N}
\section{Concepts}{
   vertebra, stable isotope, d13C, d15N
}
