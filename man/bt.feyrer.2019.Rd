\name{bt.feyrer.2019}
\docType{data}
\alias{bt.feyrer.2019}
\title{Reconstructing habitats occupied of Clear Lake Hitch}
\description{The goal of this study was to determine if otolith chemistry could be used to reconstruct the habitats occupied by individual Clear Lake Hitch. Study objectives included determining the relative importance of natal habitats and early life migration histories that have contributed to the production and adult recruitment of Clear Lake Hitch.}
\usage{
bt.feyrer.2019
}
\format{The data frame 2,007 × 11 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab fish identifier \cr
\bold{distance} \tab \code{numeric}   \tab distance from the core to the edge of otolith (um) \cr
\bold{sr8786} \tab \code{numeric}   \tab otolith 87Sr/86Sr (permil) \cr
\bold{sr8786_norm} \tab \code{numeric}   \tab otolith sr8786 norm \cr
\bold{standar_error} \tab \code{numeric}   \tab standar error of sr8786 \cr
\bold{sr_v} \tab \code{numeric}   \tab sr v \cr
\bold{date} \tab \code{numeric}   \tab date of capture \cr
\bold{lattitude} \tab \code{numeric}   \tab lattitude (NAD83) \cr
\bold{longitude} \tab \code{numeric}   \tab longitude (NAD83) \cr
\bold{length} \tab \code{numeric}   \tab fish length (mm) \cr
\bold{weight}  \tab \code{character} \tab body weight (g)
}
}
\details{
The dataset includes four seperate files of data for a project that examined the strontium isotopic composition of otoliths of 46 Clear Lake Hitch \emph{Lavinia exilicauda chi}. Otoliths examined in this study were from randomly-sampled individual Clear Lake Hitch that recruited into the adult population in Clear Lake. The fish were collected in June and July 2017. Strontium isotopic composition (87Sr/86Sr ) in otoliths was determined with a multicollector LA-ICP mass spectrometer (LA-ICMPS; Nu Plasma HR, Nu Instrument, Inc.) interfaced with a Nd : YAG 213-nm laser (New Wave Research UP213) at the University of California, Davis.

Instrument: LA-MC-ICP-MS (laser ablation–multicollector–inductively coupled plasma–mass spectrometry)

Beam diameter: 40um

Reference materials: NIST-987 (National Institutes of Standards and Technology)
}
\source{
Feyrer, F., Whitman, G., Young, M., & Johnson, R. C. (2019). Strontium isotopes reveal ephemeral streams used for spawning and rearing by an imperilled potamodromous cyprinid Clear Lake hitch Lavinia exilicauda chi.\emph{ Marine and Freshwater Research}, \bold{70}(12), 1689-1697. \verb{https://doi.org/10.1071/MF18264}

Data availability are available at \verb{https://doi.org/10.5066/P9IX7L5V}

Traversing the paper's information via Semantic Scholar ID \verb{19fc02676d9a25c4a9896dc543d17f716ccb8c3c} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.feyrer.2019
tibble::tibble(dat)

\dontrun{
library(dplyr)
library(ggplot2)

### Sr stable isotope
ggplot(data = dat, aes(distance,sr8786)) +
  geom_line(aes(group = fish_id),show.legend = F, na.rm = T, colour = "blue") +
  labs(
    x = expression(paste("Distance from the core to the edge of otolith (", mu, "m)",
                         sep = "")),
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
  )
}
}
\keyword{datasets}
\concept{otolith}
\concept{stable isotope}
\concept{Sr8786}
\section{Concepts}{
   otolith, stable isotope, Sr8786
}
