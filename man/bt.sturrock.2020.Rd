\name{bt.sturrock.2020}
\docType{data}
\alias{bt.sturrock.2020}
\title{Unnatural selection of salmon life histories in a modified riverscape}
\description{The expression and ultimate success of diverse salmon emigration behaviors in an anthropogenically altered the California river system is quantified and management actions favoring any single phenotype could have negative evolutionary and demographic consequences, potentially reducing adaptability and population stability.}
\usage{
bt.sturrock.2020
}
\format{The data frame 16,463 × 12 contains the following columns:
\tabular{lll}{
\bold{sample_id}  \tab \code{character} \tab sample identifier \cr
\bold{asn}     \tab \code{integer} \tab numbers represent the agency id given to each fish \cr
\bold{natal_region}    \tab \code{character}   \tab natal region  \cr
\bold{otolith_radius_um}     \tab \code{numeric}   \tab otolith radius (um) \cr
\bold{otolith_87sr86sr}    \tab \code{numeric}   \tab otolith strontium isotope (Sr87/Sr86) values   \cr
\bold{se2}     \tab \code{numeric}   \tab otolith strontium isotope (Sr87/Sr86) standard error \cr
\bold{sr_v}     \tab \code{numeric}   \tab srv \cr
\bold{outmigration_year}     \tab \code{integer}   \tab year of out-migration \cr
\bold{capture_fl_cm}     \tab \code{numeric}   \tab fish fork length of captured \cr
\bold{capture_age}     \tab \code{integer}   \tab fish age of captured \cr
\bold{sex}     \tab \code{character}   \tab fish sex(male or female) \cr
\bold{cwt_no}     \tab \code{integer}   \tab fish analyzed blind to validate natal assignment accuracy

}
}
\details{
   The dataset contains natal otolith Sr87/Sr86 values was used to predict provenance of the spawning adults using the methods described in (Barnett-Johnson et al. 2008, Sturrock et al. 2015).
}
\source{

Rachel, B. J., Pearson, T. E., Ramos, F. C., Grimes, C. B., & Bruce MacFarlane, R. (2008). Tracking natal origins of salmon using isotopes, otoliths, and landscape geology. \emph{Limnology and Oceanography}, \bold{53}(4), 1633-1642.

Sturrock, A. M., Carlson, S. M., Wikert, J. D., Heyne, T., Nusslé, S., Merz, J. E., ... & Johnson, R. C. (2020). Unnatural selection of salmon life histories in a modified riverscape. \emph{Global Change Biology}, \bold{26}(3), 1235-1247.
\verb{https://doi.org/10.1111/gcb.14896}

Sturrock, A. M., Wikert, J. D., Heyne, T., Mesick, C., Hubbard, A. E., Hinkelman, T. M., ... & Johnson, R. C. (2015). Reconstructing the migratory behavior and long-term survivorship of juvenile Chinook salmon under contrasting hydrologic regimes. \emph{PLoS One}, \bold{10}(5), e0122380.

Data availability are available at \verb{https://doi.org/10.5061/dryad.73n5tb2ss}

Traversing the paper's information via Semantic Scholar ID \verb{af6fc0e877a33843d232372c7f038542e5621a1d} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.sturrock.2020
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### Sr8786 profile figure
ggplot(data = dat,aes(otolith_radius_um, otolith_87Sr86Sr))+
  geom_line(aes(col = sex),show.legend = F,linewidth = 0.02, na.rm = T)+
  facet_grid(.~ sex)+
  labs(
    x = expression(paste("Otolith radius (", mu, "m)", sep = "")),
    y = expression(paste(
      {}^"87",
      "Sr/",
      {}^"86",
      "Sr"
    ))
  )+
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
\concept{isotopic ratios}
\concept{Sr8786}
\section{Concepts}{
   otolith, isotopic ratios, Sr8786
}
