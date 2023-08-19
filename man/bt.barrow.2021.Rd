\name{bt.barrow.2021}
\docType{data}
\alias{bt.barrow.2021}
\title{Lifetime movement history of a potamodromous freshwater fish}
\description{How the presence and timing of movements are correlated with annual somatic growth rates is explored, a useful proxy for performance because it is easily measured and rapidly reflects environmental changes, and indicates that lifetime movement is linked to faster growth in the early years of a fish's life.}
\usage{
bt.barrow.2021
}
\format{The data frame 75,343 × 7 contains the following columns:
\tabular{lll}{
\bold{fish_id_anon}  \tab \code{character} \tab fish identifier \cr
\bold{distance} \tab \code{numeric}   \tab distance from the core to the edge of otolith (um) \cr
\bold{oto_sr8786} \tab \code{numeric}   \tab otolith 87Sr/86Sr (permil) \cr
\bold{age} \tab \code{integer}   \tab fish age (years) \cr
\bold{date} \tab \code{numeric}   \tab date of capture \cr
\bold{capture_location}  \tab \code{character} \tab location of capture \cr
\bold{length} \tab \code{numeric}   \tab fish length (mm)
}
}
\details{
  The dataset contains 87Sr/86Sr values in otoliths of 213 individual golden perch \emph{Macquaria ambigua} from previous studies that sampled MDB rivers in 2014–2017 (Zampatti et al., 2018; Zampatti, Strawbridge, et al., 2018).

Instrument: LA-ICP-MS (lLaser ablation-inductively coupled plasma mass spectrometry)
}
\source{

Barrow, J. S., Yen, J. D., Koehn, J. D., Zampatti, B. P., Thiem, J. D., Tonkin, Z., ... & Morrongiello, J. R. (2021). Lifetime movement history is associated with variable growth of a potamodromous freshwater fish. \emph{Journal of Animal Ecology}, \bold{90}(11), 2560-2572.
\verb{https://doi.org/10.1111/1365-2656.13561}

Zampatti, B. P., Leigh, S. J., Bice, C. M., & Rogers, P. J. (2018). Multiscale movements of golden perch (Percichthyidae: \emph{Macquaria ambigua}) in the River Murray, Australia. \emph{Austral Ecology}, \bold{43}(7), 763-774. \verb{https://doi.org/10.1111/aec.12619}

Zampatti, B. P., Strawbridge, A., Thiem, J. D., Tonkin, Z., Mass, R., Woodhead, J., & Fredberg, J. (2018). Golden perch (Macquaria ambigua) and silver perch (Bidyanus bidyanus) age demographics, natal origin and migration history in the River Murray. S. Publication & S.R.R.S. F2018/000116-1, South Australian Research and Development Institute (Aquatic Sciences).

Data availability are available at \verb{https://doi.org/10.26188/14122688}


Traversing the paper's information via Semantic Scholar ID \verb{b6c28496cf300369595c696010ba6b8f1e7245fc} using \bold{S2miner} package

}
\author{
   Liuyong Ding, \email{ly_ding@126.com}
}
\examples{
### copy data into 'dat'
dat <- bt.barrow.2021
tibble::tibble(dat)

\dontrun{
library(dplyr)
library(ggplot2)

### Sr stable isotope
ggplot(data = dat, aes(distance, oto_sr8786)) +
  geom_line(aes(colour = capture_location, group = fish_id_anon),
            show.legend = F, na.rm = T) +
  facet_grid(capture_location ~. ,scales = "free_y")+
  labs(
    x = expression(paste("Distance from the core to the edge of otolith (", mu, "m)",
                         sep = "")),
    y = expression(paste(
      {}^"87",
      "Sr/",
      {}^"86",
      "Sr"
    ))
  ) +
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
\concept{vertebra}
\concept{trace element}
\concept{stable isotope}
\concept{Sr8786}
\concept{Sr/Ca}
\concept{d34S}
\section{Concepts}{
   otolith, vertebra, trace element, stable isotope, Sr8786, Sr/Ca, d34S
}
