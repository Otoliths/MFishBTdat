context("Checking: bt.belltilcock.2021b")

library(digest)

test_that("md5 hash matches for the data", {
  expect_match(digest(MFishBTdat::bt.belltilcock.2021b, algo="md5"), "bdaeadda08484863166d59e79175ab63")
})

