\name{bt.duponchelle.2016}
\docType{data}
\alias{bt.duponchelle.2016}
\title{Trans-Amazonian natal homing in giant catfish}
\description{
The authors measured 87Sr/86Sr ratios in transects along transverse sections of \emph{Brachyplatystoma rousseauxii} otoliths, and compared these observed profiles with those expected from different scenarios of space utilization and migration.}
\usage{
bt.duponchelle.2016
}
\format{The data frame 4,984 × 16 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{integer} \tab fish identifier \cr
\bold{distance}  \tab \code{numeric} \tab distance from otolith core (um) \cr
\bold{sr8786}  \tab \code{numeric} \tab otolith sr8786 \cr
\bold{location}  \tab \code{character} \tab location of capture
}
}
\details{
   This dataset contains 110 \emph{Brachyplatystoma rousseauxii} for otolith 87Sr:86Sr profiles.
}
\source{
#Duponchelle, F., Pouilly, M., Pécheyran, C., Hauser, M., Renno, J. F., Panfili, J., ... & Baras, E. (2016). Trans-mazonian natal homing in giant catfish. \emph{Journal of Applied Ecology}, \bold{53}(5), 1511-1520. \verb{https://doi.org/10.1111/1365-2664.12665}

Traversing the paper's information via Semantic Scholar ID \verb{0b3aff360f1f730cea5c2955a50dbf6d79137391} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.duponchelle.2016
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### otolith 87Sr:86Sr profiles
ggplot(data = dat, aes(distance, sr8786)) +
  geom_line(aes(group = fish_id, colour = location), show.legend = F, na.rm = T) +
  facet_grid(location ~ ., scales = "free_y") +
  xlab("Distance from otolith core (um)") +
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
\concept{bulk elements}
\concept{isotopic ratios}
\concept{Sr/Ca}
\concept{Se/Ca}
\concept{Sr8786}
\section{Concepts}{
   otolith, bulk elements, isotopic ratios, Sr/Ca, Se/Ca, Sr8786
}
