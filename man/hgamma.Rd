\name{hgamma}
\alias{hgamma}
\title{Gamma hazard rate function}
\description{Computes the hazard rate function of the gamma distribution}
\usage{
hgamma(x, alpha = 1, lambda = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the hazard rate function needs to be computed}
  \item{alpha}{the value of alpha parameter, can be any real}
  \item{lambda}{the value of lambda parameter, can be any real}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=hgamma(x)

## The function is currently defined as
function (x, alpha = 1, lambda = 1) 
{
    ret = ifelse(x <= 0, NaN, dgamma(x, shape = exp(lambda), 
        scale = exp(-alpha * exp(-lambda)))/(1 - pgamma(x, shape = exp(lambda), 
        scale = exp(-alpha * exp(-lambda)))))
    return(ret)
  }
}
\keyword{Gamma distribution}
