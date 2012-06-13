\name{hlgamma}
\alias{hlgamma}
\title{Log gamma hazard rate function}
\description{Computes the hazard rate function of the log gamma distribution}
\usage{
hlgamma(x, alpha = 1, lambda = 1)
}
\arguments{
  \item{x}{scale or vector of values greater than one at which the hazard rate function needs to be computed}
  \item{alpha}{the value of alpha parameter, must be positive}
  \item{lambda}{the value of lambda parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{actuar}.}

\examples{x=runif(10,min=2,max=3)
y=hlgamma(x)

## The function is currently defined as
function (x, alpha = 1, lambda = 1) 
{
    ret = ifelse(x <= 1 | alpha <= 0 | lambda <= 0, NaN, dlgamma(x, 
        shapelog = alpha, ratelog = lambda)/(1 - plgamma(x, shapelog = alpha, 
        ratelog = lambda)))
    return(ret)
  }
}
\keyword{Log gamma distribution}
