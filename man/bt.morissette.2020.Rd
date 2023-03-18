\name{bt.morissette.2020}
\docType{data}
\alias{bt.morissette.2020}
\title{Deciphering lifelong thermal niche using otolith d18O thermometry}
\description{It is proposed that increased fat content and genetic origin are potential explanatory factors for warmer temperature use in lake trout populations that experienced supplementation stocking during the last 20 years.}
\usage{
bt.morissette.2020
}
\format{The data frame 375 × 18 contains the following columns:
\tabular{lll}{
\bold{id}  \tab \code{character} \tab identifier of individual fish \cr
\bold{lake}  \tab \code{character} \tab lake of capture \cr
\bold{stocking}  \tab \code{logical} \tab is this lake was stocked or not? Always yes (O) \cr
\bold{ecotype}  \tab \code{character} \tab ecotype of the lake trout in this lake, always planktivorous (P) \cr
\bold{sex}  \tab \code{character} \tab sex of the fish; either male (M) or female (F) \cr
\bold{maturity}  \tab \code{character} \tab maturity status of the fish; mature or immature \cr
\bold{origin}  \tab \code{character} \tab genetic origin of the fish, determined by genomics; either natural (N), Local (L), Hybrid (H) or stocked (E)  \cr
\bold{analysis}  \tab \code{character} \tab unique identifier of the SIMS analysis \cr
\bold{material}  \tab \code{character} \tab unique identifier of the analyzed otolith \cr
\bold{date}  \tab \code{character} \tab date of the analyses \cr
\bold{d18ovsmow_oto}    \tab \code{numeric}   \tab otolith oxygen 18 isotopic value (permil) relative to the Vienna International Mean Ocean Water (VSMOW) standard \cr
\bold{d18ovpdb_oto}    \tab \code{numeric}   \tab otolith oxygen 18 isotopic value (permil) relative to the Vienna Pee Dee Belemnite (VPDB) standard \cr
\bold{corrected_d18ovpdb_oto}    \tab \code{numeric}   \tab oxygen 18 isotopic value (permil) relative to the Vienna Pee Dee Belemnite (VPDB) standard on which the -1 correction have been applied \cr
\bold{distance_oto}    \tab \code{numeric}   \tab distance from the core of the otolith (um) of the SIMS analyse  \cr
\bold{age}    \tab \code{numeric}   \tab age (as a continuous variable) of fish at the SIMS analysis location  \cr
\bold{age_int}    \tab \code{integer}   \tab age (as an integer) of fish at the SIMS analysis location \cr
\bold{age}    \tab \code{numeric}   \tab age (as a continuous variable) of fish at the SIMS analysis location  \cr
\bold{TL}    \tab \code{integer}   \tab total length (in mm) at the time of capture of the fish \cr
\bold{weight}    \tab \code{integer}   \tab mass (in gram) at the time of capture of the fish \cr
}
}
\details{
   The dataset contains otolith d18O thermometry within supplemented lake trout (\emph{Salvelinus namaycush}) populations.
}
\source{
Morissette, O., Bernatchez, L., Wiedenbeck, M., & Sirois, P. (2020). Deciphering lifelong thermal niche using otolith δ18O thermometry within supplemented lake trout (Salvelinus namaycush) populations. \emph{Freshwater Biology}, \bold{65}(6), 1114-1127. \verb{https://doi.org/10.1111/fwb.13497}

Data availability are available at \verb{https://doi.org/10.5061/dryad.xgxd254cp}

Traversing the paper's information via Semantic Scholar ID \verb{51e034239ddc7c74089a97274178ed67f72f5bef} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.morissette.2020
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### d18O profile figure
ggplot(data = dat,aes(distance_oto, corrected_d18ovpdb_oto))+
  geom_line(aes(col = sex, group = id),show.legend = F,linewidth = 0.02, na.rm = T)+
  facet_grid(.~ sex)+
  labs(
    x = (expression(paste("Distance from the core of the otolith (", mu, "m)", sep = ""))),
    y = (expression(paste("Corrected otolith ",delta^18*O," (‰)")))
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
\concept{d18O}
\section{Concepts}{
   otolith, isotopic ratios, d18O
}
