#Hughes, J. M., Schmidt, D. J., Macdonald, J. I., Huey, J. A., & Crook, D. A. (2014). Low interbasin connectivity in a facultatively diadromous fish: evidence from genetics and otolith chemistry. Molecular Ecology, 23(5), 1000-1013.http://dx.doi.org/10.1111/mec.12661
#https://doi.org/10.5061/dryad.3dh2c


bt.hughes.2014 <- read.table("data-raw/bt.hughes.2014.txt",
                                  header = TRUE, stringsAsFactors = FALSE)
save(bt.hughes.2014, file = "data/bt.hughes.2014.rda", compress = "xz")
