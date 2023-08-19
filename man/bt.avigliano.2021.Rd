\name{bt.avigliano.2021}
\docType{data}
\alias{bt.avigliano.2021}
\title{Otolith Sr/Ca ratio complements Sr isotopes to reveal fish migration}
\description{The potential use of Sr/Ca and Ba/Ca ratios in fish otolith, as a complement to 87Sr/86Sr to study movements of \emph{Prochilodus lineatus}, was evaluated in the La Plata Basin (South America). Water ratios were obtained from samples collected during the high and low water seasons at 42 sites across the La Plata Basin. Elemental and stable isotope in water were measured by MC-ICP-MS, ICP-MS and ion chromatography, and obtained from available literature.}
\usage{
bt.avigliano.2021
}
\format{The data frame 14,774 × 11 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{integer} \tab fish identifier \cr
\bold{distance}  \tab \code{numeric} \tab distance from the otolith core (um) \cr
\bold{value}  \tab \code{numeric} \tab value of trace element or stable isotope (mmol/mol;‰) \cr
\bold{element}  \tab \code{character} \tab Sr/Ca; 87Sr/86Sr \cr
\bold{species}  \tab \code{character} \tab scientific name \cr
\bold{site}  \tab \code{character} \tab site of capture \cr
\bold{sector}  \tab \code{character} \tab sector(basin) of capture \cr
\bold{locality}  \tab \code{character} \tab locality of capture \cr
\bold{coordenate}  \tab \code{character} \tab coordenate of capture \cr
\bold{date}  \tab \code{integer} \tab date of capture \cr
\bold{standard_length}  \tab \code{numeric} \tab standard length (cm)
}
}
\details{
   This dataset contains otolith core-to-edge Sr/Ca and 87Sr/86Sr of \emph{Prochilodus lineatus}, which were caught
between February 2011 and November 2014 using trammel nets at six different sites: Río de la Plata Estuary,
lower and middle Uruguay, middle and upper Paraná, and upper Bermejo rivers.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry);MC-ICP-MS (multicollector inductively coupled plasma mass spectrometer)

Beam diameter: 30um

Scan speed: 5um/s

Reference materials: NIST-610,NIST-612 (National Institutes of Standards and Technology glass standard) and NIESS-22 (National Institute of Japan Environmental Studies)
}
\source{
Avigliano, E.  Pisonero, J.  Bouchez, J.  Pouilly, M.  Domanico, A.  Sanchez, S.  . . & Volpedo, A. V. (2021). Otolith Sr/Ca ratio complements Sr isotopes to reveal fish migration in large basins with heterogeneous geochemical landscapes. \emph{Environmental Biology of Fishes}, \bold{104}(3), 277-292. \verb{https://doi.org/10.1007/s10641-021-01074-y}

Data are provided by Prof. Avigliano \email{estebanavigliano@conicet.gov.ar}.

Traversing the paper's information via Semantic Scholar ID \verb{693837711747e2a52ca7e911983c2ffd22c47f25} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.avigliano.2021
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### otolith sr/ca
ggplot(data = dat[which(dat$element == "Sr_Ca"),], aes(distance, value)) +
  geom_line(aes(colour = site, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(. ~ site, scales = "free_y") +
  xlab("Distance from the otolith core (um)") +
  ylab("otolith sr:ca (mmol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### otolith sr8786
ggplot(data = dat[which(dat$element == "87Sr86Sr"),], aes(distance, value)) +
  geom_line(aes(colour = site, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(. ~ site) +
  xlab("Distance from the otolith core (um)") +
  ylab(expression(paste(
    {}^"87",
    "Sr/",
    {}^"86",
    "Sr"
  ))) +
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
\concept{trace element}
\concept{stable isotope}
\concept{Sr/Ca}
\concept{Sr8786}
\section{Concepts}{
   otolith, trace element,stable isotope, Sr/Ca, Sr8786
}
