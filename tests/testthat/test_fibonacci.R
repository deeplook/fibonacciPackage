library(testthat)
library(fibonacciPackage)

test_that("fibonacci_sequence generates correct sequence for n = 5", {
  result <- fibonacci_sequence(5)
  expected <- c(1, 1, 2, 3, 5)
  expect_equal(result, expected)
})

test_that("fibonacci_sequence generates correct sequence for n = 10", {
  result <- fibonacci_sequence(10)
  expected <- c(1, 1, 2, 3, 5, 8, 13, 21, 34, 55)
  expect_equal(result, expected)
})
