\name{qlai}
\alias{qlai}
\title{Lai quantile function}
\description{Computes the quantile function of the Lai distribution}
\usage{
qlai(x, u = 0.5, lambda = 1, beta = 1, nu = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{lambda}{the value of lambda parameter, must be positive}
  \item{beta}{the value of beta parameter, must be non-negative but both beta and nu cannot be zero}
  \item{nu}{the value of nu parameter, must be non-negative but both beta and nu cannot be zero}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{hypergeo}.}

\examples{x=runif(10,min=0,max=1)
y=qlai(x)

## The function is currently defined as
function (x, u = 0.5, lambda = 1, beta = 1, nu = 1) 
{
    m = length(x)
    ret = rep(NaN, m)
    if (x > 0 & u > 0 & u < 1 & length(x) == length(u) & lambda > 
        0 & beta >= 0 & nu >= 0) {
        for (i in 1:m) {
            ff = function(t) {
                lambda * (-x[i]^beta * genhypergeo(U = beta, 
                  L = 1 + beta, z = nu * x[i]) + (x[i] + t)^beta * 
                  genhypergeo(U = beta, L = 1 + beta, z = nu * 
                    (x[i] + t)) - (nu/(beta + 1)) * x[i]^(beta + 
                  1) * genhypergeo(U = 1 + beta, L = 2 + beta, 
                  z = nu * x[i]) + (nu/(beta + 1)) * (x[i] + 
                  t)^(beta + 1) * genhypergeo(U = 1 + beta, L = 2 + 
                  beta, z = nu * (x[i] + t)))
            }
            ret[i] = uniroot(ff, lower = 0, upper = 100)$root
        }
    }
    return(ret)
  }
}
\keyword{Lai distribution}
