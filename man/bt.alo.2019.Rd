\name{bt.alo.2019}
\docType{data}
\alias{bt.alo.2019}
\title{Otolith microchemistry and diadromy in Patagonian river fishes}
\description{To document migratory life histories of native galaxiids and introduced salmonids from a wide latitudinal range in Chilean Patagonia, otolith microchemistry data were analysed using a recursive partitioning approach to test for diadromy.}
\usage{
bt.alo.2019
}
\format{The data frame 64,351 × 10 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{integer} \tab fish identifier \cr
\bold{file_id}  \tab \code{character} \tab file identifier \cr
\bold{species}  \tab \code{character} \tab scientic name \cr
\bold{family}  \tab \code{character} \tab family of species \cr
\bold{location}  \tab \code{character} \tab location of capture \cr
\bold{ontogenetic_stage}  \tab \code{character} \tab ontogenetic stage \cr
\bold{transect_quality}  \tab \code{character} \tab transect quality:
F(GOOD transect, edge-core-edge, good quality, easy to interpret);
H(half transect, edge to core);
P(partial transect, edge – core – extra data without reaching the next edge);
O(FLAGGED transect that failed to go through the core and may or may not be complete from one edge to the next)
\cr
\bold{inferred_migration_pattern}  \tab \code{character} \tab inferred migration pattern \cr
\bold{distance}  \tab \code{integer} \tab relative transect distance (5um) \cr
\bold{sr_ca}  \tab \code{numeric} \tab otolith sr:ca (mmol/mol)
}
}
\details{
   This study was to document migratory life histories of native galaxiids and introduced salmonids from a wide latitudinal range in Chilean Patagonia (39–48°S). Otolith microchemistry data were analysed using a recursive partitioning approach to test for diadromy in Patagonian river fishes.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Beam diameter: 50um

Scan speed: 5um/s

Reference materials: FEBS-1 (National Research Council Canada, Institute for National Measurement Standards Ottawa, ON, Canada)
}
\source{

Alò, D., Correa, C., Samaniego, H., Krabbenhoft, C. A., & Turner, T. F. (2019). Otolith microchemistry and diadromy in Patagonian river fishes. \emph{PeerJ}, \bold{7}, e6149. \verb{https://doi.org/10.7717/peerj.6149}

Data availability are available at \verb{https://doi.org/10.6084/m9.figshare.6387665.v2}

Traversing the paper's information via Semantic Scholar ID \verb{f3fbf9d38b442b7a2027f2e3faed1291ef41f76f} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.alo.2019
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### otolith sr/ca
ggplot(data = dat, aes(distance, sr_ca)) +
  geom_line(aes(colour = species, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(species ~ transect_quality, scales = "free_y") +
  xlab("Relative transect distance (5um)") +
  ylab("otolith sr:ca (mmol/mol)") +
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
\concept{Sr/Ca}
\section{Concepts}{
   otolith, trace element, Sr/Ca
}
