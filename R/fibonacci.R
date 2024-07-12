#' Calculate Fibonacci Numbers
#'
#' This function calculates the first N Fibonacci numbers.
#'
#' @param N The number of Fibonacci numbers to calculate.
#' @return A numeric vector containing the first N Fibonacci numbers.
#' @export
fibonacci <- function(N) {
  if (N <= 0) {
    return(list())
  }
  
  # Initialize the list with the first two Fibonacci numbers
  fib_list <- numeric(N)
  fib_list[1] <- 1
  if (N > 1) {
    fib_list[2] <- 1
  }
  
  # Calculate the remaining Fibonacci numbers
  for (i in 3:N) {
    fib_list[i] <- fib_list[i-1] + fib_list[i-2]
  }
  
  return(fib_list)
}

# Example usage
# N <- 10
# fib_numbers <- fibonacci(N)
# print(fib_numbers)
