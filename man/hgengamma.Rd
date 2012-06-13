\name{hgengamma}
\alias{hgengamma}
\title{Generalized gamma hazard rate function}
\description{Computes the hazard rate function of the generalized gamma distribution}
\usage{
hgengamma(x, alpha = 1, lambda = 1, sigma = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the hazard rate function needs to be computed}
  \item{alpha}{the value of alpha parameter, can be any real}
  \item{lambda}{the value of lambda parameter, can be any real}
  \item{sigma}{the value of sigma parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{VGAM}.}

\examples{x=runif(10,min=0,max=1)
#y=hgengamma(x)

## The function is currently defined as
function (x, alpha = 1, lambda = 1, sigma = 1) 
{
    ret = ifelse(x <= 0 | sigma <= 0, NaN, dgengamma(x, scale = ((1/sigma) * 
        exp(alpha))^(-(1/sigma) * exp(-lambda)), d = sigma, k = exp(lambda))/(1 - 
        pgengamma(x, scale = ((1/sigma) * exp(alpha))^(-(1/sigma) * 
            exp(-lambda)), d = sigma, k = exp(lambda))))
    return(ret)
  }
}
\keyword{Generalized gamma distribution}
