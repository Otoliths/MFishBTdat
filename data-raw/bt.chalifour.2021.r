# Chalifour, L., Scott, D. C., MacDuffee, M., Stark, S., Dower, J. F., Beacham, T. D., ... & Baum, J. K. (2021). Chinook salmon exhibit long-term rearing and early marine growth in the Fraser River, British Columbia, a large urban estuary. Canadian Journal of Fisheries and Aquatic Sciences, 78(5), 539-550.
# https://doi.org/10.1139/cjfas-2020-0247

bt.chalifour.2021 <- read.table("data-raw/bt.chalifour.2021.txt",
  header = TRUE, stringsAsFactors = FALSE)
save(bt.chalifour.2021, file = "data/bt.chalifour.2021.rda", compress = "xz")
