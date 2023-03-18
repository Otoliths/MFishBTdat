# Caccavo, J. A., Ashford, J. R., Ryan, S., Papetti, C., Schröder, M., & Zane, L. (2019). Spatial structuring and life history connectivity of Antarctic silverfish along the southern continental shelf of the Weddell Sea. Marine Ecology Progress Series, 624, 195-212.
# https://doi.org/10.3354/MEPS13017
#

bt.caccavo.2019 <- read.table("data-raw/bt.caccavo.2019.txt",
  header = TRUE, stringsAsFactors = FALSE)
save(bt.caccavo.2019, file = "data/bt.caccavo.2019.rda", compress = "xz")
