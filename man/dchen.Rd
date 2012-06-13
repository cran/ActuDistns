\name{dchen}
\alias{dchen}
\title{Chen pdf}
\description{Computes the pdf of the Chen distribution}
\usage{
dchen(x, beta = 1, lambda = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the pdf needs to be computed}
  \item{beta}{the value of beta parameter, must be positive}
  \item{lambda}{the value of lambda parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=dchen(x)

## The function is currently defined as
function (x, beta = 1, lambda = 1) 
{
    ret = ifelse(x <= 0 | beta <= 0 | lambda <= 0, NaN, beta * 
        lambda * x^(beta - 1) * exp(x^beta) * exp(lambda - lambda * 
        exp(x^beta)))
    return(ret)
  }
}
\keyword{Chen distribution}
