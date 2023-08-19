\name{bt.cordoleani.2021}
\docType{data}
\alias{bt.cordoleani.2021}
\title{Studies of spring-run chinook salmon life history diversity}
\description{Results from chinook salmon otolith strontium isotope profiles separated into early, intermediate and late migrants.}
\usage{
bt.cordoleani.2021
}
\format{The data frame 2,969 × 9 contains the following columns:
\tabular{lll}{
\bold{sample}  \tab \code{character} \tab fish identifier \cr
\bold{year}     \tab \code{integer} \tab year of capture \cr
\bold{watershed}  \tab \code{character} \tab watershed of captured \cr
\bold{distance}     \tab \code{numeric}   \tab distance from otolith core to edge (um) \cr
\bold{oto_sr}    \tab \code{numeric}   \tab otolith strontium isotope data (Sr8786)  \cr
\bold{se1}     \tab \code{numeric}   \tab standard error of otolith strontium isotope data (Sr8786) \cr
\bold{sr_v}     \tab \code{numeric}   \tab strontium signal (v) \cr
\bold{sr_vcol}     \tab \code{numeric}   \tab strontium signal (vcol) \cr
\bold{reartype}    \tab \code{character}   \tab  three life history types of chinook salmon
}
}
\details{
The dataset contains chinook salmon otolith strontium isotope profiles. Otolith isotope profiles revealed three distinct juvenile life history types (referred to as 'early', 'intermediate' and 'late' migrants).

In threatened spring-run chinook salmon spawning at the southern edge of the species range, this study found that late-migrating juveniles are critical to cohort success in years characterized by droughts and ocean heatwaves. Late migrants rely on cool river temperatures over summer, increasingly rare due to the combined effects of warming and impassable
dams.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)
}
\source{
   Cordoleani, F., Phillis, C. C., Sturrock, A. M., FitzGerald, A. M., Malkassian, A., Whitman, G. E., ... & Johnson, R. C. (2021). Threatened salmon rely on a rare life history strategy in a warming landscape. \emph{Nature Climate Change}, \bold{11}(11), 982--988. \verb{https://doi.org/10.1038/s41558-021-01186-4}

Data and code availability are available at \verb{https://github.com/floracordoleani/MillDeerOtolithPaper}

Traversing the paper's information via Semantic Scholar ID \verb{e71577a8327b918628b43a1964ef212ee802e9a4} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.cordoleani.2021
tibble::tibble(dat)

\dontrun{
### Sr profile figure
library(dplyr)
library(ggplot2)

ggplot(data = dat,aes(distance, oto_sr))+
  geom_line(aes(col = reartype),show.legend = F,linewidth = 0.02, na.rm = T)+
  facet_grid(.~ reartype)+
  labs(
    x = (expression(paste("Otolith radius (", mu, "m)", sep = ""))),
    y = expression(paste(
      {}^"87",
      "Sr/",
      {}^"86",
      "Sr"
    ))
  )+
  scale_x_continuous(limits = c(0, 1200), breaks = seq(0, 1200, 200)) +
  scale_y_continuous(limits = c(0.7035, 0.710), breaks = seq(0.704, 0.710, 0.001)) +
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
\concept{Sr8786}
\section{Concepts}{
   otolith, stable isotope, Sr8786
}
