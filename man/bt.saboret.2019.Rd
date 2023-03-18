\name{bt.saboret.2019}
\docType{data}
\alias{bt.saboret.2019}
\title{Carryover effects of larval environment on individual variation}
\description{It is shown that early life environment can have multiple effects on adult performance and ecology, with the potential for lifetime fitness trade‐offs associated with life history, and that even relatively minor variation in rearing conditions may be enough to generate individual variation in natural populations.}
\usage{
bt.saboret.2019
}
\format{The data frame 142 × 21 contains the following columns:
\tabular{lll}{
\bold{id}  \tab \code{character} \tab fish identifier \cr
\bold{type}  \tab \code{character} \tab fish were used for two distinct set of analysis, referred to as behaviour or diet \cr
\bold{sex}  \tab \code{character} \tab fish sex \cr
\bold{site}  \tab \code{character} \tab site of capture \cr
\bold{trap}  \tab \code{character} \tab trap name \cr
\bold{utm59e}  \tab \code{integer} \tab east GPS coordinates of capture in Universal Transverse Mercator 59 system \cr
\bold{utm59n}  \tab \code{integer} \tab north GPS coordinates of capture in Universal Transverse Mercator 59 system \cr
\bold{cluster}  \tab \code{character} \tab cluster of fish according to their capture locations: UL (upstream lake), NL (north lake), EL (east lake), SL (south lake), DL (downstream lake) \cr
\bold{length}     \tab \code{numeric}   \tab total length (mm) \cr
\bold{weight}     \tab \code{numeric}   \tab weight (g) \cr
\bold{gonade_w}     \tab \code{numeric}   \tab gonad weight (g) \cr
\bold{srlarvae}     \tab \code{numeric}   \tab sr/ca (mmol.mol^(-1)) of otolith core (larval environment) \cr
\bold{balarvae}     \tab \code{numeric}   \tab  ba/ca (mmol.mol^(-1)) of otolith core (larval environment) \cr
\bold{sradult}     \tab \code{numeric}   \tab sr/ca (mmol.mol^(-1)) of otolith edge (adult environment) \cr
\bold{baadult}     \tab \code{numeric}   \tab ba/ca (mmol.mol^(-1)) of otolith edge (adult environment) \cr
\bold{increment1}     \tab \code{numeric}   \tab distance from the otolith core to the metamorphosis check (mm) \cr
\bold{increment2_4}     \tab \code{numeric}   \tab distance from otolith annulus i-1 to annulus i (mm) \cr
\bold{otolithradius}     \tab \code{numeric}   \tab total distance from the otolith core to the edge (mm), measured independently \cr
\bold{age}     \tab \code{integer}   \tab estimated age based on annuli numbers \cr
}
}
\details{
   The dataset contains otolith microchemistry of common bullies (\emph{Gobiomorphus cotidianus}) collected on February 12-13 2018 in lake Waipori system, South Island, New Zealand. NA indicates missing data.
}
\source{

Saboret, G., & Ingram, T. (2019). Carryover effects of larval environment on individual variation in a facultatively diadromous fish. \emph{Ecology and Evolution}, \bold{9}(18), 10630-10643. \verb{https://doi.org/10.1002/ece3.5582}

Data availability are available at \verb{https://doi.org/10.5061/dryad.852h5m8}

Traversing the paper's information via Semantic Scholar ID \verb{f6cde67aebe2af146d831b61c472f17b393b4dbe} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.saboret.2019
tibble::tibble(dat)

\dontrun{
### loading packages
library(dplyr)
library(ggplot2)
library(tidyr)

### Sr/Ca profile figure

dat[, c(1, 3, 12, 14)] |> pivot_longer(
  cols = srlarvae:sradult,
  names_to = "life_history",
  values_to = "sr_ca"
) -> dat1
dat1$life_history <- ifelse(dat1$life_history == "Sradult", "Otolith edge", "Otolith core")
ggplot(data = dat1, aes(life_history, sr_ca)) +
  geom_boxplot(aes(col = Sex), show.legend = F, na.rm = T) +
  facet_grid(. ~ Sex) +
  ylab("Sr/Ca (mmol.mol^(-1))") +
  xlab("") +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Ba/Ca profile figure
dat[, c(1, 3, 13, 15)] |> pivot_longer(
  cols = balarvae:baadult,
  names_to = "life_history",
  values_to = "ba_ca"
) -> dat2
dat2$life_history <- ifelse(dat2$life_history == "Baadult", "Otolith edge", "Otolith core")
ggplot(data = dat2, aes(life_history, ba_ca)) +
  geom_boxplot(aes(col = Sex), show.legend = F, na.rm = T) +
  facet_grid(. ~ Sex) +
  ylab("Ba/Ca (mmol.mol^(-1))") +
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
\concept{Ba/Ca}
\section{Concepts}{
   otolith, bulk elements, Sr/Ca, Ba/Ca
}
