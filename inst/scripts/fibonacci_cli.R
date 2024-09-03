#!/usr/bin/env Rscript

# Load the package
library(fibonacciPackage)

# Parse command-line arguments
args <- commandArgs(trailingOnly = TRUE)

# Function to get package version
get_package_version <- function() {
  desc <- read.dcf(system.file("DESCRIPTION", package = "fibonacciPackage"))
  return(as.character(desc[1, "Version"]))
}

# Check for --version flag
if ("--version" %in% args) {
  cat(get_package_version(), "\n")
  quit(status = 0)
}

# Check if N is provided
if (length(args) != 1) {
  cat("Usage: fibonacci_cli.R <N>\n")
  cat("Calculate the first N Fibonacci numbers.\n")
  cat("Use --version to display the package version.\n")
  quit(status = 1)
}

# Convert the argument to a number
N <- as.numeric(args[[1]])

# Check if N is a positive integer
if (is.na(N) || N <= 0) {
  cat("Please provide a positive integer for N.\n")
  quit(status = 1)
}

# Calculate Fibonacci numbers
fib_numbers <- fibonacci_sequence(N)

# Print the result
print(fib_numbers)
