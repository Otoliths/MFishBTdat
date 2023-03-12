#Hermann, T. W., Stewart, D. J., Limburg, K. E., & Castello, L. (2016). Unravelling the life history of Amazonian fishes through otolith microchemistry. Royal Society open science, 3(6), 160206.http://dx.doi.org/10.1098/rsos.160206

bt.hermann.2016 <- read.table("data-raw/bt.hermann.2016.txt",
                                 header = TRUE, stringsAsFactors = FALSE)
save(bt.hermann.2016, file = "data/bt.hermann.2016.rda", compress = "xz")
