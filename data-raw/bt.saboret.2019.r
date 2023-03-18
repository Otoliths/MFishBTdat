# Saboret, G., & Ingram, T. (2019). Carryover effects of larval environment on individual variation in a facultatively diadromous fish. Ecology and Evolution, 9(18), 10630-10643.
# https://doi.org/10.1002/ece3.5582
#
bt.saboret.2019 <- read.table("data-raw/bt.saboret.2019.txt",
  header = TRUE, stringsAsFactors = FALSE)
save(bt.saboret.2019, file = "data/bt.saboret.2019.rda", compress = "xz")
