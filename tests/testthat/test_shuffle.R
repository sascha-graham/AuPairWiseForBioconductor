library(testthat)

test_that("Testing shuffle function", {
  data("sampleBrainspanExpressionSet")
  exprs <- sampleBrainspanExpressionSet@assayData[["exprs"]]

  expect_vector(shuffle(exprs, 2, c(1)))
  expect_warning(shuffle(exprs, 2, c(0,1,2)))
})
