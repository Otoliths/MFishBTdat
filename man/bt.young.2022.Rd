\name{bt.young.2022}
\docType{data}
\alias{bt.young.2022}
\title{Eye-lens isotopes of Clear Lake Hitch collected from Clear Lake}
\description{In this study, the authors used stable isotope values of eye lenses to provide complimentary information on habitat utilization by a threatened cyprinid, Clear Lake Hitch (\emph{Lavinia exilicauda chi}). Clear Lake Hitch inhabit a single lake (Clear Lake, Lake County, California) and utilize tributary streams for reproduction. Despite recent advances, there remain key uncertainties about Clear Lake Hitch habitat use. Analysis of d13C and d15N recorded in eye lenses demonstrates ontogenetic diet shifts that corresponded with shifts in habitat. Reconstruction of size-structured trophic and habitat information provides critical information to resource managers.}
\usage{
bt.young.2022
}
\format{The data frame 1,050 × 13 contains the following columns:
\tabular{lll}{
\bold{fish_id}  \tab \code{integer} \tab an identifying number for the individual fish \cr
\bold{eye_side}  \tab \code{character} \tab indicates which eye (left or right) the sample comes from \cr
\bold{layer_number}  \tab \code{integer} \tab Indicates which layer of the eye was sampled. Layer 1 is the whole eye, and the highest number is the eye core \cr
\bold{isotope}  \tab \code{character} \tab indicates which isotope was analyzed \cr
\bold{dx_value}  \tab \code{numeric} \tab  stable isotope value expressed in standard delta notation relative to a standard \cr
\bold{width_mean}  \tab \code{numeric} \tab mean width of eye layer in micrometers (um) \cr
\bold{species}  \tab \code{character} \tab species of the individual \cr
\bold{species_code}  \tab \code{character} \tab three-to-four letter code indicating taxonomy of sampled individual \cr
\bold{date}  \tab \code{character} \tab  the date (MM/DD/YYYY) the sample was collected \cr
\bold{latitude}  \tab \code{numeric} \tab  the latitudinal coordinate that indicates the location of a sample (Datum is WGS 84) \cr
\bold{longitude}  \tab \code{numeric} \tab the longitudinal coordinate that indicates the location of a sample (Datum is WGS 84) \cr
\bold{standard_length}  \tab \code{numeric} \tab  standard length in millimeters (mm) of individual \cr
\bold{weight}  \tab \code{numeric} \tab weight in grams (g) of individual
}
}
\details{
  This dataset includes data from isotopic analysis of eye tissue from fish collected in Clear Lake, Lake County, California during June and July 2017. This data release includes all biological measurements and fish taxa included in the analysis.

Instrument: EA-IRMS (elemental analyzer–isotope ratio mass spectrometry)
}
\source{
Young, M. J., Larwood, V., Clause, J. K., Bell-Tilcock, M., Whitman, G., Johnson, R., & Feyrer, F. (2022). Eye lenses reveal ontogenetic trophic and habitat shifts in an imperiled fish, Clear Lake hitch (\emph{Lavinia exilicauda chi}). \emph{Canadian Journal of Fisheries and Aquatic Sciences}, \bold{79}(1), 21-30.
\verb{https://doi.org/10.1139/CJFAS-2020-0318}

Data availability are available at \verb{http://dx.doi.org/10.5066/P98S3SBV}

Traversing the paper's information via Semantic Scholar ID \verb{fec4b15688e13ab45b0bc28fa89be7aaa1f5ebe4} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.young.2022
tibble::tibble(dat)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### eye lenses d13C
ggplot(data = dat[which(dat$isotope == "d13C"),],aes(width_mean, dx_value)) +
  geom_point(aes(group = fish_id,colour = species),shape = 1, size = 2,
             show.legend = F, na.rm = T)+
  geom_line(aes(group = fish_id, colour = species),
            show.legend = F, na.rm = T) +
  facet_grid(eye_side ~ species, scales = "free_y") +
  xlab("Mean width of eye layer in micrometers (um)") +
  ylab(expression(delta * ""^13 * "C" * " (‰)")) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )
### eye lenses d15N
ggplot(data = dat[which(dat$isotope == "d15N"),],aes(width_mean, dx_value)) +
  geom_point(aes(group = fish_id,colour = species),shape = 1, size = 2,
             show.legend = F, na.rm = T)+
  geom_line(aes(group = fish_id, colour = species),
            show.legend = F, na.rm = T) +
  facet_grid(eye_side ~ species, scales = "free_y") +
  xlab("Mean width of eye layer in micrometers (um)") +
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
\concept{eye lenses}
\concept{stable isotope}
\concept{d13C}
\concept{d15N}
\section{Concepts}{
   eye lenses, stable isotope, d13C, d15N
}
