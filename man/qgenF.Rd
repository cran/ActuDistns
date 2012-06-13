\name{qgenF}
\alias{qgenF}
\title{Generalized F quantile function}
\description{Computes the quantile function of the generalized F distribution}
\usage{
qgenF(x, u = 0.5, beta = 0, sigma = 1, m1 = 1, m2 = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{beta}{the value of beta parameter, must be positive}
  \item{sigma}{the value of sigma parameter, must be positive}
  \item{m1}{the value of m1 parameter, must be positive}
  \item{m2}{the value of m2 parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{flexsurv}.}

\examples{x=runif(10,min=0,max=1)
#y=qgenF(x)

## The function is currently defined as
function (x, u = 0.5, beta = 0, sigma = 1, m1 = 1, m2 = 1) 
{
    ret = ifelse(x <= 0 | u <= 0 | u >= 1 | length(x) != length(u) | 
        sigma <= 0 | m1 <= 0 | m2 <= 0, NaN, qgenf.orig(1 - u * 
        (1 - pgenf.orig(x, mu = beta, sigma = sigma, s1 = m1, 
            s2 = m2)), mu = beta, sigma = sigma, s1 = m1, s2 = m2) - 
        x)
    return(ret)
  }
}
\keyword{Generalized F distribution}
