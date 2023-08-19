\name{bt.zhang.2022b}
\docType{data}
\alias{bt.zhang.2022b}
\title{Habitat use of fourfinger threadfin using otolith microchemistry}
\description{Determining the movement and migration patterns of fish between different environments is crucial for understanding the distribution of fish populations and the ecological mechanisms underlying their spatial dynamics. This study is the first to employ otolith Sr:Ca and Ba:Ca profiles to elucidate habitat use by the commercially valuable estuarine species \emph{Eleutheronema rhadinum}.}
\usage{
bt.zhang.2022b
}
\format{The data frame 89,170 × 8 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{integer} \tab fish identifier \cr
\bold{distance}  \tab \code{numeric} \tab distance from otolith core (um) \cr
\bold{oto_sr_ca}  \tab \code{numeric} \tab otolith sr:ca (mmol/mol) \cr
\bold{oto_ba_ca}  \tab \code{numeric} \tab otolith ba:ca (mmol/mol) x10^2 \cr
\bold{fork_length}  \tab \code{numeric} \tab fork length (cm) \cr
\bold{weight}  \tab \code{numeric} \tab body weight (kg) \cr
\bold{location}  \tab \code{character} \tab location of capture \cr
\bold{region}  \tab \code{character} \tab region of capture
}
}
\details{
   This dataset contains 22 otolith microchemistry (Sr/Ca and Ba/Ca) profiles of East Asian fourfinger threadfin \emph{Eleutheronema rhadinum} from the East China Sea and South China Sea, caught off China in October to December of 2019.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Beam diameter: 20um

Scan speed: 5um/s

Reference materials: NIST-610,NIST-612 (National Institutes of Standards and Technology glass standard)
}
\source{
Zhang, S., Li, M., Zhu, J., Xu, S., & Chen, Z. (2022). Diversity in habitat use by the East Asian fourfinger threadfin \emph{Eleutheronema rhadinum} revealed by otolith Sr: Ca and Ba: Ca profiles. \emph{Aquatic Biology}, \bold{31}, 89-97. \verb{https://doi.org/10.3354/ab00756}

Data are provided by Dr. zhang \email{zhangshuai@scsfri.ac.cn}.

Traversing the paper's information via Semantic Scholar ID \verb{4dffb264268957681a497b313da8fc06b6206e96} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.zhang.2022b
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### otolith sr/ca
ggplot(data = dat, aes(distance, oto_sr_ca)) +
  geom_line(aes(colour = region, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(. ~ region, scales = "free_y") +
  xlab("Distance from otolith core (um)") +
  ylab("Sr/Ca (mmol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
### otolith ba/ca
ggplot(data = dat, aes(distance, oto_ba_ca)) +
  geom_line(aes(colour = region, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(. ~ region, scales = "free_y") +
  xlab("Distance from otolith core (um)") +
  ylab(expression("Ba/Ca " * x10 * ""^2 * " (mmol/mol)")) +
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
\concept{Sr/Ca}
\concept{Ba/Ca}
\section{Concepts}{
   otolith, trace element, Sr/Ca, Ba/Ca
}
