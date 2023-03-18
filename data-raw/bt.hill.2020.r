#Hill, C. R., Rulifson, R. A., & Halden, N. M. (2022). A quantitative approach to investigate natal philopatry in Hickory Shad (Alosa mediocris) using otolith chemistry. Fisheries Research, 249, 106232.
#https://doi.org/10.1016/j.fishres.2022.106232
#

bt.hill.2020 <- read.table("data-raw/bt.hill.2020.txt",
                              header = TRUE, stringsAsFactors = FALSE)
save(bt.hill.2020, file = "data/bt.hill.2020.rda", compress = "xz")
