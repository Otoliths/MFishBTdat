\name{bt.kim.2012}
\docType{data}
\alias{bt.kim.2012}
\title{Vertebral stable isotope in Northeast Pacific White Sharks*}
\description{The diet of an apex predator, the white shark, is evaluated by measuring the stable carbon and nitrogen isotope composition of vertebral growth bands to create lifetime records for 15 individuals from California, revealing substantial ontogenetic and individual dietary variation within a white shark population.}
\usage{
bt.kim.2012
}
\format{The data frame 405 × 10 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{character} \tab shark identifier \cr
\bold{age}  \tab \code{numeric} \tab shark age (years) \cr
\bold{value}  \tab \code{numeric} \tab vertebral stable isotope ratios (‰) \cr
\bold{isotope}  \tab \code{character} \tab d13C and d15N \cr
\bold{year}  \tab \code{integer} \tab year of death \cr
\bold{sex}  \tab \code{character} \tab shark sex \cr
\bold{growth_bands}  \tab \code{integer} \tab growth bands \cr
\bold{location}  \tab \code{character} \tab location caught \cr
\bold{acquisition}  \tab \code{character} \tab collection of acquisition \cr
\bold{method}  \tab \code{character} \tab method of storage
}
}
\details{
   The dataset contains stable carbon and nitrogen isotope composition of vertebral growth bands of 15 White Sharks (\emph{Carcharodon carcharias}) from California.

Instrument: IRMS (isotope ratio mass spectrometer)

Note: data extraction via WebPlotDigitizer tool (Title with * label).
}
\source{
Kim, S. L., Tinker, M. T., Estes, J. A., & Koch, P. L. (2012). Ontogenetic and among-individual variation in foraging strategies of northeast Pacific white sharks based on stable isotope analysis. \emph{PLoS one}, \bold{7}(9): e45068.
\verb{https://doi.org/10.1371/journal.pone.0045068}


Traversing the paper's information via Semantic Scholar ID \verb{64d1dda85245b8ed918fcabd0a1daa3c0270a412} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.kim.2012
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### vertebrae d13C
ggplot(data = dat[which(dat$isotope == "d13C"), ],
       aes(age, values)) +
  geom_point(aes(group = fish_id),shape = 1, size = 3)+
  geom_line(aes(group = fish_id),
            show.legend = F, na.rm = T) +
  facet_wrap(fish_id ~ ., scales = "free_y") +
  xlab("Age (years)") +
  ylab(expression(delta * ""^13 * "C" * " (‰)")) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### vertebrae d15N
ggplot(data = dat[which(dat$isotope == "d15N"), ],
       aes(age, values)) +
  geom_point(aes(group = fish_id),shape = 1, size = 3)+
  geom_line(aes(group = fish_id),
            show.legend = F, na.rm = T) +
  facet_wrap(fish_id ~ ., scales = "free_y") +
  xlab("Age (years)") +
  ylab(expression(delta * ""^15 * "N" * " (‰)")) +
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
\concept{vertebrae}
\concept{stable isotope}
\concept{d13C}
\concept{d15N}
\section{Concepts}{
   vertebrae, stable isotope, d13C, d15N
}
