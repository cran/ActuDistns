\name{qfrechet}
\alias{qfrechet}
\title{Gumbel II quantile function}
\description{Computes the quantile function of the Gumbel II distribution}
\usage{
qfrechet(x, u = 0.5, a = 1, b = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{a}{the value of a parameter, must be positive}
  \item{b}{the value of b parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=qfrechet(x)

## The function is currently defined as
function (x, u = 0.5, a = 1, b = 1) 
{
    ret = ifelse(x <= 0 | u <= 0 | u >= 1 | length(x) != length(u) | 
        a <= 0 | b <= 0, NaN, (x^{
        -a - 1
    } + log(u)/b)^(-1/(a + 1)) - x)
    return(ret)
  }
}
\keyword{Gumbel II distribution}
