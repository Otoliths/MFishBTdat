\name{bt.pereira.2019}
\docType{data}
\alias{bt.pereira.2019}
\title{Studies of identifying the geographical origin of fish}
\description{In this study, the authors used Sr isotopic markers recorded
in otoliths of wild and farmed commercialized pirarucu (\emph{Arapaima
spp.}) to evaluate their prediction potential to trace the fishes origin.}
\usage{
bt.pereira.2019
}
\format{The data frame 4,148 × 5 contains the following columns:
\tabular{lll}{
\bold{specimen_code}  \tab \code{character} \tab specimen id \cr
\bold{distance}     \tab \code{integer} \tab distance from fish otolith cores – edge transects (unit: micron) \cr
\bold{oto_sr8786}    \tab \code{numeric}   \tab variation of 87Sr/86Sr measured by LAfs-MC-ICPMS  \cr
\bold{fish_origin}     \tab \code{character}   \tab wild fish and farmed fish \cr
\bold{region}     \tab \code{character}   \tab region of captured
}
}
\details{
   The dataset contains wild and farmed commercialized pirarucu (\emph{Arapaima spp.}) otolith strontium isotope profiles. Variation of 87Sr/86Sr values measured by LAfs-MC-ICPMS on wild fish otolith cores – edge transects.

   Wild fish specimens that lived in environments with the largest fluctuation of river water Sr isotope ratios over time presented the largest Sr isotope variations in otoliths.
}
\source{
 Pereira, L. A., Santos, R. V., Hauser, M., Duponchelle, F., Carvajal, F., Pecheyran, C., ... & Pouilly, M. (2019). Commercial traceability of Arapaima spp. fisheries in the Amazon basin: can biogeochemical tags be useful?. \emph{Biogeosciences}, \bold{16}(8), 1781--1797. \verb{https://doi.org/10.5194/bg-16-1-2019}

Data availability are available at \verb{https://doi.org/10.5281/zenodo.2646436}

Traversing the paper's information via Semantic Scholar ID \verb{313992f560c0c54460e235a4963016148dd61033} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.pereira.2019
tibble::tibble(dat)

\dontrun{
### Sr profile figure
library(dplyr)
library(ggplot2)

ggplot(data = dat,aes(distance, oto_sr8786))+
  geom_line(aes(col = fish_origin),show.legend = F,linewidth = 0.02, na.rm = T)+
  facet_grid(region~ fish_origin)+
  labs(
    x = (expression(
      paste("distance from fish otolith cores – edge transects (", mu, "m)",
            sep = ""))),
    y = (expression(paste(
      {}^"87",
      "Sr/",
      {}^"86",
      "Sr"
    )))
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
\concept{isotopic ratios}
\concept{Sr8786}
\section{Concepts}{
   otolith, isotopic ratios, Sr8786
}
