\name{bt.morissette.2021}
\docType{data}
\alias{bt.morissette.2021}
\title{Quantifyingmigratory capacity and dispersal of the invasive tench}
\description{The study of distribution and dispersal of invasive fishes is challenging during the early stages of invasion. Quantification of trace elements incorporated into fish hard parts represents an innovative technique for this task. Otolith chemistry has been used to describe fish stock structure, migratory behaviour and to support the management of several specie.}
\usage{
bt.morissette.2021
}
\format{The data frame 31,143 × 11 contains the following columns:
\tabular{lll}{
\bold{id}  \tab \code{character} \tab identifier of individual fish \cr
\bold{site}  \tab \code{character} \tab site of capture \cr
\bold{zone}  \tab \code{character} \tab data were separated in three distinct zones: core(C) of the otolith (first 10 analysis points from the core), otolith margin(E) (10 last analysis points) and complete transect(T). \cr
\bold{distance_core}    \tab \code{numeric}   \tab distance from the core of the otolith to edge(um)\cr
\bold{srca} \tab \code{numeric}   \tab sr/ca (mmol/mol) \cr
\bold{baca} \tab \code{numeric}   \tab ba/ca (mmol/mol) \cr
\bold{mgca} \tab \code{numeric}   \tab mg/ca (mmol/mol) \cr
\bold{mnca} \tab \code{numeric}   \tab mn/ca (mmol/mol) \cr
\bold{kca} \tab \code{numeric}   \tab k/ca (mmol/mol) \cr
\bold{feca} \tab \code{numeric}   \tab fe/ca (mmol/mol)
}
}
\details{
   The dataset contains core-to-edge transect of invasive tench (\emph{Tinca tinca}) otolith.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Beam diameter: 19um

Scan speed: 5um/s

Reference materials: NIST-610 (National Institutes of Standards and Technology glass standard) and MACS-3 (United States Geological Survey microanalytical carbonate standard pressed pellet)
}
\source{
Morissette, O.  Lecomte, F.  Vachon, N.  Drouin, A.  & Sirois, P. (2021). Quantifying migratory capacity and dispersal of the invasive Tench (\emph{Tinca tinca}) in the St. Lawrence River using otolith chemistry. \emph{Canadian Journal of Fisheries and Aquatic Sciences}, \bold{78}(11), 1628-1638.\verb{https://doi.org/10.1139/cjfas-2020-0460}

Data availability are available at \verb{https://doi.org/10.6084/m9.figshare.14406863.v1}

Traversing the paper's information via Semantic Scholar ID \verb{001378a49553ea5076562f9c41333cca74da56a8} using \bold{S2miner} package
}

\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.morissette.2021
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### Taking Sr/Ca of otolith
### Otolith core
ggplot(data = dat[which(dat$zone == "C"),],aes(site, srca))+
  geom_boxplot()+
  ylab("Sr/Ca (mmol/mol)")+
  xlab("Site of capture")+
  labs(title = "Otolith core")

### Otolith edge
ggplot(data = dat[which(dat$zone == "E"),],aes(site, srca))+
  geom_boxplot()+
  ylab("Sr/Ca (mmol/mol)")+
  xlab("Site of capture")+
  labs(title = "Otolith edge")

### Core-to-edge transect
ggplot(data = dat[which(dat$zone == "T"),],aes(distance_core, srca))+
  geom_line(aes(col = site, group = id),show.legend = F,linewidth = 0.02, na.rm = T)+
  facet_grid(site~.)+
  labs(
    x = expression(paste("Distance from the core of the otolith (", mu, "m)", sep = "")),
    y = "Sr/Ca (mmol/mol)"
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
\concept{trace element}
\concept{Sr/ca}
\concept{Ba/ca}
\concept{Mg/ca}
\concept{Mn/ca}
\concept{Na/ca}
\concept{k/ca}
\concept{Fe/ca}
\section{Concepts}{
   otolith, trace element, Sr/ca, Ba/ca, Mg/ca, Mn/ca, Na/ca, K/ca, Fe/ca
}
