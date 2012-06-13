\name{ichen}
\alias{ichen}
\title{Chen integrated hazard rate function}
\description{Computes the integrated hazard rate function of the Chen distribution}
\usage{
ichen(x, t = 1, beta = 1, lambda = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{beta}{the value of beta parameter, must be positive}
  \item{lambda}{the value of lambda parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=ichen(x)

## The function is currently defined as
function (x, t = 1, beta = 1, lambda = 1) 
{
    ret = ifelse(x <= 0 | t <= 0 | length(x) != length(t) | beta <= 
        0 | lambda <= 0, NaN, lambda * (exp((x + t)^beta) - exp(x^beta)))
    return(ret)
  }
}
\keyword{Chen distribution}
