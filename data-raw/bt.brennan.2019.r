# Brennan, S. R., Cline, T. J., & Schindler, D. E. (2019). Quantifying habitat use of migratory fish across riverscapes using space‐time isotope models. Methods in Ecology and Evolution, 10(7), 1036-1047.
# https://doi.org/10.1111/2041-210X.13191

bt.brennan.2019 <- read.table("data-raw/bt.brennan.2019.txt",
  header = TRUE, stringsAsFactors = FALSE
)
save(bt.brennan.2019, file = "data/bt.brennan.2019.rda", compress = "xz")

