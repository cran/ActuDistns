\name{hgumbel}
\alias{hgumbel}
\title{Gumbel hazard rate function}
\description{Computes the hazard rate function of the Gumbel distribution}
\usage{
hgumbel(x, mu = 1, sigma = 1)
}
\arguments{
  \item{x}{scale or vector of any real values at which the hazard rate function needs to be computed}
  \item{mu}{the value of mu parameter, can be any real}
  \item{sigma}{the value of sigma parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{reliaR}.}

\examples{x=runif(10,min=0,max=1)
y=hgumbel(x)

## The function is currently defined as
function (x, mu = 1, sigma = 1) 
{
    ret = ifelse(sigma <= 0, NaN, dgumbel(x, mu = mu, sigma = sigma)/(1 - 
        pgumbel(x, mu = mu, sigma = sigma)))
    return(ret)
  }
}
\keyword{Gumbel distribution}
