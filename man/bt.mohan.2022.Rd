\name{bt.mohan.2022}
\docType{data}
\alias{bt.mohan.2022}
\title{Otolith geochemistry reflects life histories of Pacific bluefin tuna}
\description{Otolith biominerals of large Pacific bluefin tuna \emph{Thunnus orientalis} (PBT) collected from the western, eastern, and south Pacific Ocean, were analyzed for a suite of trace elements across calcified/proteinaceous growth zones to investigate patterns across ontogeny.}
\usage{
bt.mohan.2022
}
\format{The data frame 246,375 × 11 contains the following columns:
\tabular{lll}{
\bold{pbt_id}  \tab \code{character} \tab pacific bluefin tuna \emph{Thunnus orientalis} identifier \cr
\bold{distance}  \tab \code{numeric} \tab distance from otolith core to edge (um) \cr
\bold{value}  \tab \code{numeric} \tab otolith element(E):Ca
(Ba/Ca in umol/mol;
Li/Ca in umol/mol;
Mg/Ca in umol/mol;
Mn/Ca in umol/mol;
Sr/Ca in mmol/mol;
Zn/Ca in umol/mol
) \cr
\bold{elements}  \tab \code{character} \tab trace element \cr
\bold{date}  \tab \code{character} \tab date of capture \cr
\bold{ocean}  \tab \code{character} \tab ocean of capture \cr
\bold{region}  \tab \code{character} \tab region of capture \cr
\bold{sex}  \tab \code{character} \tab fish sex \cr
\bold{fl}  \tab \code{numeric} \tab fork length (cm) \cr
\bold{age}  \tab \code{character} \tab estimated age (year) \cr
\bold{gg_weight}  \tab \code{integer} \tab gilled and gutted (gg) weight (kg)
}
}
\details{
   Elemental profiles of individual Pacific bluefin tuna \emph{Thunnus orientalis} (PBT) otoliths collected from the Eastern Pacific (EPO), Western Pacific (WPO) and South Pacific (SPO); different colored lines represent individual fish from each region.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Beam diameter: 50um

Scan speed: 5um/s

Reference materials: NIST-612 (National Institutes of Standards and Technology glass standard) andMACS-3 (United States Geological Survey microanalytical carbonate standard pressed pellet)
}
\source{
Mohan, J. A., Dewar, H., Snodgrass, O. E., Miller, N. R., Tanaka, Y., Ohshimo, S., ... & Wells, R. D. (2022). Otolith geochemistry reflects life histories of Pacific bluefin tuna. \emph{Plos one}, \bold{17}(10), e0275899. \verb{https://doi.org/10.1371/journal.pone.0275899}

Traversing the paper's information via Semantic Scholar ID \verb{21574f9994add809b1d6c495a60d706ce070a552} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.mohan.2022
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### Otolith ba/ca
ggplot(data = dat[which(dat$elements == "Ba_Ca"), ], aes(distance, value)) +
  geom_line(aes(colour = ocean, group = pbt_id), show.legend = F, na.rm = T) +
  facet_grid(ocean ~ ., scales = "free_y") +
  xlab("Distance from otolith core to edge (um)") +
  ylab("Otolith Ba/Ca (umol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Otolith li/ca
ggplot(data = dat[which(dat$elements == "Li_Ca"), ], aes(distance, value)) +
  geom_line(aes(colour = ocean, group = pbt_id), show.legend = F, na.rm = T) +
  facet_grid(ocean ~ ., scales = "free_y") +
  xlab("Distance from otolith core to edge (um)") +
  ylab("Otolith Li/Ca (umol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Otolith mg/ca
ggplot(data = dat[which(dat$elements == "Mg_Ca"), ], aes(distance, value)) +
  geom_line(aes(colour = ocean, group = pbt_id), show.legend = F, na.rm = T) +
  facet_grid(ocean ~ ., scales = "free_y") +
  xlab("Distance from otolith core to edge (um)") +
  ylab("Otolith Mg/Ca (umol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Otolith mn/ca
ggplot(data = dat[which(dat$elements == "Mn_Ca"), ], aes(distance, value)) +
  geom_line(aes(colour = ocean, group = pbt_id), show.legend = F, na.rm = T) +
  facet_grid(ocean ~ ., scales = "free_y") +
  xlab("Distance from otolith core to edge (um)") +
  ylab("Otolith Mn/Ca (umol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Otolith sr/ca
ggplot(data = dat[which(dat$elements == "Sr_Ca"), ], aes(distance, value)) +
  geom_line(aes(colour = ocean, group = pbt_id), show.legend = F, na.rm = T) +
  facet_grid(ocean ~ ., scales = "free_y") +
  xlab("Distance from otolith core to edge (um)") +
  ylab("Otolith Sr/Ca (mmol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Otolith zn/ca
ggplot(data = dat[which(dat$elements == "Zn_Ca"), ], aes(distance, value)) +
  geom_line(aes(colour = ocean, group = pbt_id), show.legend = F, na.rm = T) +
  facet_grid(ocean ~ ., scales = "free_y") +
  xlab("Distance from otolith core to edge (um)") +
  ylab("Otolith Zn/Ca (umol/mol)") +
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
\concept{Ba/Ca}
\concept{Li/Ca}
\concept{Mg/Ca}
\concept{Mn/Ca}
\concept{Sr/Ca}
\concept{Zn/Ca}
\section{Concepts}{
   otolith, trace element, Ba/Ca, Li/Ca, Mg/Ca, Mn/Ca, Sr/Ca, Zn/Ca
}
