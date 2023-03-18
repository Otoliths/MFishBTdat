\name{bt.caccavo.2019}
\docType{data}
\alias{bt.caccavo.2019}
\title{Spatial structuring and life history connectivity of Antarctic silverfish}
\description{Comparisons between multi-disciplinary techniques based on integrated sampling designs that incorporate hydrography can enhance understanding of population structure and connectivity around the Southern Ocean.}
\usage{
bt.caccavo.2019
}
\format{The data frame 514 × 17 contains the following columns:
\tabular{lll}{
\bold{order}  \tab \code{integer} \tab measurement order \cr
\bold{type}  \tab \code{character} \tab MACS-3, blank or line/raster reading \cr
\bold{day}  \tab \code{character} \tab date of analysis \cr
\bold{sequence}  \tab \code{integer} \tab continuous runs on ICPMS \cr
\bold{slide}  \tab \code{integer} \tab individual slides on which otoliths are mounted \cr
\bold{ss_order}  \tab \code{integer} \tab order of individual sampling events in each session \cr
\bold{sl_order}  \tab \code{integer} \tab order of individual sampling events on each slide \cr
\bold{status}  \tab \code{integer} \tab type of sampling event, codes below: 1. MACS-3 reference; 2. Blank; 3. edge; 4. nucleus \cr
\bold{treatment}  \tab \code{integer} \tab corresponding to area & size cohort, codes below:
1. West Filchner Trough, <13 cm (W-FT small);
2. West Filchner Trough, >13 cm (W-FT large);
3. East Filchner Trough, all sizes (E-FT);
4. Coats Land <13 cm (CL small);
5. Coats Land >13 cm (CL large);
6. Halley Bay <13 cm (HB small);
7. Halley Bay >13 cm (HB large);
8. Atka Bay, all sizes (AB)
\cr
\bold{id_series}  \tab \code{character} \tab region ID (i.e.EF, East Filchner)/ID number/otolith(R,right;L,left)/slide assignment (1–25) and slide position (A–H) \cr
\bold{sl}    \tab \code{numeric}   \tab fish standard length (cm) \cr
\bold{mg25}    \tab \code{numeric}   \tab counts for Magnesium isotope \cr
\bold{ca48}    \tab \code{numeric}   \tab counts for Calcium isotope \cr
\bold{mn55}    \tab \code{numeric}   \tab counts for Manganese isotope \cr
\bold{sr88}    \tab \code{numeric}   \tab counts for Strontium isotope \cr
\bold{ba138}    \tab \code{numeric}   \tab counts for Barium isotope \cr
\bold{pb208}    \tab \code{numeric}   \tab counts for Lead isotope
}
}
\details{
   The dataset contains intensity data from ICP-MS for all samples,MACS-3 standard readings,and blank readings (514 measurements of Antarctic silverfish) .
}
\source{
Caccavo, J. A., Ashford, J. R., Ryan, S., Papetti, C., Schröder, M., & Zane, L. (2019). Spatial structuring and life history connectivity of Antarctic silverfish along the southern continental shelf of the Weddell Sea. \emph{Marine Ecology Progress Series}, \bold{624}, 195--212. \verb{https://doi.org/10.3354/MEPS13017}

Data availability are available at \verb{https://doi.org/10.5061/dryad.h44j0zpgs}

Traversing the paper's information via Semantic Scholar ID \verb{20b1afcbe52f48d6dd34a64436562ff924eb6af3} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.caccavo.2019
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)

### data cleaning
dat <- dat[which(dat$status >= 3), ]
dat$status <- ifelse(dat$status == 3, "Otolith edge", "Otolith nucleus")
dat$treatment <- ifelse(dat$treatment == 1, "WF-S",
  ifelse(dat$treatment == 2, "WF-L",
    ifelse(dat$treatment == 3, "EF",
      ifelse(dat$treatment == 4, "CL-S",
        ifelse(dat$treatment == 5, "CL-L",
          ifelse(dat$treatment == 6, "HB-S",
            ifelse(dat$treatment == 7, "HB-L", "AB")
          )
        )
      )
    )
  )
)

### Sr/Ca profile figure
ggplot(data = dat, aes(status, sr88 / ca48)) +
  geom_boxplot(aes(col = status), show.legend = F) +
  facet_grid(treatment ~ ., scales = "free_y") +
  ylab("Sr/Ca") +
  xlab("") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Mg/Ca profile figure
ggplot(data = dat, aes(status, mg25 / ca48)) +
  geom_boxplot(aes(col = status), show.legend = F) +
  facet_grid(treatment ~ ., scales = "free_y") +
  ylab("Mg/Ca") +
  xlab("") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Mn/Ca profile figure
ggplot(data = dat, aes(status, mn55 / ca48)) +
  geom_boxplot(aes(col = status), show.legend = F) +
  facet_grid(treatment ~ ., scales = "free_y") +
  ylab("Mn/Ca") +
  xlab("") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Ba/Ca profile figure
ggplot(data = dat, aes(status, ba138 / ca48)) +
  geom_boxplot(aes(col = status), show.legend = F) +
  facet_grid(treatment ~ ., scales = "free_y") +
  ylab("Ba/Ca") +
  xlab("") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Pb/Ca profile figure
ggplot(data = dat, aes(status, pb208 / ca48)) +
  geom_boxplot(aes(col = status), show.legend = F) +
  facet_grid(treatment ~ ., scales = "free_y") +
  ylab("Pb/Ca") +
  xlab("") +
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
\concept{bulk elements}
\concept{Sr/Ca}
\concept{Mn/Ca}
\concept{Mg/Ca}
\concept{Ba/Ca}
\concept{Pb/Ca}
\section{Concepts}{
   otolith, bulk elements, Sr/Ca, Mn/Ca, Mg/Ca, Ba/Ca, Pb/Ca
}
