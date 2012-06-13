\name{dkum}
\alias{dkum}
\title{Kumaraswamy pdf}
\description{Computes the pdf of the Kumarawamay distribution}
\usage{
dkum(x, a = 1, b = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the pdf needs to be computed}
  \item{a}{the value of a parameter, must be positive}
  \item{b}{the value of b parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=1,max=2)
y=dkum(x)

## The function is currently defined as
function (x, a = 1, b = 1) 
{
    ret = ifelse(x <= 0 | x >= 1 | a <= 0 | b <= 0, NaN, a * 
        b * x^(a - 1) * (1 - x^a)^(b - 1))
    return(ret)
  }
}
\keyword{Kumaraswamy distribution}
