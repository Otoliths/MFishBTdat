#Pereira, L. A., Santos, R. V., Hauser, M., Duponchelle, F., Carvajal, F., Pecheyran, C., ... & Pouilly, M. (2019). Commercial traceability of Arapaima spp. fisheries in the Amazon basin: can biogeochemical tags be useful?. Biogeosciences, 16(8), 1781-1797.

bt.pereira.2019 <- read.table("data-raw/bt.pereira.2019.txt",
                                  header = TRUE, stringsAsFactors = FALSE)
save(bt.pereira.2019, file = "data/bt.pereira.2019.rda", compress = "xz")
