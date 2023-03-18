#Duponchelle, F., Pouilly, M., Pécheyran, C., Hauser, M., Renno, J. F., Panfili, J., ... & Baras, E. (2016). Trans-Amazonian natal homing in giant catfish. Journal of Applied Ecology, 53(5), 1511-1520.
#https://doi.org/10.1111/1365-2664.12665

bt.duponchelle.2016 <- read.table("data-raw/bt.duponchelle.2016.txt",
                                 header = TRUE, stringsAsFactors = FALSE)
save(bt.duponchelle.2016, file = "data/bt.duponchelle.2016.rda", compress = "xz")
