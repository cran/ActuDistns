\name{dbetad}
\alias{dbetad}
\title{Beta pdf}
\description{Computes the pdf of the beta distribution}
\usage{
dbetad(x, a = 1, b = 1)
}
\arguments{
  \item{x}{scale or vector of values at which the pdf needs to be computed, values must be in the unit interval}
  \item{a}{the value of a parameter, must be positive}
  \item{b}{the value of b parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=dbetad(x)

## The function is currently defined as
function (x, a = 1, b = 1) 
{
    ret = ifelse(x <= 0 | x >= 1 | a <= 0 | b <= 0, NaN, dbeta(x, 
        shape1 = a, shape2 = b))
    return(ret)
  }
}
\keyword{Beta distribution}
