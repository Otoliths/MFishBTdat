#Sakamoto, T., Takahashi, M., Chung, M. T., Rykaczewski, R. R., Komatsu, K., Shirai, K., ... & Higuchi, T. (2022). Contrasting life-history responses to climate variability in eastern and western North Pacific sardine populations. Nature Communications, 13(1), 5298. https://doi.org/10.1038/s41467-022-33019-z

bt.sakamoto.2022 <- read.table("data-raw/bt.sakamoto.2022.txt",
                              header = TRUE, stringsAsFactors = FALSE)
save(bt.sakamoto.2022, file = "data/bt.sakamoto.2022.rda", compress = "xz")
