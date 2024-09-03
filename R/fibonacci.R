#' Calculate Fibonacci Numbers
#'
#' This function calculates the first N Fibonacci numbers.
#'
#' @param N The number of Fibonacci numbers to calculate.
#' @return A numeric vector containing the first N Fibonacci numbers.
#' @export
#'
#' @examples
#' fibonacci_sequence(10)
#'
#' @section Command Line Usage:
#' This package includes a command-line interface script. You can use it as follows:
#'
#' \code{Rscript inst/scripts/fibonacci_cli.R <N>}
#'
#' To display the package version:
#'
#' \code{Rscript inst/scripts/fibonacci_cli.R --version}
fibonacci_sequence <- function(n) {
  if (n <= 0) {
    return(list())
  }

  # Initialize the list with the first two Fibonacci numbers
  fib_list <- numeric(n)
  fib_list[1] <- 1
  if (n > 1) {
    fib_list[2] <- 1
  }

  # Calculate the remaining Fibonacci numbers
  for (i in 3:n) {
    fib_list[i] <- fib_list[i - 1] + fib_list[i - 2]
  }

  return(fib_list)
}
