\name{bt.hill.2020}
\docType{data}
\alias{bt.hill.2020}
\title{Investigating natal philopatry in Hickory Shad using otolith chemistry}
\description{LA-ICP-MS was used to quantify seven elements (Mg, Mn, Cu, Zn, Sr, Ba, and Pb), along a continuous transect that ran from the ventral edge of the otolith through the core to the dorsal edge of each otolith, resulting in a time resolved model of the environmental exposure history of each fish.}
\usage{
bt.hill.2020
}
\format{The data frame 266,731 × 16 contains the following columns:
\tabular{lll}{
\bold{river}  \tab \code{character} \tab river of capture \cr
\bold{parent_river}  \tab \code{character} \tab parent river of capture \cr
\bold{estuary}  \tab \code{character} \tab estuary of capture \cr
\bold{state}  \tab \code{character} \tab state of capture \cr
\bold{capt_yr}  \tab \code{integer} \tab year of capture \cr
\bold{fishno}  \tab \code{integer} \tab fish id \cr
\bold{sex}  \tab \code{character} \tab fish sex \cr
\bold{elapsed_time}  \tab \code{numeric} \tab elapsed time of LA-ICP-MS \cr
\bold{distance}  \tab \code{numeric} \tab distance from the ventral edge of the otolith through the core to the dorsal edge \cr
\bold{mg_ca}  \tab \code{numeric} \tab Mg/Ca \cr
\bold{mn_ca}  \tab \code{numeric} \tab Mn/Ca \cr
\bold{cu_ca}  \tab \code{numeric} \tab Cu/Ca \cr
\bold{zn_ca}  \tab \code{numeric} \tab Zn/Ca \cr
\bold{sr_ca}  \tab \code{numeric} \tab Sr/Ca \cr
\bold{ba_ca}  \tab \code{numeric} \tab Ba/Ca \cr
\bold{pb_ca}  \tab \code{numeric} \tab Pb/Ca
}
}
\details{
   The dataset contains contains the raw chemistry data (results of LA-ICP-MS) for all 289 Hickory Shad (\emph{Alosa mediocris}).

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Beam diameter: 30um

Scan speed: 2-5um/s

Reference materials: NIST-610 (National Institutes of Standards and Technology glass standard)
}
\source{
Hill, C. R., Rulifson, R. A., & Halden, N. M. (2022). A quantitative approach to investigate natal philopatry in Hickory Shad (\emph{Alosa mediocris}) using otolith chemistry. \emph{Fisheries Research}, 249, 106232. \verb{https://doi.org/10.1016/j.fishres.2022.106232}

Code and data availability are available at \verb{https://doi.org/10.5281/zenodo.4536534}

Traversing the paper's information via Semantic Scholar ID \verb{7690935e5be9a70157633875a316d7ba3d083205} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.hill.2020
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### Sr/Ca profile figure
ggplot(data = dat, aes(distance, sr_ca)) +
  geom_line(aes(col = sex,group = fishno), show.legend = F) +
  facet_grid(river ~ sex, scales = "free_y") +
  ylab("Sr/Ca")+
  xlab("Distance from the ventral edge of the otolith through the core to the dorsal edge") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Mg/Ca profile figure
ggplot(data = dat, aes(distance, mg_ca)) +
  geom_line(aes(col = sex,group = fishno), show.legend = F) +
  facet_grid(river ~ sex, scales = "free_y") +
  ylab("Mg/Ca")+
  xlab("Distance from the ventral edge of the otolith through the core to the dorsal edge") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Cu/Ca profile figure
ggplot(data = dat, aes(distance, cu_ca)) +
  geom_line(aes(col = sex,group = fishno), show.legend = F) +
  facet_grid(river ~ sex, scales = "free_y") +
  ylab("Cu/Ca")+
  xlab("Distance from the ventral edge of the otolith through the core to the dorsal edge") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Zn/Ca profile figure
ggplot(data = dat, aes(distance, zn_ca)) +
  geom_line(aes(col = sex,group = fishno), show.legend = F) +
  facet_grid(river ~ sex, scales = "free_y") +
  ylab("Zn/Ca")+
  xlab("Distance from the ventral edge of the otolith through the core to the dorsal edge") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Ba/Ca profile figure
ggplot(data = dat, aes(distance, ba_ca)) +
  geom_line(aes(col = sex,group = fishno), show.legend = F) +
  facet_grid(river ~ sex, scales = "free_y") +
  ylab("Ba/Ca")+
  xlab("Distance from the ventral edge of the otolith through the core to the dorsal edge") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Pb/Ca profile figure
ggplot(data = dat, aes(distance, pb_ca)) +
  geom_line(aes(col = sex,group = fishno), show.legend = F) +
  facet_grid(river ~ sex, scales = "free_y") +
  ylab("Pb/Ca")+
  xlab("Distance from the ventral edge of the otolith through the core to the dorsal edge") +
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
\concept{Mn/Ca}
\concept{Mg/Ca}
\concept{Ba/Ca}
\concept{Pb/Ca}
\concept{Cu/Ca}
\section{Concepts}{
   otolith, trace element, Sr/Ca, Mn/Ca, Mg/Ca, Ba/Ca, Pb/Ca, Cu/Ca
}
