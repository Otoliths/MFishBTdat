\name{bt.wallace.2023}
\docType{data}
\alias{bt.wallace.2023}
\title{Reconstructing trophic geographies of Red Snapper using isotopic analysis}
\description{ Eye lenses contain chronological isotopic records and can be used to create a temporal isotopic history throughout an individual's lifetime. The authors analyzed eye lens amino-acid d15N to address spatio-temporal baseline variability and to reconstruct trophic histories of 10 individual Red Snapper.}
\usage{
bt.wallace.2023
}
\format{The data frame 166 × 20 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab fish number assigned at capture \cr
\bold{lamina_layer}  \tab \code{integer} \tab number assigned lamina during disection;  1 = eye lens core \cr
\bold{laminar_radial_midpoint}     \tab \code{numeric} \tab average of the two radius measurements(mm) (before and after) taken during eye lens delamination per Wallace et al. (2014) \cr
\bold{estimated_Length}  \tab \code{numeric} \tab fish standard length estimated at each laminar radial midpoint (cm) \cr
\bold{d15n}  \tab \code{numeric} \tab bulk d15N (‰) of lamina \cr
\bold{d13c}     \tab \code{numeric}   \tab bulk d13C (‰) of lamina \cr
\bold{alanine}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{glycine}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{valine}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{leucine}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{isoleucine}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{threonine}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{proline}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{serine}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{aspartic_acid}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{methionine}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{lysine}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{glutamic_acid}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{phenylalanine}     \tab \code{numeric}   \tab amino acid d15N (‰) of corresponding lamina \cr
\bold{trophic_position}     \tab \code{numeric}   \tab trophic position calculated using equation TL=[(Glu-Phe-β)/TDF]+1, where TDF = 5.7 and β = 3.6 (Bradley et al. (2015))
}
}
\details{
  The dataset contains bulk eye-lens stable isotope (d13C and d15N) 10 individual Red Snapper.

Instrument: GC-C-IRMS (gas-chromatography combustion isotope-ratio-mass-spectrometer)
}
\source{

Wallace, A.A., Ellis, G.S., & Peebles, E.B. (2023). Reconstructions of individual fish trophic geographies using isotopic analysis of eye-lens amino acids. \emph{PLoS One}, \bold{18}(3): e0282669
\verb{https://doi.org/10.1371/journal.pone.0282669}

Wallace, A. A., Hollander, D. J., & Peebles, E. B. (2014). Stable isotopes in fish eye lenses as potential recorders of trophic and geographic history. \emph{PLoS One}, \bold{9}(10), e108935. \verb{https://doi.org/10.1371/journal.pone.0108935}

Bradley, C. J., Wallsgrove, N. J., Choy, C. A., Drazen, J. C., Hetherington, E. D., Hoen, D. K., & Popp, B. N. (2015). Trophic position estimates of marine teleosts using amino acid compound specific isotopic analysis. \emph{Limnology and oceanography: Methods}, \bold{13}(9), 476-493. \verb{https://doi.org/10.1002/lom3.10041}

Data availability are available at \verb{https://digitalcommonsdata.usf.edu/datasets/vhmf7w5zyr}

Traversing the paper's information via Semantic Scholar ID \verb{773e2c7b665353bb198f82597997b00d8dac4736} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.wallace.2023
tibble::tibble(dat)

\dontrun{
library(dplyr)
library(ggplot2)

### bulk d15N of lamina
ggplot(data = dat, aes(lamina_layer,d15n))+
  geom_point(aes(colour = fish_id),size = 2, show.legend = F, na.rm = T)+
  facet_grid(fish_id~.,scales = "free_y")+
  xlab("Laminae")+
  ylab(expression(delta * ""^15 * "N" * " (‰)"))+
  scale_x_continuous(breaks = 0:30)+
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### bulk d13C of lamina
ggplot(data = dat, aes(lamina_layer,d13c))+
  geom_point(aes(colour = fish_id),size = 2, show.legend = F, na.rm = T)+
  facet_grid(fish_id~.,scales = "free_y")+
  xlab("Laminae")+
  ylab(expression(delta * ""^13 * "C" * " (‰)"))+
  scale_x_continuous(breaks = 0:30)+
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
\concept{eye lenses}
\concept{stable isotope}
\concept{d13C}
\concept{d15N}
\concept{d34S}
\section{Concepts}{
   eye lenses, stable isotope, d13C, d15N, d34S
}
