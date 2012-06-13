\name{qloglogis}
\alias{qloglogis}
\title{Log-logistic quantile function}
\description{Computes the quantile function of the log-logistic distribution}
\usage{
qloglogis(x, u = 0.5, alpha = 1, sigma = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{alpha}{the value of alpha parameter, can be any real}
  \item{sigma}{the value of sigma parameter, can be any real}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=2,max=3)
y=qloglogis(x)

## The function is currently defined as
function (x, u = 0.5, alpha = 1, sigma = 1) 
{
    ret = ifelse(x <= 0 | u <= 0 | u >= 1 | length(x) != length(u), 
        NaN, exp(exp(-sigma) * (log((1/u) * (1 + exp(alpha) * 
            x^(exp(sigma))) - 1) - alpha) - x))
    return(ret)
  }
}
\keyword{Log-logistic distribution}
