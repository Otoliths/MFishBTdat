# Bell-Tilcock, M., Jeffres, C. A., Rypel, A. L., Willmes, M., Armstrong, R. A., Holden, P., ... & Johnson, R. C. (2021). Biogeochemical processes create distinct isotopic fingerprints to track floodplain rearing of juvenile salmon. PloS one, 16(10), e0257444.

bt.belltilcock.2021b <- read.table("data-raw/bt.belltilcock.2021b.txt",
                                          header = TRUE, stringsAsFactors = FALSE)
save(bt.belltilcock.2021b, file = "data/bt.belltilcock.2021b.rda", compress = "xz")
