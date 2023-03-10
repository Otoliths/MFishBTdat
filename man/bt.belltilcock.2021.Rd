\name{bt.belltilcock.2021}
\docType{data}
\alias{bt.belltilcock.2021}
\title{Studies of reconstructing floodplain use via otolith sulfur isotope}
\description{Measured d34S in otoliths of juvenile salmon  to test if these archival biominerals could be used to reconstruct floodplain use.}
\usage{
bt.belltilcock.2021
}
\format{The data frame 99 × 8 contains the following columns:
\tabular{lll}{
\bold{Fish_ID}  \tab \code{character} \tab fish id \cr
\bold{Sample}     \tab \code{character} \tab sample id \cr
\bold{Spot_number}  \tab \code{character} \tab spot number \cr
\bold{age}     \tab \code{integer}   \tab age of fish \cr
\bold{distance}    \tab \code{numeric}   \tab distance from otolith ventral edge to dorsal edge  \cr
\bold{Spot_designation}     \tab \code{character}   \tab spot designation  \cr
\bold{d34Scor_vcdt}     \tab \code{numeric}   \tab otolith sulfur isotope (d34S) \cr
\bold{wStdErr_95T_permil}    \tab \code{numeric}   \tab  standard error of otolith sulfur isotope(d34S)
}
}
\details{
   It is suggested that otolith d34S can be used to differentiate floodplain and river rearing habitats used by native fishes, such as Chinook Salmon, across different hydrologic conditions and tissues, and provide a toolset to quantify the role of floodplains as fish habitats..
}
\source{Bell-Tilcock, M., Jeffres, C. A., Rypel, A. L., Willmes, M., Armstrong, R. A., Holden, P., ... & Johnson, R. C. (2021). Biogeochemical processes create distinct isotopic fingerprints to track floodplain rearing of juvenile salmon. \emph{PloS One}, \bold{16}(10), e0257444. \verb{https://doi.org/10.1371/journal.pone.0257444}

Data and code availability are available at \verb{https://doi.org/10.5281/zenodo.5514074}

Traversing the paper's information via Semantic Scholar ID \verb{ea858d445cd8148d36b138a4602ea0a084d4b070} using \bold{S2miner} package
}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.belltilcock.2021


\dontrun{
### sulfur profile figure
library(dplyr)
library(ggplot2)
library(lemon)

### Prepare profiles for figure
dat |> group_by(Fish_ID, Spot_designation) |>
  mutate(
    region_average = mean(d34Scor_vcdt, na.rm = TRUE),
    region_sd = sd(d34Scor_vcdt, na.rm = TRUE)
  ) |>
  ungroup() -> dat

ggplot(data = dat) +
  annotate("rect", ymin = -0.29, ymax = 4.71,
           xmin = -Inf, xmax = Inf, fill = "steelblue3", alpha = .1) +
  annotate("rect", ymin = -5.74, ymax = -1.2,
           xmin = -Inf, xmax = Inf, fill = "forestgreen", alpha = .1) +
  # geom_vline(aes(xintercept=changedis), linetype="dashed", color="black")+
  geom_smooth(aes(x = distance, y = d34Scor_vcdt, group = Fish_ID),
              span = 0.2, color = "grey95", fill = "grey95", alpha = 0.5) +
  geom_pointrange(aes(
    x = distance, y = d34Scor_vcdt, ymax = d34Scor_vcdt + wStdErr_95T_permil,
    ymin = d34Scor_vcdt - wStdErr_95T_permil,
    fill = Spot_designation
  ), shape = 21, color = "black") +
  theme_classic() +
  theme(
    panel.background = element_rect(colour = "black"),
    legend.position = "bottom",
    legend.title = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    strip.background = element_blank()
  ) +
  scale_x_continuous("Distance from otolith ventral edge to dorsal edge(µm)") +
  scale_y_continuous(
    name = expression(paste(delta^"34", "S"["Otolith"], " [‰ VCDT]")),
    breaks = scales::pretty_breaks(n = 5)) +
  scale_fill_manual(values = c("firebrick", "palegreen3",
                                          "orange", "steelblue", "grey")) +
  facet_rep_wrap(~Fish_ID, ncol = 1, repeat.tick.labels = "all")

}
}
\keyword{datasets}
\concept{otolith}
\concept{isotopic ratios}
\concept{d34S}
\section{Concepts}{
   otolith, isotopic ratios, d34S
}
