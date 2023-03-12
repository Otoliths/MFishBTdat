\name{bt.grammer.2017}
\docType{data}
\alias{bt.grammer.2017}
\title{Coupling biogeochemical tracers with fish growth}
\description{The lack of among-individual correlations of otolith traits in properly formulated models and the biases that can be introduced by not including appropriate intrinsic covariates suggest that caution is needed when assuming multi-elemental signatures are reflective solely of shared environments.}
\usage{
bt.grammer.2017
}
\format{The data frame 2,688 × 14 contains the following columns:
\tabular{lll}{
\bold{IDCode}  \tab \code{character} \tab unique identifier for each fish \cr
\bold{age.years.cap}  \tab \code{integer} \tab age of the fish in years at date of capture \cr
\bold{age.month.cap}  \tab \code{integer} \tab age of the fish in months at date of capture \cr
\bold{month.code.cap}  \tab \code{integer} \tab month code for the date of capture, e.g. 75 = Dec 1996 \cr
\bold{FishID}  \tab \code{character} \tab = IDCode \cr
\bold{Month}  \tab \code{integer} \tab a code designating the specific month and year of each monthly resolved increment (i.e. 75 = Dec 1996, 76 = Jan 1997, etc.) \cr
\bold{Age}  \tab \code{integer} \tab age when each monthly increment was formed (total months) \cr
\bold{fMonth}  \tab \code{integer} \tab = Month (as factor) \cr
\bold{Growth}  \tab \code{numeric} \tab measured value of the growth increment (μm) for that discrete monthly time period \cr
\bold{SrCa}  \tab \code{numeric} \tab value of the Sr:Ca ratio for that discrete monthly time period (μmol/mol) \cr
\bold{NaCa}  \tab \code{numeric} \tab value of the Na:Ca ratio for that discrete monthly time period (μmol/mol) \cr
\bold{BaCa}  \tab \code{numeric} \tab value of the Ba:Ca ratio for that discrete monthly time period (μmol/mol) \cr
\bold{MgCa}  \tab \code{numeric} \tab value of the Mg:Ca ratio for that discrete monthly time period (μmol/mol) \cr
\bold{LiCa}  \tab \code{numeric} \tab value of the Li:Ca ratio for that discrete monthly time period (μmol/mol)

}
}
\details{
Value of the Element:Ca ratio for that discrete monthly time period (μmol/mol) extracted from the laser ablation ICP-MS data.

}
\source{

Grammer, G. L., Morrongiello, J. R., Izzo, C., Hawthorne, P. J., Middleton, J. F., & Gillanders, B. M. (2017). Coupling biogeochemical tracers with fish growth reveals physiological and environmental controls on otolith chemistry. \emph{Ecological Monographs}, \bold{87}(3), 487-507. \verb{https://doi.org/10.1002/ecm.1264}

Code and data availability are available at \verb{https://doi.org/10.5061/dryad.cn55b}

Traversing the paper's information via Semantic Scholar ID \verb{8255e6b7bc33ad3ba95ccc7313846c631539c773} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.grammer.2017
tibble::tibble(dat)

\dontrun{

library(dplyr)
library(ggplot2)

### Sr/Ca
ggplot(data = dat, aes(Age, SrCa)) +
  geom_line(aes(group = FishID), show.legend = F, na.rm = T) +
  labs(
    x = expression("Age (months)"),
    y = expression(paste("Sr/Ca (", μmol / mol, ")", sep = ""))
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Na/Ca
ggplot(data = dat, aes(Age, NaCa)) +
  geom_line(aes(group = FishID), show.legend = F, na.rm = T) +
  labs(
    x = expression("Age (months)"),
    y = expression(paste("Na/Ca (", μmol / mol, ")", sep = ""))
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Ba/Ca
ggplot(data = dat, aes(Age, BaCa)) +
  geom_line(aes(group = FishID), show.legend = F, na.rm = T) +
  labs(
    x = expression("Age (months)"),
    y = expression(paste("Ba/Ca (", μmol / mol, ")", sep = ""))
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Mg/Ca
ggplot(data = dat, aes(Age, MgCa)) +
  geom_line(aes(group = FishID), show.legend = F, na.rm = T) +
  labs(
    x = expression("Age (months)"),
    y = expression(paste("Mg/Ca (", μmol / mol, ")", sep = ""))
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Li/Ca
ggplot(data = dat, aes(Age, LiCa)) +
  geom_line(aes(group = FishID), show.legend = F, na.rm = T) +
  labs(
    x = expression("Age (months)"),
    y = expression(paste("Li/Ca (", μmol / mol, ")", sep = ""))
  ) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Growth

ggplot(data = dat, aes(Age, Growth)) +
  geom_line(aes(group = FishID), show.legend = F, na.rm = T) +
  labs(
    x = expression("Age (months)"),
    y = expression(paste("Growth (", mu, "m)", sep = ""))
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
\concept{bulk elements}
\concept{Sr/Ca}
\concept{Na/Ca}
\concept{Ba/Ca}
\concept{Mg/Ca}
\concept{Li/Ca}
\section{Concepts}{
   otolith, bulk elements, Sr/Ca, Na/Ca, Ba/Ca, Mg/Ca, Li/Ca
}
