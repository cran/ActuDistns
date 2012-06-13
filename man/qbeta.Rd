\name{qbetad}
\alias{qbetad}
\title{Beta quantile function}
\description{Computes the quantile function of the beta distribution}
\usage{
qbetad(x, u = 0.5, a = 1, b = 1)
}
\arguments{
  \item{x}{scale or vector of values at which the integrated hazard rate function needs to be computed, values must be in the unit interval}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{a}{the value of b parameter, must be positive}
  \item{b}{the value of nu parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=qbetad(x)

## The function is currently defined as
function (x, u = 0.5, a = 1, b = 1) 
{
    ret = ifelse(x <= 0 | x >= 1 | u <= 0 | u >= 1 | length(x) != 
        length(u) | a <= 0 | b <= 0, NaN, qbeta(1 - u * (1 - 
        pbeta(x, shape1 = a, shape2 = b)), shape1 = a, shape2 = b) - 
        x)
    return(ret)
  }
}
\keyword{Beta distribution}
