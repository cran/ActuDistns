\name{iaddweibull}
\alias{iaddweibull}
\title{Additive Weibull integrated hazard rate function}
\description{Computes the integrated hazard rate function of the additive Weibull distribution}
\usage{
iaddweibull(x, t = 1, a = 1, b = 1, c = 1, d = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{a}{the value of a parameter, must be positive}
  \item{b}{the value of b parameter, must be positive}
  \item{c}{the value of c parameter, must be positive}
  \item{d}{the value of d parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=iaddweibull(x)

## The function is currently defined as
function (x, t = 1, a = 1, b = 1, c = 1, d = 1) 
{
    ret = ifelse(x <= 0 | t <= 0 | length(x) != length(t) | a <= 
        0 | b <= 0 | c <= 0 | d <= 0, NaN, a^b * (x + t)^b + 
        c^d * (x + t)^d)
    return(ret)
  }
}
\keyword{Additive Weibull distribution}
