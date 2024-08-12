#!/usr/bin/env Rscript

# Load the package
library(fibonacciPackage1)

# Parse command-line arguments
args <- commandArgs(trailingOnly = TRUE)

if (length(args) != 1) {
  cat("Usage: fibonacci_cli.R <N>\n")
  cat("Calculate the first N Fibonacci numbers.\n")
  quit(status = 1)
}

# Convert the argument to a number
N <- as.numeric(args[[1]])

if (is.na(N) || N <= 0) {
  cat("Please provide a positive integer for N.\n")
  quit(status = 1)
}

# Calculate Fibonacci numbers
fib_numbers <- fibonacci(N)

# Print the result
cat("The first", N, "Fibonacci numbers are:\n")
print(fib_numbers)
