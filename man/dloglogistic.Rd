\name{dloglogistic}
\alias{dloglogistic}
\title{Log-logistic pdf}
\description{Computes the pdf of the Log-logistic distribution}
\usage{
dloglogistic(x, alpha = 1, sigma = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the pdf needs to be computed}
  \item{alpha}{the value of alpha parameter, can be any real}
  \item{sigma}{the value of sigma parameter, can be any real}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=dloglogistic(x)

## The function is currently defined as
function (x, alpha = 1, sigma = 1) 
{
    ret = ifelse(x <= 0, NaN, (exp(alpha + sigma) * x^{
        exp(sigma) - 1
    })/(1 + exp(alpha) * x^{
        exp(sigma)
    })^2)
    return(ret)
  }
}
\keyword{Log-logistic distribution}
