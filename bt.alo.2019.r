# Alò, D., Correa, C., Samaniego, H., Krabbenhoft, C. A., & Turner, T. F. (2019). Otolith microchemistry and diadromy in Patagonian river fishes. PeerJ, 7, e6149. https://doi.org/10.7717/peerj.6149

bt.alo.2019 <- read.table("data-raw/bt.alo.2019.txt", header = TRUE, stringsAsFactors = FALSE)
save(bt.alo.2019, file = "data/bt.alo.2019.rda", compress = "xz")
