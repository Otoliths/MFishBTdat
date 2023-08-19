\name{bt.quaeckdavies.2018}
\docType{data}
\alias{bt.quaeckdavies.2018}
\title{Eye-lens isotopes of teleost and elasmobranch}
\description{It is shown that fish eye lens protein is an attractive host for recovery of stable isotope life histories, particularly for juvenile life stages, and especially in elasmobranchs lacking otoliths, but interpretation of lens-based records is complicated by species-specific uncertainties associated with lens growth rates.}
\usage{
bt.quaeckdavies.2018
}
\format{The list contains 5 data frame the following columns:
\tabular{lll}{
\bold{species}  \tab \code{character} \tab teleost and elasmobranch studied \cr
\bold{tl}  \tab \code{numeric} \tab body length (mm) \cr
\bold{lens_d}  \tab \code{numeric} \tab lens diameter (mm) \cr
\bold{d13c}  \tab \code{numeric} \tab stable isotope d13C values \cr
\bold{d13cc}  \tab \code{numeric} \tab muscle d13C values have been corrected for lipid contents \cr
\bold{d15n}  \tab \code{numeric} \tab stable isotope d15N values \cr
\bold{tissue}  \tab \code{character} \tab muscle (M) and lens (L) \cr
\bold{fish_id}  \tab \code{character} \tab individual fish \cr
\bold{radius1}  \tab \code{numeric} \tab maximum radial of the subsampled lens \cr
\bold{radius2}  \tab \code{numeric} \tab minimum radial of the subsampled lens \cr
\bold{diam1}  \tab \code{numeric} \tab maximum diamater measurements of the subsampled lens \cr
\bold{diam2}  \tab \code{numeric} \tab minimum diamater measurements of the subsampled lens \cr
\bold{recovered_length}  \tab \code{numeric} \tab estimated fish length at a given lens diameter
}
}
\details{
   This dataset contains 5 data frame:\cr

\bold{TL_LD}: Paired eye lens diameter and total body length data. Paired lens diameter (Lens D, mm) and body length (TL, mm) measurements for four species, \emph{Squalus acanthias}, \emph{Coryphaenoides rupestris}, \emph{Lamna nasus} and \emph{Aphanopus carbo}.

\bold{Teleost_lensCore}: Stable isotope values of lens cores in three species of fishes. Carbon (d13C) and nitrogen (d15N) values for the central regions of eye lenses in \emph{Coryphaenoides rupesitris} (grenadier), \emph{Lamna nasus} (porbeagle) and \emph{Aphanopus carbo} (scabbard).

\bold{CrupL_M}: Eye lens and muscle isotope data for juvenile \emph{C. rupestris}. Eye lens and muscle isotope data (d13C and d15N values) for juvenile \emph{C. rupestris} from the Rockall Trough.

\bold{Acarbo_lens}: Isotopic transects across lenses of \emph{A. carbo}. Stable isotope compositions (d13C d15N values) of sequential lens protein samples in 7 \emph{Aphanopus carbo} individuals captured in long-line fisheries in west Portugal. Fish ID indicates the individual fish, radius 1 and 2 and diameter 1 and 2 indicate the maximum and minimum radial and diamater measurements of the subsampled lens respectively. Reconstructed length is the estimated fish length at a given lens diameter estimated from allometic scaling relationships given in the text.

\bold{Embryo}: Stable isotope composition of paired embryonic muscle and lens tissues. Stable isotope (d13C and d15N) values for muscle (M) and lens (L) proteins in 19 embryonic \emph{Squalus acanthias}. d13Cc values indicate that muscle d13C values have been corrected for lipid contents following Reum (2011).

Instrument: IRMS (isotope ratio mass spectrometer)
}
\source{
Quaeck-Davies, K.  Bendall, V. A.  MacKenzie, K. M.  Hetherington, S.  Newton, J.  & Trueman, C. N. (2018). Teleost and elasmobranch eye lenses as a target for life-history stable isotope analyses. \emph{PeerJ}, \bold{6}, e4883.
\verb{https://doi.org/10.7717/peerj.4883}

Traversing the paper's information via Semantic Scholar ID \verb{aa714946f791e2e9b834cf8a0b94674a98665105} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.quaeckdavies.2018

### TL_LD data frame
tibble::tibble(dat$TL_LD)

### Teleost_lensCore data frame
tibble::tibble(dat$Teleost_lensCore)

### CrupL_M data frame
tibble::tibble(dat$CrupL_M)

### Acarbo_lens data frame
tibble::tibble(dat$Acarbo_lens)

### Embryo data frame
tibble::tibble(dat$Embryo)

\dontrun{
### load package
library(dplyr)
library(ggplot2)

### TL_LD data frame
ggplot(data = dat$TL_LD, aes(tl, lens_d)) +
  geom_point(aes(colour = species), na.rm = T, size = 2) +
  geom_smooth(aes(colour = species),
    show.legend = F, formula = "y ~ x",
    method = "lm", na.rm = T
  ) +
  xlab("Total Length (mm)") +
  ylab("Lens Diameter (mm)") +
  theme_bw() +
  theme(
    legend.position = "top",
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Teleost_lensCore data frame
ggplot(data = dat$Teleost_lensCore, aes(d13c, d15n)) +
  geom_point(aes(colour = species), na.rm = T, size = 3) +
  xlab(expression(paste("Lens cores ", delta^{
    13
  }, "C"))) +
  ylab(expression(paste("Lens cores ", delta^{
    15
  }, "N"))) +
  theme_bw() +
  theme(
    legend.position = "top",
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### CrupL_M data frame
ggplot(data = dat$CrupL_M, aes(tissue, d13c)) +
  geom_boxplot(aes(colour = tissue), na.rm = T, show.legend = F) +
  geom_point(aes(colour = tissue), na.rm = T, show.legend = F) +
  xlab("Tissue") +
  ylab(expression(paste(delta^{
    13
  }, "C"))) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

ggplot(data = dat$CrupL_M, aes(tissue, d15n)) +
  geom_boxplot(aes(colour = tissue), na.rm = T, show.legend = F) +
  geom_point(aes(colour = tissue), na.rm = T, show.legend = F) +
  xlab("Tissue") +
  ylab(expression(paste(delta^{
    15
  }, "N"))) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Acarbo_lens data frame
ggplot(data = dat$Acarbo_lens, aes(radius1, d13c)) +
  geom_point(aes(group = fish_id, colour = fish_id), na.rm = T, show.legend = F) +
  geom_line(aes(group = fish_id, colour = fish_id), na.rm = T, show.legend = F) +
  xlab("Lens radius (mm)") +
  ylab(expression(paste(delta^{
    13
  }, "C"))) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

ggplot(data = dat$Acarbo_lens, aes(radius1, d15n)) +
  geom_point(aes(group = fish_id, colour = fish_id), na.rm = T, show.legend = F) +
  geom_line(aes(group = fish_id, colour = fish_id), na.rm = T, show.legend = F) +
  xlab("Lens radius (mm)") +
  ylab(expression(paste(delta^{
    15
  }, "N"))) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

### Embryo data frame
ggplot(data = dat$Embryo, aes(tissue, d13cc)) +
  geom_boxplot(aes(colour = tissue), na.rm = T, show.legend = F) +
  geom_point(aes(colour = tissue), na.rm = T, show.legend = F) +
  xlab("Tissue") +
  ylab(expression(paste(delta^{
    13
  }, "C"))) +
  theme_bw() +
  theme(
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank(), axis.line = element_line(colour = "black"),
    text = element_text(size = 10), legend.title = element_blank(),
    plot.title = element_text(face = "bold")
  )

ggplot(data = dat$Embryo, aes(tissue, d15n)) +
  geom_boxplot(aes(colour = tissue), na.rm = T, show.legend = F) +
  geom_point(aes(colour = tissue), na.rm = T, show.legend = F) +
  xlab("Tissue") +
  ylab(expression(paste(delta^{
    15
  }, "N"))) +
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
