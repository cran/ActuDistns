\name{ihjorth}
\alias{ihjorth}
\title{Hjorth integrated hazard rate function}
\description{Computes the integrated hazard rate function of the Hjorth distribution}
\usage{
ihjorth(x, t = 1, delta = 1, theta = 1, beta = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{delta}{the value of delta parameter, must be positive}
  \item{theta}{the value of theta parameter, must be positive}
  \item{beta}{the value of beta parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=ihjorth(x)

## The function is currently defined as
function (x, t = 1, delta = 1, theta = 1, beta = 1) 
{
    ret = ifelse(x <= 0 | t <= 0 | length(x) != length(t) | delta <= 
        0 | theta <= 0 | beta <= 0, NaN, delta * x * t + delta * 
        t * t/2 + (theta/beta) * log(1 + beta * t/(1 + beta * 
        x)))
    return(ret)
  }
}
\keyword{Hjorth distribution}
