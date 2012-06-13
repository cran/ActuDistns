\name{iel}
\alias{iel}
\title{Exponentiated logistic integrated hazard rate function}
\description{Computes the integrated hazard rate function of the exponentiated logistic distribution}
\usage{
iel(x, t = 1, alpha = 1, beta = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{alpha}{the value of alpha parameter, must be positive}
  \item{beta}{the value of beta parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{reliaR}.}

\examples{x=runif(10,min=0,max=1)
y=iel(x)

## The function is currently defined as
function (x, t = 1, alpha = 1, beta = 1) 
{
    ret = ifelse(x <= 0 | t <= 0 | length(x) != length(t) | alpha <= 
        0 | beta <= 0, NaN, log((1 - pexpo.logistic(x, alpha = alpha, 
        beta = beta))/(1 - pexpo.logistic(x + t, alpha = alpha, 
        beta = beta))))
    return(ret)
  }
}
\keyword{Exponentiated logistic distribution}
