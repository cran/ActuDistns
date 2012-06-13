\name{qgumbeld}
\alias{qgumbeld}
\title{Gumbel quantile function}
\description{Computes the quantile function of the Gumbel distribution}
\usage{
qgumbeld(x, u = 0.5, mu = 1, sigma = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{mu}{the value of mu parameter, can be any real}
  \item{sigma}{the value of sigma parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{reliaR}.}

\examples{x=runif(10,min=0,max=1)
y=qgumbeld(x)

## The function is currently defined as
function (x, u = 0.5, mu = 1, sigma = 1) 
{
    ret = ifelse(x <= 0 | u <= 0 | u >= 1 | length(x) != length(u) | 
        sigma <= 0, NaN, qgumbel(1 - u * (1 - pgumbel(x, mu = mu, 
        sigma = sigma)), mu = mu, sigma = sigma) - x)
    return(ret)
  }
}
\keyword{Gumbel distribution}
