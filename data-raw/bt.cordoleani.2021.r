# Cordoleani, F., Phillis, C. C., Sturrock, A. M., FitzGerald, A. M., Malkassian, A., Whitman, G. E., ... & Johnson, R. C. (2021). Threatened salmon rely on a rare life history strategy in a warming landscape. Nature Climate Change, 11(11), 982-988.

bt.cordoleani.2021 <- read.table("data-raw/bt.cordoleani.2021.txt",
                                 header = TRUE, stringsAsFactors = FALSE)
save(bt.cordoleani.2021, file = "data/bt.cordoleani.2021.rda", compress = "xz")


