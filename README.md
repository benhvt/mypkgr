
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mypkgr

<!-- badges: start -->

[![R-CMD-check](https://github.com/benhvt/mypkgr/workflows/R-CMD-check/badge.svg)](https://github.com/benhvt/mypkgr/actions)
<!-- badges: end -->

The goal of mypkgr is to test how to developp an R package during the
ISPED summer school.

## Installation

You can install the development version of mypkgr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("benhvt/mypkgr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(mypkgr)
## basic example code
matrice <- cbind(c(1, 2), c(3,4), c(5,6))
matrice
#>      [,1] [,2] [,3]
#> [1,]    1    3    5
#> [2,]    2    4    6
mean_M <- c(0,0)
varcovM <- diag(1, 2)
mvnpdf(matrice, mean_M, varcovM = varcovM, Log = FALSE)
#> $x
#>      [,1] [,2] [,3]
#> [1,]    1    3    5
#> [2,]    2    4    6
#> 
#> $y
#> [1] 1.306423e-02 5.931153e-07 9.033134e-15
#> 
#> attr(,"class")
#> [1] "mvnpdf"
```
