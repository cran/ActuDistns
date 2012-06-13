\name{hjshape}
\alias{hjshape}
\title{J-shaped hazard rate function}
\description{Computes the hazard rate function of the J-shaped distribution}
\usage{
hjshape(x, b = 1, nu = 1)
}
\arguments{
  \item{x}{scale or vector of values at which the hazard rate function needs to be computed, values are positive and bounded below by b}
  \item{b}{the value of b parameter, must be positive}
  \item{nu}{the value of nu parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=hjshape(x)

## The function is currently defined as
function (x, b = 1, nu = 1) 
{
    y = 1 - x/b
    ret = ifelse(y <= 0 | y >= 1 | b <= 0 | nu <= 0, NaN, (2/b) * 
        nu * y * (1 - y * y)^(nu - 1)/(1 - (1 - y * y)^nu))
    return(ret)
  }
}
\keyword{J-shaped distribution}
