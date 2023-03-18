# Hauser, M., Duponchelle, F., Hermann, T. W., Limburg, K. E., Castello, L., Stewart, D. J., ... & Doria, C. R. (2020). Unmasking continental natal homing in goliath catfish from the upper Amazon. Freshwater Biology, 65(2), 325-336.
# https://doi.org/10.1111/fwb.13427

bt.hauser.2020 <- read.table("data-raw/bt.hauser.2020.txt",
  header = TRUE, stringsAsFactors = FALSE)
save(bt.hauser.2020, file = "data/bt.hauser.2020.rda", compress = "xz")

