#Sturrock, A. M., Carlson, S. M., Wikert, J. D., Heyne, T., Nusslé, S., Merz, J. E., ... & Johnson, R. C. (2020). Unnatural selection of salmon life histories in a modified riverscape. Global Change Biology, 26(3), 1235-1247.
#https://doi.org/10.1111/gcb.14896

bt.sturrock.2020 <- read.table("data-raw/bt.sturrock.2020.txt",
                               header = TRUE, stringsAsFactors = FALSE)
save(bt.sturrock.2020, file = "data/bt.sturrock.2020.rda", compress = "xz")
