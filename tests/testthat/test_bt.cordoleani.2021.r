context("Checking: bt.cordoleani.2021")

library(digest)

test_that("md5 hash matches for the data", {
  expect_match(digest(MFishBTdat::bt.cordoleani.2021, algo="md5"), "b5fbe85bc3401f224d9ad31239751690")
})


