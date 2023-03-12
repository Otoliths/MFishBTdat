# Matsubayashi, J., Saitoh, Y., Osada, Y., Uehara, Y., Habu, J., Sasaki, T., & Tayasu, I. (2017). Incremental analysis of vertebral centra can reconstruct the stable isotope chronology of teleost fishes. Methods in Ecology and Evolution, 8(12), 1755-1763. https://doi.org/10.1111/2041-210X.12834


bt.matsubayashi.2017 <- read.table("data-raw/bt.matsubayashi.2017.txt",
  header = TRUE, stringsAsFactors = FALSE)
save(bt.matsubayashi.2017, file = "data/bt.matsubayashi.2017.rda", compress = "xz")
