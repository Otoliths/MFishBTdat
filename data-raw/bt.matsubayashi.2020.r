# Matsubayashi, J., Osada, Y., Tadokoro, K., Abe, Y., Yamaguchi, A., Shirai, K., ... & Tayasu, I. (2020). Tracking long-distance migration of marine fishes using compound-pecific stable isotope analysis of amino acids. Ecology Letters, 23(5), 881-890..
# https://doi.org/10.1111/ele.13496

bt.matsubayashi.2020 <- read.table("data-raw/bt.matsubayashi.2020.txt",
  header = TRUE, stringsAsFactors = FALSE)
save(bt.matsubayashi.2020, file = "data/bt.matsubayashi.2020.rda", compress = "xz")
