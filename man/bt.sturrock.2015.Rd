\name{bt.sturrock.2015}
\docType{data}
\alias{bt.sturrock.2015}
\title{Reconstructing the migratory behavior of juvenile chinook salmon}
\description{The authors used otolith 87Sr/86Sr in adult chinook salmon (\emph{Oncorhynchus tshawytcha}) returning to the Stanislaus River in the California Central Valley (USA) to reconstruct the sizes at which they outmigrated as juveniles in a wetter (2000) and drier (2003) year.}
\usage{
bt.sturrock.2015
}
\format{The data frame 3,654 × 11 contains the following columns:
\tabular{lll}{
\bold{sample_id}  \tab \code{character} \tab sample identifier \cr
\bold{collection_date}  \tab \code{character} \tab sample collection date \cr
\bold{length}  \tab \code{integer} \tab length at collection (cm) \cr
\bold{age}  \tab \code{integer} \tab age at collection (years) \cr
\bold{sex}  \tab \code{integer} \tab sex (female or male) \cr
\bold{outmigration_year}  \tab \code{integer} \tab outmigration year \cr
\bold{distance}  \tab \code{numeric} \tab distance from otolith core (um) \cr
\bold{oto_sr8786}  \tab \code{numeric} \tab otolith 87Sr/86Sr value (spot analysis) \cr
\bold{oto_sr8786_2se}     \tab \code{numeric}   \tab instrument error \cr
\bold{oto_srV}     \tab \code{numeric}   \tab strontium signal \cr
\bold{laser_properties}  \tab \code{character} \tab laser properties (spot size, power, repetition rate, dwell time, spacing)
}
}
\details{
   The dataset contains 87Sr/86Sr values measured in the otoliths of adult chinook salmon sampled in the Stanislaus River, California, between 2001 and 2006. Fish age was estimated using scale annuli, and individuals that outmigrated in 2000 and 2003 were retained for the current analysis (see "outmigration year"). Each otolith contains multiple 87Sr/86Sr values, representing spot analyses sampled along a standardized 90° transect from the otolith core towards the otolith edge.

Instrument: LA-MC-ICP-MS (laser ablation multi-collector inductively coupled plasma mass spectrometry)
}
\source{
Sturrock, A. M., Wikert, J. D., Heyne, T., Mesick, C., Hubbard, A. E., Hinkelman, T. M., ... & Johnson, R. C. (2015). Reconstructing the migratory behavior and long-term survivorship of juvenile Chinook salmon under contrasting hydrologic regimes. \emph{PLoS One}, \bold{10}(5), e0122380. \verb{https://doi.org/10.1371/journal.pone.0122380}

Data availability are available at \verb{https://doi.org/10.5061/dryad.c56rk}

Traversing the paper's information via Semantic Scholar ID \verb{bd4c80e8eef6f81369f81af5c12016f30ffde72e} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.sturrock.2015
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### Sr8786 profile figure
ggplot(data = dat,aes(distance, oto_sr8786))+
  geom_line(aes(col = sex),show.legend = F,linewidth = 0.02, na.rm = T)+
  facet_grid(.~ sex)+
  labs(
    x = expression(paste("Distance from core (", mu, "m)", sep = "")),
    y = expression(paste(
      {}^"87",
      "Sr/",
      {}^"86",
      "Sr"
    ))
  )+
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
