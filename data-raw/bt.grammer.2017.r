# Grammer, G. L., Morrongiello, J. R., Izzo, C., Hawthorne, P. J., Middleton, J. F., & Gillanders, B. M. (2017). Coupling biogeochemical tracers with fish growth reveals physiological and environmental controls on otolith chemistry. Ecological Monographs, 87(3), 487-507.
# https://doi.org/10.1002/ecm.1264

bt.grammer.2017 <- read.table("data-raw/bt.grammer.2017.txt",
  header = TRUE, stringsAsFactors = FALSE)
save(bt.grammer.2017, file = "data/bt.grammer.2017.rda", compress = "xz")
