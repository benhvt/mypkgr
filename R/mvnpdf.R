#' Multivariate normal distribution density
#'
#' Compute the value of the density of a multivariate normal distribution on R^p at n points.
#'
#' @param x  a matrix, with \code{n} columns (the observations) and \code{p} rows
#' @param mean a vector of means of length \code{p}
#' @param varcovM a variance-covariance matrix of dim \code{p}
#' @param Log  a logical parameter, with default value to \code{TRUE}.
#'
#' @return a list containing the matrix \code{x}, and a vector of length \code{n} of the multivariate normal distribution density values at those points.
#' @export
#'
#' @examples
#' matrice <- cbind(c(1, 2), c(3,4), c(5,6))
#' matrice
#' mean_M <- c(0,0)
#' varcovM <- diag(1, 2)
#' mvnpdf(matrice, mean_M, varcovM = varcovM, Log = FALSE)

mvnpdf <- function(x, mean = rep(0,nrow(x)), varcovM = diag(1, nrow(x)), Log = TRUE){
  n <- length(mean)
  if (Log){
    f_x <- -(n/2*log(2*pi) + 1/2*log(det(varcovM))) + (-(1/2)*t(x-mean)%*%solve(varcovM)%*%(x-mean))
  }
  else{
    f_x <- (1)/((2*pi)^(n/2) * det(varcovM)^(1/2))*exp(-1/2*t(x-mean)%*%solve(varcovM)%*%(x-mean))

  }
  res <- list(x = x, y=diag(f_x))
  class(res) <- "mvnpdf"
  return(res)
}

