\name{bt.hughes.2014}
\docType{data}
\alias{bt.hughes.2014}
\title{Low interbasin connectivity in a facultatively diadromous fish}
\description{Analysis of multielemental signatures in the otolith cores of diadromous fish revealed strong discrimination between river basins, suggesting that diadromeous fish spend their early lives within chemically distinct estuaries rather than the more homogenous marine environment, thus avoiding dispersal and maintaining genetic structure.}
\usage{
bt.hughes.2014
}
\format{The data frame 8,834 × 4 contains the following columns:
\tabular{lll}{
\bold{fish_code}  \tab \code{integer} \tab fish identifier \cr
\bold{distance}     \tab \code{numeric} \tab distance from otolith core (um) \cr
\bold{oto_sr8786}    \tab \code{numeric}   \tab otolith strontium isotope (Sr87/Sr86) values  \cr
\bold{river}     \tab \code{character}   \tab river of captured
}
}
\details{
The datasets contains Strontium isotope ratio data for each individual fish. The authors use otolith chemistry to distinguish between diadromous and nondiadromous life histories and population genetics to examine interbasin connectivity resulting from diadromy. Otolith strontium isotope (87Sr/86Sr) transects identified three main life history patterns: amphidromy, freshwater residency and estuarine/marine residency.

}
\source{

Hughes, J. M., Schmidt, D. J., Macdonald, J. I., Huey, J. A., & Crook, D. A. (2014). Low interbasin connectivity in a facultatively diadromous fish: evidence from genetics and otolith chemistry. \emph{Molecular Ecology}, \bold{23}(5), 1000--1013. \verb{http://dx.doi.org/10.1111/mec.12661}

Data availability are available at \verb{https://doi.org/10.5061/dryad.3dh2c}

Traversing the paper's information via Semantic Scholar ID \verb{d1015ceaa5cf80e981733e01ca8beb0eb56616b0} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.hughes.2014
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### Sr8786 profile figure
ggplot(data = dat,aes(distance, oto_sr8786))+
  geom_line(aes(col = river),show.legend = F,linewidth = 0.02, na.rm = T)+
  facet_wrap(.~ river,ncol = 3)+
  labs(
    x = (expression(paste("Distance from otolith core (", mu, "m)", sep = ""))),
    y = (expression(paste(
      {}^"87",
      "Sr/",
      {}^"86",
      "Sr"
    )))
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
\concept{Sr8786}
\section{Concepts}{
   otolith, isotopic ratios, Sr8786
}
