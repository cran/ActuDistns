\name{hnormal}
\alias{hnormal}
\title{Normal hazard rate function}
\description{Computes the hazard rate function of the normal distribution}
\usage{
hnormal(x, alpha = 1, sigma = 1)
}
\arguments{
  \item{x}{scale or vector of any real values at which the hazard rate function needs to be computed}
  \item{alpha}{the value of alpha parameter, can be any real}
  \item{sigma}{the value of sigma parameter, can be any real}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=hnormal(x)

## The function is currently defined as
function (x, alpha = 1, sigma = 1) 
{
    ret = dnorm(x, mean = -alpha, sd = exp(sigma))/(1 - pnorm(x, 
        mean = -alpha, sd = exp(sigma)))
    return(ret)
  }
}
\keyword{Normal distribution}
