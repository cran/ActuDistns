\name{hel}
\alias{hel}
\title{Exponentiated logistic hazard rate function}
\description{Computes the hazard rate function of the exponentiated logistic distribution}
\usage{
hel(x, alpha = 1, beta = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the hazard rate function needs to be computed}
  \item{alpha}{the value of alpha parameter, must be positive}
  \item{beta}{the value of beta parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{reliaR}.}

\examples{x=runif(10,min=0,max=1)
y=hel(x)

## The function is currently defined as
function (x, alpha = 1, beta = 1) 
{
    ret = ifelse(x <= 0 | alpha <= 0 | beta <= 0, NaN, dexpo.logistic(x, 
        alpha = alpha, beta = beta)/(1 - pexpo.logistic(x, alpha = alpha, 
        beta = beta)))
    return(ret)
  }
}
\keyword{Exponentiated logistic distribution}
