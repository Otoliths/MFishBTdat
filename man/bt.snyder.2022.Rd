\name{bt.snyder.2022}
\docType{data}
\alias{bt.snyder.2022}
\title{Fin ray microchemistry of fishes to evaluate upstream fish passage}
\description{This study examined evidence of native fish passage through Brandon Road Lock and Dam (BRLD) on the Des Plaines River, Illinois, in light of proposed modifications to prevent the upstream passage of invasive carps. Direct evidence of upstream passage by native fishes at BRLD is lacking and could help to inform assessment of the impacts of barrier technology installation. Fin ray microchemistry was used to assess upstream BRLD passage in the native taxa Centrarchidae, Catostomidae, Ictaluridae, and Lepisosteidae. The fin ray edge strontium : calcium ratio (Sr:Ca) of fish sampled from the Des Plaines River upstream of BRLD and in rivers downstream of BRLD was used to characterize ranges of river-specific fin ray Sr:Ca for each taxon.}
\usage{
bt.snyder.2022
}
\format{The data frame 67,874 × 10 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{integer} \tab fish identifier \cr
\bold{sr_ca}  \tab \code{numeric} \tab fin ray Strontium:Calcium along the entire laser ablation transect for each fish (entire life history) as mmol/mol \cr
\bold{species}  \tab \code{character} \tab scientic name \cr
\bold{common_name}  \tab \code{character} \tab common name
}
}
\details{
   This dataset contains Sr:Ca of water and fin ray samples of native fish to evaluate upstream fish passage through a navigation lock in the Des Plaines River (Brandon Roads Lock and Dam). Fin ray samples from several native fish taxa (catostomids, ictalurids, centrarchids, and lepisosteids) were collected in two river reaches downstream of Brandon Roads Lock and Dam, and in a river reach upstream of Brandon Roads Lock and Dam. Fin ray Sr:Ca derived from microchemistry analyses of fin ray materials from a laser ablation transect is included as both edge values and entire transect (including edge).

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Beam diameter: 25um

Scan speed: 5um/s

Reference materials: NIST1486 (National Institutes of Standards and Technology) and MACS-3 (United States Geological Survey microanalytical carbonate standard pressed pellet)
}
\source{
Snyder, C. E., Oliver, D. C., Knights, B. C., Pescitelli, S. M., & Whitledge, G. W. (2022). Assessment of Native Fish Passage through Brandon Road Lock and Dam, Des Plaines River, Illinois, Using Fin Ray Microchemistry. \emph{Transactions of the American Fisheries Society}, \bold{151}(2), 172-184. \verb{https://doi.org/10.1002/tafs.10345}

Data availability are available at \verb{https://doi.org/10.5066/P9NIH1WC}

Traversing the paper's information via Semantic Scholar ID \verb{0399e14cf871ad43d7151609fd1e3148da9cf574} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.snyder.2022
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### Fin ray sr/ca
n <- dat |>
  group_by(fish_id) |>
  count()
distance <- list()
for (i in 1:nrow(n)) {
  distance[[i]] <- seq(1, n$n[i]) / n$n[i]
}
dat$distance <- unlist(distance)

ggplot(data = dat, aes(distance, sr_ca)) +
  geom_line(aes(colour = species, group = fish_id), show.legend = F, na.rm = T) +
  facet_wrap(species ~ ., scales = "free_y") +
  xlab("Relative distance from cores to edges of the fin ray") +
  ylab("Fin ray sr:ca (mmol/mol)") +
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
\concept{Fin ray}
\concept{trace element}
\concept{Sr/Ca}
\section{Concepts}{
   Fin ray, trace element, Sr/Ca
}
