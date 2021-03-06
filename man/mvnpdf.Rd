% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mvnpdf.R, R/mvnpdfoptim.R, R/mvnpdfsmart.R
\name{mvnpdf}
\alias{mvnpdf}
\alias{mvnpdfoptim}
\alias{mvnpdfsmart}
\title{Multivariate normal distribution density}
\usage{
mvnpdf(x, mean = rep(0, nrow(x)), varcovM = diag(1, nrow(x)), Log = TRUE)

mvnpdfoptim(x, mean = rep(0, nrow(x)), varcovM = diag(nrow(x)), Log = TRUE)

mvnpdfsmart(x, mean = rep(0, nrow(x)), varcovM = diag(nrow(x)), Log = TRUE)
}
\arguments{
\item{x}{a matrix, with \code{n} columns (the observations) and \code{p} rows}

\item{mean}{a vector of means of length \code{p}}

\item{varcovM}{a variance-covariance matrix of dim \code{p}}

\item{Log}{a logical parameter, with default value to \code{TRUE}.}
}
\value{
a list containing the matrix \code{x}, and a vector of length \code{n} of the multivariate normal distribution density values at those points.
}
\description{
Compute the value of the density of a multivariate normal distribution on R^p at n points.
}
\examples{
matrice <- cbind(c(1, 2), c(3,4), c(5,6))
matrice
mean_M <- c(0,0)
varcovM <- diag(1, 2)
mvnpdf(matrice, mean_M, varcovM = varcovM, Log = FALSE)
}
