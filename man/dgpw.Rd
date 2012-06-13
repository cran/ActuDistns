\name{dgpw}
\alias{dgpw}
\title{Generalized power Weibull pdf}
\description{Computes the pdf of the generalized power Weibull distribution}
\usage{
dgpw(x, alpha = 1, theta = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the pdf needs to be computed}
  \item{alpha}{the value of alpha parameter, must be positive}
  \item{theta}{the value of theta parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=dgpw(x)

## The function is currently defined as
function (x, alpha = 1, theta = 1) 
{
    ret = ifelse(x <= 0 | alpha <= 0 | theta <= 0, NaN, alpha * 
        theta * x^{
        alpha - 1
    } * (1 + x^alpha)^{
        theta - 1
    } * exp(1 - (1 + x^alpha)^theta))
    return(ret)
  }
}
\keyword{Generalized power Weibull distribution}
