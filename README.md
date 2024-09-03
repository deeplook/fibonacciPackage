# fibonacciPackage

## Description

fibonacciPackage is an R package that provides a function to calculate
the first N Fibonacci numbers.

## Installation

First, install the `devtools` package, if you don't have it already:

```R
$ R
> install.packages("devtools")
```

### From GitHub

You can install the development version of fibonacciPackage directly
from GitHub using the `devtools` package:

```R
$ R
> library("devtools")
> devtools::install_github("deeplook/fibonacciPackage")
```

### From local folder

Alternatively, you can clone the git repository or download a zip
archive of it:

```console
$ git clone https://github.com/deeplook/fibonacciPackage.git
```
Now without changing the folder, run R and install the package inside
the folder:

```R
$ R
> library("devtools")
> devtools::install("fibonacciPackage")  # This is the package folder name
```

## Usage

Programmatic usage:

```R
$ R
> library(fibonacciPackage)
> fibonacci_sequence(10)
[1] 1 1 2 3 5 8 13 21 34 55
```

Command-line interface:

```console
$ Rscript inst/scripts/fibonacci_cli.R 10
 [1]  1  1  2  3  5  8 13 21 34 55

$ Rscript inst/scripts/fibonacci_cli.R --version
0.1.0
```

## Testing

```console
$ Rscript fibonacciPackage/tests/testthat/test_fibonacci.R
Test passed 🌈
Test passed 😀
```

## Uninstallation

```R
$ R
> remove.packages("fibonacciPackage")
```