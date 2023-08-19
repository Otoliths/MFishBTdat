\name{bt.wurster.2001}
\docType{data}
\alias{bt.wurster.2001}
\title{Palaeoclimatology and stable oxygen isotope of otolith*}
\description{Stable oxygen isotope values were determined for freshwater drum (\emph{Aplodinotus grunniens}) sagittal otoliths recovered from the Eastman rockshelter archaeological site in northeast Tennessee to evaluate climate change for the eastern interior United States from 5500 calendar years ago to the present.}
\usage{
bt.wurster.2001
}
\format{The data frame 1,238 × 3 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab shark identifier \cr
\bold{distance}  \tab \code{numeric} \tab distance from the otolith center (um) \cr
\bold{d18O}  \tab \code{numeric} \tab otolith oxygen isotope ratios (‰)
}
}
\details{
   The dataset contains fourteen \emph{Aplodinotus grunniens} sagittae were micromilled to collect and analyze high-resolution intra-annually deposited carbonate powder for d18O.

Instrument: IRMS (isotope ratio mass spectrometer)

Note: data extraction via WebPlotDigitizer tool (Title with * label).
}
\source{
Wurster, C. M., & Patterson, W. P. (2001). Late Holocene climate change for the eastern interior United States: evidence from high-resolution δ18O values of sagittal otoliths. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology}, \bold{170}(1-2), 81-100. \verb{https://doi.org/10.1016/S0031-0182(01)00229-2}


Traversing the paper's information via Semantic Scholar ID \verb{b9e9bd13f3df8e7aba8d78a8c836bc8da87ece08} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.wurster.2001
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### otolith d18O
ggplot(data = dat,aes(distance, d18O)) +
  geom_point(aes(group = fish_id),shape = 1, size = 2)+
  geom_line(aes(group = fish_id),
            show.legend = F, na.rm = T) +
  facet_wrap(fish_id ~ ., scales = "free_y") +
  xlab("Age (years)") +
  ylab(expression(delta * ""^18 * "O" * " (‰)")) +
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
\concept{stable isotope}
\concept{d18O}
\section{Concepts}{
   otolith, stable isotope, d18O
}
