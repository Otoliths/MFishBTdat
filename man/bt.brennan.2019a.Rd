\name{bt.brennan.2019a}
\docType{data}
\alias{bt.brennan.2019a}
\title{Shifting habitat mosaics and fish production across river basins}
\description{To conserve species, we must conserve their habitat. This concept is well known, but the reality is much more complex than simply conserving a particular area. Habitats are dynamic and vary across both space and time. Such variation can help to facilitate long-term persistence of species by allowing local movement in search of the best conditions. Brennan et al. clearly demonstrate the benefit of the habitat mosaic to Pacific salmon by characterizing how both climate and population productivity vary over time and space in an Alaskan river system.}
\usage{
bt.brennan.2019a
}
\format{The data frame 183,371 × 11 contains the following columns:
\tabular{lll}{
\bold{file_id}  \tab \code{character} \tab file identifier \cr
\bold{fish_id}  \tab \code{character} \tab fish identifier \cr
\bold{species}  \tab \code{character} \tab chinook salmon and sockeye salmon \cr
\bold{year}  \tab \code{integer} \tab year of caught \cr
\bold{date}  \tab \code{character} \tab date of caught \cr
\bold{sex}  \tab \code{character} \tab fish sex \cr
\bold{size}  \tab \code{numeric} \tab age of caught \cr
\bold{age}  \tab \code{numeric} \tab mid-eye to fork length (mm) \cr
\bold{distance}  \tab \code{numeric} \tab distance from otolith core (proportion of total) \cr
\bold{oto_sr8786}  \tab \code{numeric} \tab sr isotopes \cr
\bold{oto_sr8786_se}  \tab \code{numeric} \tab process error of sr isotopes
}
}
\details{
The dataset contains state-space fits of otolith 87Sr/86Sr ratios from chinook salmon (\emph{Oncorhynchus tshawytscha}) and Sockeye salmon (\emph{Oncorhynchus nerka}) harvested Alaskan river system.

Instrument: LA-MC-ICP-MS (laser ablation–multicollector–inductively coupled plasma–mass spectrometry)
}
\source{
Brennan, S. R., Schindler, D. E., Cline, T. J., Walsworth, T. E., Buck, G., & Fernandez, D. P. (2019). Shifting habitat mosaics and fish production across river basins. \emph{Science}, \bold{364}(6442), 783--786. \verb{https://doi.org/10.1126/science.aav4313}


Traversing the paper's information via Semantic Scholar ID \verb{11891bffbdb3db606baf1aea084a74d2c302b458} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.brennan.2019a
tibble::tibble(dat)

\dontrun{
### sulfur profile figure
library(dplyr)
library(ggplot2)

### Sr isotopes
dat <- dat |> group_by(fish_id) |>
  mutate(distance_scale = distance/max(distance))

ggplot(data = dat, aes(distance_scale, oto_sr8786)) +
  geom_line(aes(group = fish_id, colour = year), show.legend = F) +
  facet_grid(.~ species, scales = "free_y") +
  xlab("Distance from otolith core (proportion of total)") +
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
\concept{stable isotope}
\concept{Sr8786}
\section{Concepts}{
   otolith, stable isotope, Sr8786
}
