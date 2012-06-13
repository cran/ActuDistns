\name{dlinear}
\alias{dlinear}
\title{Linear failure rate pdf}
\description{Computes the pdf of the linear failure rate distribution}
\usage{
dlinear(x, a = 1, b = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the pdf needs to be computed}
  \item{a}{the value of a parameter, must be non-negative but both a and b cannot be zero}
  \item{b}{the value of b parameter, must be non-negative but both a and b cannot be zero}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=dlinear(x)

## The function is currently defined as
function (x, a = 1, b = 1) 
{
    ret = ifelse(x <= 0 | a < 0 | b < 0 | a == 0 & b == 0, NaN, 
        (a + b * x) * exp(-a * x - b * x * x/2))
    return(ret)
  }
}
\keyword{Linear failure rate distribution}
