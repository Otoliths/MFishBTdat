\name{bt.fukushima.2014}
\docType{data}
\alias{bt.fukushima.2014}
\title{Migration of Siamese mud carp elucidated by otolith microchemistry}
\description{The migration of Siamese mud carp (\emph{Henicorhynchus siamensis} and \emph{H. lobatus}) was studied using an otolith microchemistry technique, suggesting a population originating from a single natal origin but bypassing the waterfalls through a passable side channel where a major hydroelectric dam is planned.}
\usage{
bt.fukushima.2014
}
\format{The data frame 64,351 × 10 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{integer} \tab fish identifier \cr
\bold{distance}  \tab \code{numeric} \tab distance from the core to the edge of otolith (mm) \cr
\bold{mg_ca}  \tab \code{numeric} \tab otolith Mg:Ca (μmol/mol) \cr
\bold{mn_ca}  \tab \code{numeric} \tab otolith Mn:Ca (μmol/mol) \cr
\bold{zn_ca}  \tab \code{numeric} \tab otolith Zn:Ca (μmol/mol) \cr
\bold{sr_ca}  \tab \code{numeric} \tab otolith Sr:Ca (μmol/mol) \cr
\bold{ba_ca}  \tab \code{numeric} \tab otolith Ba:Ca (μmol/mol) \cr
\bold{species}  \tab \code{character} \tab species studied \cr
\bold{fl}  \tab \code{numeric} \tab fork length (mm) \cr
\bold{date}  \tab \code{character} \tab date of capture \cr
\bold{region}  \tab \code{character} \tab region of capture \cr
\bold{river}  \tab \code{character} \tab river of capture
}
}
\details{
   This dataset contains otolith elemental raw data of Siamese mud carp populations in the Mekong.

Instrument: LA-ICP-MS (laser ablation-inductively coupled plasma mass spectrometry)

Reference materials: NIST-612 (National Institutes of Standards and Technology glass standard)
}
\source{

Fukushima, M.  Jutagate, T.  Grudpan, C.  Phomikong, P.  & Nohara, S. (2014). Potential effects of hydroelectric dam development in the Mekong River basin on the migration of Siamese mud carp (\emph{Henicorhynchus siamensis} and \emph{H. lobatus}) elucidated by otolith microchemistry. \emph{PloS One}, \bold{9}(8), e103722. \verb{https://doi.org/10.1371/journal.pone.0103722}

Data availability are available at \verb{http://dx.doi.org/10.6084/m9.figshare.1046573} and \verb{http://dx.doi.org/10.6084/m9.figshare.1046574}

Traversing the paper's information via Semantic Scholar ID \verb{bdadd6f3e079af22394f89a47e99afc963f22840} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.fukushima.2014
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### otolith sr/ca
ggplot(data = dat, aes(distance, sr_ca)) +
  geom_line(aes(colour = species, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(species ~ ., scales = "free_y") +
  xlab("Distance from the core to the edge of otolith (mm)") +
  ylab("Otolith Sr:Ca (μmol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
### otolith mg/ca
ggplot(data = dat, aes(distance, mg_ca)) +
  geom_line(aes(colour = species, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(species ~ ., scales = "free_y") +
  xlab("Distance from the core to the edge of otolith (mm)") +
  ylab("Otolith Mg:Ca (μmol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
### otolith mn/ca
ggplot(data = dat, aes(distance, mn_ca)) +
  geom_line(aes(colour = species, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(species ~ ., scales = "free_y") +
  xlab("Distance from the core to the edge of otolith (mm)") +
  ylab("Otolith Mn:Ca (μmol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
### otolith zn/ca
ggplot(data = dat, aes(distance, zn_ca)) +
  geom_line(aes(colour = species, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(species ~ ., scales = "free_y") +
  xlab("Distance from the core to the edge of otolith (mm)") +
  ylab("Otolith Zn:Ca (μmol/mol)") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
### otolith ba/ca
ggplot(data = dat, aes(distance, ba_ca)) +
  geom_line(aes(colour = species, group = fish_id), show.legend = F, na.rm = T) +
  facet_grid(species ~ ., scales = "free_y") +
  xlab("Distance from the core to the edge of otolith (mm)") +
  ylab("Otolith Ba:Ca (μmol/mol)") +
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
\concept{Mg/Ca}
\concept{Mn/Ca}
\concept{Zn/Ca}
\concept{Ba/Ca}
\section{Concepts}{
   otolith, trace element, Sr/Ca, Mg/Ca, Mn/Ca, Zn/Ca, Ba/Ca
}
