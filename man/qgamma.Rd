\name{qgammad}
\alias{qgammad}
\title{Gamma quantile function}
\description{Computes the quantile function of the gamma distribution}
\usage{
qgammad(x, u = 0.5, alpha = 1, lambda = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{alpha}{the value of alpha parameter, can be any real}
  \item{lambda}{the value of lambda parameter, can be any real}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=2,max=3)
y=qgammad(x)

## The function is currently defined as
function (x, u = 0.5, alpha = 1, lambda = 1) 
{
    ret = ifelse(x <= 0 | u <= 0 | u >= 1 | length(x) != length(u), 
        NaN, exp(-alpha * exp(-lambda)) * qgamma(1 - u * (1 - 
            pgamma(x^alpha * (exp(alpha)/sigma)^(exp(-lambda)), 
                shape = exp(lambda))), shape = exp(lambda)))
    return(ret)
  }
}
\keyword{Gamma distribution}
