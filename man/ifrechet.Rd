\name{ifrechet}
\alias{ifrechet}
\title{Gumbel II integrated hazard rate function}
\description{Computes the integrated hazard rate function of the Gumbel II distribution}
\usage{
ifrechet(x, t = 1, a = 1, b = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{a}{the value of a parameter, must be positive}
  \item{b}{the value of b parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=ifrechet(x)

## The function is currently defined as
function (x, t = 1, a = 1, b = 1) 
{
    ret = ifelse(x <= 0 | t <= 0 | length(x) != length(t) | a <= 
        0 | b <= 0, NaN, b * (x^(-a - 1) - (x + t)^(-a - 1)))
    return(ret)
  }
}
\keyword{Gumbel II distribution}
