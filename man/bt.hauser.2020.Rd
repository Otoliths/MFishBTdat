\name{bt.hauser.2020}
\docType{data}
\alias{bt.hauser.2020}
\title{Unmasking continental natal homing in goliath catfish}
\description{The authors test here the complementarity of both approaches (87Sr:86Sr by LA-MC-ICPMS and Se:Ca, Sr:Ca by SXFM) to investigate if the natal homing behaviour observed for \emph{Brachyplatystoma rousseauxii} in the Madeira also exists along the Amazon mainstem, which would enhance our knowledge of the complex ecology of this species.}
\usage{
bt.hauser.2020
}
\format{The data frame 3,709 × 16 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{integer} \tab fish identifier \cr
\bold{real_distance}  \tab \code{numeric} \tab real distance from otolith core \cr
\bold{normalized_distance}  \tab \code{numeric} \tab normalized distance from otolith core \cr
\bold{value}  \tab \code{numeric} \tab biogeochemical value (x1000 in trace element; ‰ in stable isotope) \cr
\bold{elements}  \tab \code{character} \tab se/ca, sr/ca, sr8786 \cr
\bold{biogeochemical_tags}  \tab \code{character} \tab trace element and stable isotope \cr
\bold{basin}  \tab \code{character} \tab basin of capture \cr
\bold{river}  \tab \code{character} \tab river of capture \cr
\bold{country}  \tab \code{character} \tab country of capture \cr
\bold{dam}  \tab \code{character} \tab period of capture (before or after the dams) \cr
\bold{date}  \tab \code{integer} \tab date of capture \cr
\bold{sl}  \tab \code{numeric} \tab standard length (cm) \cr
\bold{sex}  \tab \code{character} \tab fish sex \cr
\bold{sl}  \tab \code{integer} \tab growth_rings \cr
\bold{age}  \tab \code{numeric} \tab fish age (years) \cr
\bold{behaviour}  \tab \code{numeric} \tab migratory behaviour determined by sr8786 analysis
}
}
\details{
   This dataset contains seven \emph{Brachyplatystoma rousseauxii} for the Sr:Ca, Se:Ca, and 87Sr:86Sr profiles.

Instrument: SXFM (scanning x-ray fluorescence imaging), LA-MC-ICP-MS (laser ablation multi-collector inductively coupled plasma mass spectrometry)
}
\source{

Hauser, M., Duponchelle, F., Hermann, T. W., Limburg, K. E., Castello, L., Stewart, D. J., ... & Doria, C. R. (2020). Unmasking continental natal homing in goliath catfish from the upper Amazon. \emph{Freshwater Biology}, \bold{65}(2), 325-336. \verb{https://doi.org/10.1111/fwb.13427}


Traversing the paper's information via Semantic Scholar ID \verb{2311e44d4b5ca858ad2c8063c119259a6a3146fc} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.hauser.2020
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### otolith Sr:Ca profiles
ggplot(data = dat[which(dat$elements == "SrCa"), ], aes(normalized_distance, value)) +
  geom_line(aes(group = fish_id, colour = "black"), show.legend = F, na.rm = T) +
  facet_grid(fish_id ~ ., scales = "free_y") +
  xlab("Normalized_distance from otolith core") +
  ylab("Otolith Sr:Ca (x1000)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### otolith Se:Ca profiles
ggplot(data = dat[which(dat$elements == "SeCa"), ], aes(normalized_distance, value)) +
  geom_line(aes(group = fish_id, colour = "blue"), show.legend = F, na.rm = T) +
  facet_grid(fish_id ~ ., scales = "free_y") +
  xlab("Normalized_distance from otolith core") +
  ylab("Otolith Se:Ca (x1000)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### otolith 87Sr:86Sr profiles
ggplot(data = dat[which(dat$elements == "Sr8786"), ], aes(normalized_distance, value)) +
  geom_line(aes(group = fish_id, colour = "red"), show.legend = F, na.rm = T) +
  facet_grid(fish_id ~ ., scales = "free_y") +
  xlab("Normalized_distance from otolith core") +
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
\concept{trace element}
\concept{stable isotope}
\concept{Sr/Ca}
\concept{Se/Ca}
\concept{Sr8786}
\section{Concepts}{
   otolith, trace element, stable isotope, Sr/Ca, Se/Ca, Sr8786
}
