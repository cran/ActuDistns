\name{dfw}
\alias{dfw}
\title{Flexible Weibull pdf}
\description{Computes the pdf of the flexible Weibull distribution}
\usage{
dfw(x, alpha = 1, beta = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the pdf needs to be computed}
  \item{alpha}{the value of alpha parameter, must be positive}
  \item{beta}{the value of beta parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=dfw(x)

## The function is currently defined as
function (x, alpha = 1, beta = 1) 
{
    ret = ifelse(x <= 0 | alpha <= 0 | beta <= 0, NaN, (alpha + 
        beta/(x * x)) * exp(alpha * x - beta/x) * exp(-exp(alpha * 
        x - beta/x)))
    return(ret)
  }
}
\keyword{Flexible Weibull distribution}
