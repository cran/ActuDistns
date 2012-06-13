\name{iloglogistic}
\alias{iloglogistic}
\title{Log-logistic integrated hazard rate function}
\description{Computes the integrated hazard rate function of the log-logistic distribution}
\usage{
iloglogistic(x, t = 1, alpha = 1, sigma = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{alpha}{the value of alpha parameter, can be any real}
  \item{sigma}{the value of sigma parameter, can be any real}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=2,max=3)
y=iloglogistic(x)

## The function is currently defined as
function (x, t = 1, alpha = 1, sigma = 1) 
{
    ret = ifelse(x <= 0 | t <= 0 | length(x) != length(t), NaN, 
        log((1 + exp(alpha) * (x + t)^{
            exp(sigma)
        })/(1 + exp(alpha) * x^{
            exp(sigma)
        })))
    return(ret)
  }
}
\keyword{Log-logistic distribution}
