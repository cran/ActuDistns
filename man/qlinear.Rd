\name{qlinear}
\alias{qlinear}
\title{Linear failure rate quantile function}
\description{Computes the quantile function of the linear failure rate distribution}
\usage{
qlinear(x, u = 0.5, a = 1, b = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{a}{the value of a parameter, must be non-negative but both a and b cannot be zero}
  \item{b}{the value of b parameter, must be non-negative but both a and b cannot be zero}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=2,max=3)
y=qlinear(x)

## The function is currently defined as
function (x, u = 0.5, a = 1, b = 1) 
{
    ret = ifelse(x <= 0 | u <= 0 | u >= 1 | length(x) != length(u) | 
        a < 0 | b < 0 | a == 0 & b == 0, NaN, (1/b) * (-(a + 
        b * x) + sqrt(a * a + b * b * x * x + 2 * a * b * x + 
        2 * b * log(u))))
    return(ret)
  }
}
\keyword{Linear failure rate distribution}
