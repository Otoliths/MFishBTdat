\name{bt.tang.2023}
\docType{data}
\alias{bt.tang.2023}
\title{Acanthopagrus latus migration patterns and habitat use}
\description{Yellowfin seabream \emph{Acanthopagrus latus} is an economically important species in this area; however, the distribution of its spawning grounds and habitat use patterns remain unknown. The authors unlocked \emph{A. latus} migration patterns and habitat use in Wanshan Islands, Pearl River Estuary, determined using otolith microchemical analysis.}
\usage{
bt.tang.2023
}
\format{The data frame 84,471 × 16 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{integer} \tab fish identifier \cr
\bold{location}  \tab \code{character} \tab location of capture \cr
\bold{distance}  \tab \code{numeric} \tab distance from the core to the edge of otolith (um) \cr
\bold{sr_ca}  \tab \code{numeric} \tab otolith Sr:Ca (x1000) \cr
\bold{li_ca}  \tab \code{numeric} \tab otolith Li:Ca \cr
\bold{na_ca}  \tab \code{numeric} \tab otolith Na:Ca \cr
\bold{mg_ca}  \tab \code{numeric} \tab otolith Mg:Ca \cr
\bold{si_ca}  \tab \code{numeric} \tab otolith Si:Ca \cr
\bold{mn_ca}  \tab \code{numeric} \tab otolith Mn:Ca \cr
\bold{fe_ca}  \tab \code{numeric} \tab otolith Fe:Ca \cr
\bold{co_ca}  \tab \code{numeric} \tab otolith Co:Ca \cr
\bold{ni_ca}  \tab \code{numeric} \tab otolith Ni:Ca \cr
\bold{cu_ca}  \tab \code{numeric} \tab otolith Cu:Ca \cr
\bold{zn_ca}  \tab \code{numeric} \tab otolith Zn:Ca \cr
\bold{sb_ca}  \tab \code{numeric} \tab otolith Sb:Ca \cr
\bold{ba_ca}  \tab \code{numeric} \tab otolith Ba:Ca
}
}
\details{
   The dataset contains 92 otolith samples of \emph{Acanthopagrus latus} were collected from three geographic areas (MW: Qi'ao Island Mangrove Water Habitat; OW: Yamen Estuary Oyster Farm Water Habitat; RW: Dong'ao-Guishan Island Reef Water Habitat), and the concentrations of Sr and Ca along the shortest axis of the vertical otolith annual or lunar rings were measured to span the entire life cycle of \emph{A. latus}, with the core and edge areas corresponding to environmental characteristics at birth and capture, respectively.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Beam diameter: 10um

Reference materials: NIST-610,NIST-612 (National Institutes of Standards and Technology glass standard)
}
\source{

Tang, G., He, Z., Liu, Y., Xiao, Y., Bi, S., Sun, Y., ... & Li, C. (2023). \emph{Acanthopagrus latus} migration patterns and habitat use in Wanshan Islands, Pearl River Estuary, determined using otolith microchemical analysis. \emph{Frontiers in Marine Science}. \verb{https://doi.org/10.3389/fmars.2023.1104528}

Traversing the paper's information via Semantic Scholar ID \verb{2f8ea5c22581cb0c2132b620ac722e8a29e6c260} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.tang.2023
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### otolith sr/ca
ggplot(data = dat, aes(distance, sr_ca)) +
  geom_line(aes(colour = location, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(location ~ ., scales = "free_y") +
  xlab("Distance from the core to the edge of otolith (um)") +
  ylab("Otolith Sr:Ca (x1000)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )+
  scale_y_continuous(limits = c(0,10))
}
}

\keyword{datasets}
\concept{otolith}
\concept{trace element}
\concept{Sr/Ca}
\concept{Li/Ca}
\concept{Na/Ca}
\concept{Mg/Ca}
\concept{Si/Ca}
\concept{Mn/Ca}
\concept{Fe/Ca}
\concept{Co/Ca}
\concept{Ni/Ca}
\concept{Cu/Ca}
\concept{Zn/Ca}
\concept{Sb/Ca}
\concept{Ba/Ca}
\section{Concepts}{
   otolith, trace element, Sr/Ca, Li/Ca, Na/Ca,Mg/Ca, Si/Ca, Mn/Ca, Fe/Ca, Co/Ca, Ni/Ca, Cu/Ca,Zn/Ca, Sb/Ca, Ba/Ca
}
