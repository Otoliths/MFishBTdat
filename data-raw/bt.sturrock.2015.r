#Sturrock, A. M., Wikert, J. D., Heyne, T., Mesick, C., Hubbard, A. E., Hinkelman, T. M., ... & Johnson, R. C. (2015). Reconstructing the migratory behavior and long-term survivorship of juvenile Chinook salmon under contrasting hydrologic regimes. PLoS One, 10(5), e0122380.
#https://doi.org/10.1371/journal.pone.0122380

bt.sturrock.2015 <- read.table("data-raw/bt.sturrock.2015.txt",
                               header = TRUE, stringsAsFactors = FALSE)
save(bt.sturrock.2015, file = "data/bt.sturrock.2015.rda", compress = "xz")
