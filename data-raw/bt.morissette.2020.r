#Morissette, O., Bernatchez, L., Wiedenbeck, M., & Sirois, P. (2020). Deciphering lifelong thermal niche using otolith δ18O thermometry within supplemented lake trout (Salvelinus namaycush) populations. Freshwater Biology, 65(6), 1114-1127.
#https://doi.org/10.1111/fwb.13497

bt.morissette.2020 <- read.table("data-raw/bt.morissette.2020.txt",
                               header = TRUE, stringsAsFactors = FALSE)
save(bt.morissette.2020, file = "data/bt.morissette.2020.rda", compress = "xz")
