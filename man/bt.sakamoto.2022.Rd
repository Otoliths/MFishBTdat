\name{bt.sakamoto.2022}
\docType{data}
\alias{bt.sakamoto.2022}
\title{Life history responses to climate variability in sardine populations}
\description{In this study, the authors investigated the early life history traits and their responses to seawater temperature variation of sardines in western and eastern boundary current systems to better understand the factors influencing the populations’ apparent opposite responses to decadal scale anomalies in ocean temperature.}
\usage{
bt.sakamoto.2022
}
\format{The data frame 1,558 × 7 contains the following columns:
\tabular{lll}{
\bold{region_id}  \tab \code{character} \tab "JP" is JP sardine and "CA is CA sardine \cr
\bold{fish_id}     \tab \code{character} \tab fish identifier \cr
\bold{year_class}    \tab \code{integer}   \tab year of hach  \cr
\bold{station_id}     \tab \code{character}   \tab number of station in cuise surveys or ID of landing port \cr
\bold{age_range}    \tab \code{character}   \tab specifies the age range that was micromilled that are differently defined for JP and CA sardine. For JP: {A: 0-30 dph, B: 31-45 dph, C: 46-60 dph, D: 61-75 dph, E: 76-90 dph, F: 91-105 dph, G: 106-120 dph} and for CA: {A: 0-30 dph, B: 31-60 dph, C: 61-90 dph, D: 91-120 dph, E: 121-150 dph}  \cr
\bold{d13c}     \tab \code{numeric}   \tab stable carbon isotope ratio relative to VPDB in permil \cr
\bold{d18o}     \tab \code{numeric}   \tab stable oxygen isotope ratio relative to VPDB in permil
}
}
\details{
   Stable carbon and oxygen isotope ratios of powders extracted from otoliths of JP and CA sardines by micromilling them. The d13C and d18O values were reported in delta-notation relative to the Vienna Pee Dee Belemnite (VPDB) scale and are given as a permil value. Analytical precisions were better than 0.10 permil and 0.17 permil for d18O, and better than 0.10 permil and 0.15 permil for d13C, respectively. The acid fractionation factor of calcite was used. Because the difference between the acid fractionation factor of calcite and aragonite is temperature dependent, 0.09 permil was subtracted from the d18O value
determined by DELTA V to adjust for the different response temperatures.
}
\source{
Sakamoto, T., Takahashi, M., Chung, M. T., Rykaczewski, R. R., Komatsu, K., Shirai, K., ... & Higuchi, T. (2022). Contrasting life-history responses to climate variability in eastern and western North Pacific sardine populations. \emph{Nature Communications}, \bold{13}(1), 5298. \verb{https://doi.org/10.1038/s41467-022-33019-z}

Data availability are available at \verb{https://doi.org/10.5281/zenodo.6983520}

Traversing the paper's information via Semantic Scholar ID \verb{a30c43db35f53fcbb1f5c364cd89ad6f7eb9afb5} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.sakamoto.2022
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### d13C profile figure
ggplot(data = dat,aes(age_range, d13c))+
  geom_boxplot(aes(col = region_id),show.legend = F,size = 0.02, na.rm = T)+
  facet_grid(.~ region_id)+
  labs(
    x = ("Age range"),
    y = (expression(delta * ""^13 * "C" * " (‰)"))
  )+
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### d18O profile figure
ggplot(data = dat,aes(age_range, d18o))+
  geom_boxplot(aes(col = region_id),show.legend = F,size = 0.02, na.rm = T)+
  facet_grid(.~ region_id)+
  labs(
    x = ("Age range"),
    y = (expression(delta * ""^18 * "O" * " (‰)"))
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
\concept{d13C}
\concept{d18O}
\section{Concepts}{
   otolith, isotopic ratios, d13C, d18O
}
