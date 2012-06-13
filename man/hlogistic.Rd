\name{hlogistic}
\alias{hlogistic}
\title{Logistic hazard rate function}
\description{Computes the hazard rate function of the Logistic distribution}
\usage{
hlogistic(x, alpha = 1, sigma = 1)
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
y=hlogistic(x)

## The function is currently defined as
function (x, alpha = 1, sigma = 1) 
{
    ret = 1/(exp(sigma) * (1 + exp(-(x + alpha)/exp(sigma))))
    return(ret)
  }
}
\keyword{Logistic distribution}
