\name{bt.enomoto.2022}
\docType{data}
\alias{bt.enomoto.2022}
\title{Otolith oxygen isotope revealed vertical habitat shifts of jack mackerel}
\description{Japanese jack mackerel (\emph{Trachurus japonicus}) is distributed in the semi-demersal layer of the continental shelf of the East China Sea (ECS), whereas their larvae are distributed on the surface. Notably, a smooth vertical habitat layer shift (HLS) to a deeper layer during their juvenile stage is crucial for the survival of this species. To elucidate the timing of the HLS, the authors analyzed the otolith oxygen stable isotope ratio (oto_d18O), which increases at lower temperatures and higher salinity (the conditions that the fish experience in the deeper layers of the ECS), at a high temporal resolution of minimum 5 days intervals.}
\usage{
bt.enomoto.2022
}
\format{The data frame 740 × 8 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab fish identifier \cr
\bold{sample_id}  \tab \code{character} \tab sample identifier \cr
\bold{year}    \tab \code{integer}   \tab year of capture  \cr
\bold{sample_number} \tab \code{integer}   \tab number of sample  \cr
\bold{area}    \tab \code{integer}   \tab area of capture  \cr
\bold{d18o}     \tab \code{numeric}   \tab oxygen isotope ratio relative to VPDB in permil \cr
\bold{d18o_sd}     \tab \code{numeric}   \tab standard deviation of oxygen isotope ratio relative to VPDB in permil \cr
\bold{age} \tab \code{numeric}   \tab centered daily age (dph)
}
}
\details{
   Summary on sampling data, biological information, and d18O otolith analyses of 78 Japanese jack mackerel \emph{Trachurus japonicus}.

Instrument: IRMS (isotope ratio mass spectrometer)
}
\source{
Enomoto, M., Ito, S. I., Takahashi, M., Sassa, C., Higuchi, T., & Shirai, K. (2022). Vertical habitat shifts of juvenile jack mackerel estimated using otolith oxygen stable isotope. \emph{Progress in Oceanography}, \bold{208}, 102897. \verb{https://doi.org/10.1016/j.pocean.2022.102897}

Traversing the paper's information via Semantic Scholar ID \verb{fb5a0cb084eba0790bc291b22d6d26a51ed10db2} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.enomoto.2022
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### d18O profile figure
ggplot(data = dat, aes(age, d18o)) +
  geom_line(aes(col = area, group = fish_id), show.legend = F, linewidth = 0.02, na.rm = T) +
  geom_point(aes(col = area, group = fish_id), show.legend = F, na.rm = T) +
  facet_wrap(. ~ area) +
  labs(
    x = ("Age (dph)"),
    y = (expression(delta * ""^18 * "O" * " (‰)"))
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
\concept{stable isotope}
\concept{d18O}
\section{Concepts}{
   otolith, stable isotope, d18O
}
