#Bell-Tilcock, M.  Jeffres, C. A.  Rypel, A. L.  Sommer, T. R.  Katz, J. V.  Whitman, G.  & Johnson, R. C. (2021). Advancing diet reconstruction in fish eye lenses. Methods in Ecology and Evolution, 12(3), 449-457.http://dx.doi.org/10.1111/2041-210X.13543


bt.belltilcock.2021a <- read.table("data-raw/bt.belltilcock.2021a.txt",
                                   header = TRUE, stringsAsFactors = FALSE)
save(bt.belltilcock.2021a, file = "data/bt.belltilcock.2021a.rda", compress = "xz")
