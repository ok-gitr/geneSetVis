#library(testthat)
#library(shinytest)

testthat::test_that("Application works", {
  # Use compareImages=FALSE because the expected image screenshots were created
  # on a Mac, and they will differ from screenshots taken on the CI platform,
  # which runs on Linux.
  shinytest::expect_pass(shinytest::testApp(system.file("tests/", package = "geneSetVis"), compareImages = FALSE))
})