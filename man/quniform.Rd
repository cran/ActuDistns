\name{quniform}
\alias{quniform}
\title{Uniform quantile function}
\description{Computes the quantile function of the uniform distribution}
\usage{
quniform(x, u = 0.5, a = 1, b = 2)
}
\arguments{
  \item{x}{scale or vector of values at which the integrated hazard rate function needs to be computed, values must be between a and b}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{a}{the value of a parameter, must be positive}
  \item{b}{the value of b parameter, must be greater than a}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=quniform(x)

## The function is currently defined as
function (x, u = 0.5, a = 1, b = 2) 
{
    ret = ifelse(x <= a | x >= b | u <= 0 | u >= 1 | length(x) != 
        length(u) | b <= a | a <= 0, NaN, (b - x) * (1 - u))
    return(ret)
  }
}
\keyword{Uniform distribution}
