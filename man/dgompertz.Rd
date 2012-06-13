\name{dgompertz}
\alias{dgompertz}
\title{Gompertz pdf}
\description{Computes the pdf of the Gompertz distribution}
\usage{
dgompertz(x, alpha = 1, beta = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the pdf needs to be computed}
  \item{alpha}{the value of alpha parameter, can be any real}
  \item{beta}{the value of beta parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=dgompertz(x)

## The function is currently defined as
function (x, alpha = 1, beta = 1) 
{
    ret = ifelse(x <= 0 | beta <= 0, NaN, exp(alpha + beta * 
        x) * exp((1/beta) * exp(alpha) * (1 - exp(beta * x))))
    return(ret)
  }
}
\keyword{Gompertz distribution}
