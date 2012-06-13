\name{hgenF}
\alias{hgenF}
\title{Generalized F hazard rate function}
\description{Computes the hazard rate function of the generalized F distribution}
\usage{
hgenF(x, beta = 0, sigma = 1, m1 = 1, m2 = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the hazard rate function needs to be computed}
  \item{beta}{the value of beta parameter, can be any real}
  \item{sigma}{the value of sigma parameter, must be positive}
  \item{m1}{the value of m1 parameter, must be positive}
  \item{m2}{the value of m2 parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{flexsurv}.}

\examples{x=runif(10,min=0,max=1)
#y=hgenF(x)

## The function is currently defined as
function (x, beta = 0, sigma = 1, m1 = 1, m2 = 1) 
{
    ret = ifelse(x <= 0 | sigma <= 0 | m1 <= 0 | m2 <= 0, NaN, 
        dgenf.orig(x, mu = beta, sigma = sigma, s1 = m1, s2 = m2)/(1 - 
            pgenf.orig(x, mu = beta, sigma = sigma, s1 = m1, 
                s2 = m2)))
    return(ret)
  }
}
\keyword{Generalized F distribution}
