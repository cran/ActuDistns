\name{daddweibull}
\alias{daddweibull}
\title{Additive Weibull pdf}
\description{Computes the pdf of the additive Weibull distribution}
\usage{
daddweibull(x, a = 1, b = 1, c = 1, d = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the pdf needs to be computed}
  \item{a}{the value of a parameter (the first scale parameter), must be positive}
  \item{b}{the value of b parameter (the first shape parameter), must be positive}
  \item{c}{the value of c parameter (the second scale parameter), must be positive}
  \item{d}{the value of d parameter (the second shape parameter), must be positive}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=daddweibull(x)

## The function is currently defined as
function (x, a = 1, b = 1, c = 1, d = 1) 
{
    ret = ifelse(x <= 0 | a <= 0 | b <= 0 | c <= 0 | d <= 0, 
        NaN, (a^b * b * x^{
            b - 1
        } + c^d * d * x^{
            d - 1
        }) * exp(-(a * x)^b - (c * x)^d))
    return(ret)
  }
}
\keyword{Additive Weibull}
