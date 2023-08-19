\name{bt.belltilcock.2021a}
\docType{data}
\alias{bt.belltilcock.2021a}
\title{Tracking habitat use and dietary shifts in migratory species}
\description{Stable isotope analysis in eye lenses using three dietary isotopes (d13C, d15N and d34S) has significant
potential for answering critical questions about migration, diet, foraging ecology and life history of
migratory aquatic animals on earth.}
\usage{
bt.belltilcock.2021a
}
\format{The data frame 33 × 11 contains the following columns:
\tabular{lll}{
\bold{layer_no}  \tab \code{integer} \tab this is the which lens layer the data references, numeric value \cr
\bold{d13c}     \tab \code{numeric} \tab carbon isotope value, per mille \cr
\bold{d15n}  \tab \code{numeric} \tab nitrogen isotope value, per mille \cr
\bold{d34s}     \tab \code{numeric}   \tab sulfur isotope value, per mille \cr
\bold{habitat}  \tab \code{character} \tab habitat the fish was throughout their life cycle \cr
\bold{c_ug}     \tab \code{numeric} \tab concentration of carbon, micrograms \cr
\bold{n_ug}     \tab \code{numeric} \tab concentration of nitrogen, micrograms \cr
\bold{s_ug}     \tab \code{numeric} \tab concentration of sulfur, micrograms \cr
\bold{c_n}     \tab \code{numeric} \tab carbon to nitrogen ratio, no units \cr
\bold{predicted_dm}     \tab \code{numeric} \tab predicted diameter of this fish's eye lense created from a model \cr
\bold{life_history}    \tab \code{character}   \tab  life history stage
}
}
\details{
   Bulk eye-lens stable isotope (d13C, d15N and d34S) used to reconstruct habitat use in an adult Chinook Salmon and a juvenile Chinook Salmon that had reared for 39 days on the floodplain.

Instrument: IRMS (isotope ratio mass spectrometer)

}
\source{

Bell-Tilcock, M.  Jeffres, C. A.  Rypel, A. L.  Sommer, T. R.  Katz, J. V.  Whitman, G.  & Johnson, R. C. (2021). Advancing diet reconstruction in fish eye lenses. \emph{Methods in Ecology and Evolution}, \bold{12}(3), 449-457. \verb{http://dx.doi.org/10.1111/2041-210X.13543}

Data availability are available at \verb{https://doi.org/10.25338/B8WW5D}

Traversing the paper's information via Semantic Scholar ID \verb{3ab4f1fe1d9e953caafa7ed0873b3b55e24d7e85} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.belltilcock.2021a
tibble::tibble(dat)

\dontrun{
library(dplyr)
library(ggplot2)
library(tidyr)


### Adult Chinook Salmon Lens CNS isotope
dat[which(dat$life_history == "Adult"),] |>
  pivot_longer(cols = c("d13c","d15n","d34s"),
               names_to = "isotope",
               values_to = "values") |>
  ggplot(aes(layer_no,values))+
  geom_point(aes(colour = isotope),size = 2, show.legend = F, na.rm = T)+
  facet_grid(isotope~.,scales = "free_y")+
  xlab("Laminae")+
  scale_x_continuous(breaks = 0:28)+
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Juvenile Chinook Salmon Lens CNS isotope
dat[which(dat$life_history == "Juvenile"),] |>
  pivot_longer(cols = c("d13c","d15n","d34s"),
               names_to = "isotope",
               values_to = "values") |>
  ggplot(aes(layer_no,values))+
  geom_point(aes(colour = isotope),size = 2, show.legend = F, na.rm = T)+
  facet_grid(isotope~.,scales = "free_y")+
  xlab("Laminae")+
  scale_x_continuous(breaks = 0:4)+
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
