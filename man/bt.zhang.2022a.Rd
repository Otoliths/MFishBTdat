\name{bt.zhang.2022a}
\docType{data}
\alias{bt.zhang.2022a}
\title{Unclocking life history of spinyhead croaker using otolith microchemistry}
\description{Otolith microchemistry provides valuable information about the environmental history of individual fish, but few studies have considered the influence of population or stock on life history traits. This study used the Sr/Ca ratio as an index of habitat use of spinyhead croaker \emph{Collichthys lucidus} from 2 different populations (northern and southern China populations), including lifetime otolith microchemistry profiles (n = 63 fish) and determinations of natal habitat selection (n = 352 fish).}
\usage{
bt.zhang.2022a
}
\format{The data frame 263,263 × 7 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{integer} \tab fish identifier \cr
\bold{distance}  \tab \code{numeric} \tab distance from otolith core (um) \cr
\bold{oto_sr_ca}  \tab \code{numeric} \tab otolith sr:ca (mmol/mol) \cr
\bold{body_length}  \tab \code{numeric} \tab body length (mm) \cr
\bold{sex}  \tab \code{character} \tab fish sex \cr
\bold{location}  \tab \code{character} \tab location of capture \cr
\bold{region}  \tab \code{character} \tab region of capture
}
}
\details{
   This dataset contains 63 otolith microchemistry profiles of spinyhead croaker \emph{Collichthys lucidus} (Sciaenidae) from Chinese coastal waters.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Beam diameter: 20um

Scan speed: 5um/s

Reference materials: NIST-610,NIST-612 (National Institutes of Standards and Technology glass standard)
}
\source{
Zhang, S., Jiang, Y., Li, M., Zhu, J., Xu, S., & Chen, Z. (2022). Life history of spinyhead croaker \emph{Collichthys lucidus} (Sciaenidae) differentiated among populations from Chinese coastal waters. \emph{Aquatic Biology}, \bold{31}, 65-76. \verb{https://doi.org/10.3354/ab00754}


Data are provided by Dr. zhang \email{zhangshuai@scsfri.ac.cn}.

Traversing the paper's information via Semantic Scholar ID \verb{4c262747fa1ee5788cb4d3ae818f688b4c5ac513} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.zhang.2022a
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)


### otolith sr/ca
ggplot(data = dat, aes(distance, oto_sr_ca)) +
  geom_line(aes(colour = sex, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(sex ~ region, scales = "free_y") +
  xlab("Distance from otolith core (um)") +
  ylab("Sr/Ca (mmol/mol)") +
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
\section{Concepts}{
   otolith, trace element, Sr/Ca
}
