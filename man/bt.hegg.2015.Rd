\name{bt.hegg.2015}
\docType{data}
\alias{bt.hegg.2015}
\title{Diverse early life-History strategies in migratory Amazonian catfish}
\description{The results indicate that juveniles exhibit diverse rearing strategies, rearing in both upstream and estuary environments, which contrasts with the prevailing understanding that juveniles rear in the estuary before migrating upstream; however, this contrasts with some fisheries data that has indicated the presence of alternate spawning and rearing life-histories.}
\usage{
bt.hegg.2015
}
\format{The data frame 21,007 × 8 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab fish identifier \cr
\bold{distance} \tab \code{numeric}   \tab distance from the core to the edge of otolith (um) \cr
\bold{sr8786} \tab \code{numeric}   \tab otolith 87Sr/86Sr (permil) \cr
\bold{corrected_sr8786} \tab \code{numeric}   \tab corrected otolith 87Sr/86Sr (permil) \cr
\bold{sample_loc} \tab \code{character}   \tab location of capture \cr
\bold{species} \tab \code{character}   \tab amazonian catfish studied \cr
\bold{total_length} \tab \code{numeric}   \tab fish total length (cm) \cr
\bold{weight}  \tab \code{numeric} \tab fish body weight (kg)
}
}
\details{
  The dataset contains 87Sr/86Sr values in otoliths of 24 individual Amazonian catfish (16 \emph{Brachyplatystoma rousseauxii},5 \emph{Brachyplatystoma vaillanti}, and 3 \emph{Brachyplatystoma filamentosum}) from Amazon River basin.

Instrument: LA-MC-ICP-MS (laser ablation multi-collector inductively coupled plasma mass spectrometry)

Beam diameter: 40um

Scan speed: 30um/s
}
\source{
Hegg, J. C.  Giarrizzo, T.  & Kennedy, B. P. (2015). Diverse early life-history strategies in migratory Amazonian catfish: implications for conservation and management. \emph{PloS One}, \bold{10}(7), e0129697.
\verb{https://doi.org/10.1371/journal.pone.0129697}

Traversing the paper's information via Semantic Scholar ID \verb{20c2e268fbda558db03869110cfc11faf41931f3} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.hegg.2015
tibble::tibble(dat)

\dontrun{
library(dplyr)
library(ggplot2)

### Sr stable isotope
ggplot(data = dat, aes(distance, sr8786)) +
  geom_line(aes(colour = species, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(species ~. ,scales = "free_y")+
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
