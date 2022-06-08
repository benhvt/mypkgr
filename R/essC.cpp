#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]

// [[Rcpp::export]]
void hello_world() {
  Rcpp::Rcout << "Salut!" << std::endl;
}

// After compile, this function will be immediately called using
// the below snippet and results will be sent to the R console.

/*** R
hello_world()
*/
