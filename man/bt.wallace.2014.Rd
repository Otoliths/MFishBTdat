\name{bt.wallace.2014}
\docType{data}
\alias{bt.wallace.2014}
\title{Reconstructing fish histories using eye-lens isotopes}
\description{Eye lens isotopes appear to be useful for reconstructing the isotopic histories of individual fish; these histories can be compared with spatially-derived isoscapes to reconstruct individual histories for site fidelity, movement and trophic position.}
\usage{
bt.wallace.2014
}
\format{The data frame 131 × 10 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab fish number assigned at capture \cr
\bold{species}  \tab \code{character} \tab fish studied \cr
\bold{lens_layer}  \tab \code{integer} \tab number assigned lamina during disection;  1 = eye lens core \cr
\bold{d15n}  \tab \code{numeric} \tab bulk d15N (‰) of lamina \cr
\bold{d13c}     \tab \code{numeric}   \tab bulk d13C (‰) of lamina \cr
\bold{lamina_radius}     \tab \code{numeric}   \tab lamina radius (mm) \cr
\bold{llamina_mid_pt}     \tab \code{numeric} \tab average of the two radius measurements(mm) (before and after) \cr
\bold{lamina_weight}     \tab \code{numeric} \tab lamina weight (mg) \cr
\bold{resolution}  \tab \code{character} \tab low or high resolution using individual lens laminae \cr
\bold{lamina_side}  \tab \code{character} \tab lamina side (left or right) \cr
}
}
\details{
  The dataset contains fish eye-lens stable isotopes (d13C and d15N) from the eastern Gulf of Mexico, summer 2013, including four red grouper (\emph{Epinephelus morio}) and three gag (\emph{Mycteroperca microlepsis}) were obtained from an FWC survey conducted 9–10 July, 2013; eight red snapper (\emph{Lutjanus campechanus}) were obtained from John's Pass charter vessels on 10 September, 2013 and one white grunt (\emph{Haemulon plumierii}) was obtained from a charter vessel on 11 June, 2013.

Instrument: CF-IRMS (continuous-flow isotope ratio mass spectrometry)

Reference materials: NIST857, NIST8574, NIST1577b (National Institutes of Standards and Technology)
}
\source{
Wallace, A. A., Hollander, D. J., & Peebles, E. B. (2014). Stable isotopes in fish eye lenses as potential recorders of trophic and geographic history. \emph{PLoS One}, \bold{9}(10), e108935. \verb{https://doi.org/10.1371/journal.pone.0108935}

Bradley, C. J., Wallsgrove, N. J., Choy, C. A., Drazen, J. C., Hetherington, E. D., Hoen, D. K., & Popp, B. N. (2015). Trophic position estimates of marine teleosts using amino acid compound specific isotopic analysis. \emph{Limnology and oceanography: Methods}, \bold{13}(9), 476-493. \verb{https://doi.org/10.1002/lom3.10041}

Data availability are available at \verb{https://data.gulfresearchinitiative.org/data/R1.x135.120:0006}

Traversing the paper's information via Semantic Scholar ID \verb{39a17c40509adbe97e530196b663895a89938f6c} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.wallace.2014
tibble::tibble(dat)

\dontrun{
library(dplyr)
library(ggplot2)

### bulk d15N of lamina with low-resolution screening
ggplot(data = dat[which(dat$resolution == "Low"),], aes(lens_layer,d15n))+
  geom_point(aes(colour = species, group = fish_id),size = 2, show.legend = F, na.rm = T)+
  geom_line(aes(colour = species, group = fish_id),show.legend = F, na.rm = T)+
  facet_grid(species ~.,scales = "free_y")+
  xlab("Laminae")+
  ylab(expression(delta * ""^15 * "N" * " (‰ Air)"))+
  scale_x_continuous(breaks = 1:5)+
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### bulk d13C of lamina with low-resolution screening
ggplot(data = dat[which(dat$resolution == "Low"),], aes(lens_layer,d13c))+
  geom_point(aes(colour = species, group = fish_id),size = 2, show.legend = F, na.rm = T)+
  geom_line(aes(colour = species, group = fish_id),show.legend = F, na.rm = T)+
  facet_grid(species ~.,scales = "free_y")+
  xlab("Laminae")+
  ylab(expression(delta * ""^13 * "C" * " (‰ PDB)"))+
  scale_x_continuous(breaks = 1:5)+
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )


### bulk d15N of lamina with high-resolution screening
ggplot(data = dat[which(dat$resolution == "High"),], aes(lens_layer,d15n))+
  geom_point(aes(colour = species, group = fish_id),size = 2, show.legend = F, na.rm = T)+
  geom_line(aes(colour = species, group = fish_id),show.legend = F, na.rm = T)+
  facet_grid(species ~.,scales = "free_y")+
  xlab("Laminae")+
  ylab(expression(delta * ""^15 * "N" * " (‰ Air)"))+
  scale_x_continuous(breaks = 1:17)+
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### bulk d13C of lamina with high-resolution screening
ggplot(data = dat[which(dat$resolution == "High"),], aes(lens_layer,d13c))+
  geom_point(aes(colour = species, group = fish_id),size = 2, show.legend = F, na.rm = T)+
  geom_line(aes(colour = species, group = fish_id),show.legend = F, na.rm = T)+
  facet_grid(species ~.,scales = "free_y")+
  xlab("Laminae")+
  ylab(expression(delta * ""^13 * "C" * " (‰ PDB)"))+
  scale_x_continuous(breaks = 1:17)+
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### High-resolution comparisons of left and right eyes of white grunt specimen 2
ggplot(data = dat[-which(is.na(dat$lamina_side)),], aes(lamina_mid_pt,d13c))+
  geom_point(aes(colour = lamina_side),size = 2, na.rm = T)+
  geom_line(aes(colour = lamina_side), na.rm = T)+
  xlab("Radial midpoint of lamina (mm)")+
  ylab(expression(delta * ""^13 * "C" * " (‰ PDB)"))+
  scale_x_continuous(breaks = c(0,0.5,1,1.5,2,2.5,3))+
  theme_bw() +
  theme(
    legend.position = "top",
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

ggplot(data = dat[-which(is.na(dat$lamina_side)),], aes(lamina_mid_pt,d15n))+
  geom_point(aes(colour = lamina_side),size = 2, na.rm = T)+
  geom_line(aes(colour = lamina_side), na.rm = T)+
  xlab("Radial midpoint of lamina (mm)")+
  ylab(expression(delta * ""^15 * "N" * " (‰ Air)"))+
  scale_x_continuous(breaks = c(0,0.5,1,1.5,2,2.5,3))+
  theme_bw() +
  theme(
    legend.position = "top",
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
}
}
\keyword{datasets}
\concept{eye lenses}
\concept{stable isotope}
\concept{d13C}
\concept{d15N}
\section{Concepts}{
   eye lenses, stable isotope, d13C, d15N
}
