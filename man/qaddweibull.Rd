\name{qaddweibull}
\alias{qaddweibull}
\title{Additive Weibull integrated hazard rate function}
\description{Computes the integrated hazard rate function of the additive Weibull distribution}
\usage{
qaddweibull(x, u = 0.5, a = 1, b = 1, c = 1, d = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{a}{the value of a parameter, must be positive}
  \item{b}{the value of b parameter, must be positive}
  \item{c}{the value of c parameter, must be positive}
  \item{d}{the value of d parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=qaddweibull(x)

## The function is currently defined as
function (x, u = 0.5, a = 1, b = 1, c = 1, d = 1) 
{
    m = length(x)
    ret = rep(NaN, m)
    if (x > 0 & u > 0 & u < 1 & length(x) == length(u) & a > 
        0 & b > 0 & c > 0 & d > 0) {
        for (i in 1:m) {
            ff = function(t) {
                a^b * (x[i] + t)^b + c^d * (x[i] + t)^d + log(u[i])
            }
            ret[i] = uniroot(ff, lower = 0, upper = 100)$root
        }
    }
    return(ret)
  }
}
\keyword{Additive Weibull distribution}
