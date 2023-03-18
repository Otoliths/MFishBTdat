context("Checking: bt.belltilcock.2021b")

library(digest)

test_that("md5 hash matches for the data", {
  expect_match(digest(MFishBTdat::bt.belltilcock.2021b, algo="md5"), "b8439876a0bcf4113f415c00e1b0bc73")
})

