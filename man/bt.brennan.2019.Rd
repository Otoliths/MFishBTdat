\name{bt.brennan.2019}
\docType{data}
\alias{bt.brennan.2019}
\title{Quantifying habitat use of migratory fish across riverscapes}
\description{The authors construct a novel space-time isotope model of provenance (STIMP) that determines the habitat use through time of migratory fish across river basins.}
\usage{
bt.brennan.2019
}
\format{The data frame 60,690 × 10 contains the following columns:
\tabular{lll}{
\bold{file_id}  \tab \code{character} \tab file identifier \cr
\bold{smp_id}  \tab \code{character} \tab sample identifier \cr
\bold{date_collected}  \tab \code{character} \tab date sample collected \cr
\bold{size}  \tab \code{integer} \tab body mass \cr
\bold{age}  \tab \code{numeric} \tab age of captured \cr
\bold{oto_sr8786}  \tab \code{numeric} \tab sr isotopes \cr
\bold{oto_sr8786_se}  \tab \code{numeric} \tab process error of sr isotopes \cr
\bold{proportion_growth}  \tab \code{numeric} \tab proportion growth (body mass) \cr
\bold{derivative}  \tab \code{numeric} \tab derivative of isotope state
}
}
\details{
The otolith Sr isotopes dataset from chinook salmon (\emph{Oncorhynchus tshawytscha}) harvested in 2011 during a coastal fishery in Bristol Bay.
}
\source{
Brennan, S. R., Cline, T. J., & Schindler, D. E. (2019). Quantifying habitat use of migratory fish across riverscapes using space-time isotope models. \emph{Methods in Ecology and Evolution},\bold{10}(7), 1036--1047. \verb{https://doi.org/10.1111/2041-210X.13191}

Code and Data availability are available at \verb{https://doi.org/10.5061/dryad.6f462d4}

Traversing the paper's information via Semantic Scholar ID \verb{82783367d82b43c20edf5721e3c26f978948cd34} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.brennan.2019
tibble::tibble(dat)

\dontrun{
### sulfur profile figure
library(dplyr)
library(ggplot2)

### Sr isotopes
ggplot(data = dat, aes(proportion_growth, oto_sr8786)) +
  geom_line(aes(group = smp_id, colour = sex), show.legend = F) +
  facet_grid(sex ~ ., scales = "free_y") +
  xlab("Proportion of growth (um in otolith)") +
  ylab(expression(paste(
    {}^"87",
    "Sr/",
    {}^"86",
    "Sr"
  ))) +
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
