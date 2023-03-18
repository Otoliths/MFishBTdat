context("Checking: bt.cordoleani.2021")

library(digest)

test_that("md5 hash matches for the data", {
  expect_match(digest(MFishBTdat::bt.cordoleani.2021, algo="md5"), "30b151c5f184c65ab1cdabe973d3472d")
})


