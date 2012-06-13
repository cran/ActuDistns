\name{ilai}
\alias{ilai}
\title{Lai integrated hazard rate function}
\description{Computes the integrated hazard rate function of the Lai distribution}
\usage{
ilai(x, t = 1, lambda = 1, beta = 1, nu = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{lambda}{the value of lambda parameter, must be positive}
  \item{beta}{the value of beta parameter, must be non-negative but both beta and nu cannot be zero}
  \item{nu}{the value of nu parameter, must be non-negative but both beta and nu cannot be zero}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{hypergeo}.}

\examples{x=runif(10,min=0,max=1)
y=ilai(x)

## The function is currently defined as
function (x, t = 1, lambda = 1, beta = 1, nu = 1) 
{
    ret = ifelse(x <= 0 | t <= 0 | length(x) != length(t) | lambda <= 
        0 | beta < 0 | nu < 0, NaN, lambda * (-x^beta * genhypergeo(U = beta, 
        L = 1 + beta, z = nu * x) + (x + t)^beta * genhypergeo(U = beta, 
        L = 1 + beta, z = nu * (x + t)) - (nu/(beta + 1)) * x^(beta + 
        1) * genhypergeo(U = 1 + beta, L = 2 + beta, z = nu * 
        x) + (nu/(beta + 1)) * (x + t)^(beta + 1) * genhypergeo(U = 1 + 
        beta, L = 2 + beta, z = nu * (x + t))))
    return(ret)
  }
}
\keyword{Lai distribution}
