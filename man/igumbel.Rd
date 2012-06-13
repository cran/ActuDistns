\name{igumbel}
\alias{igumbel}
\title{Gumbel integrated hazard rate function}
\description{Computes the integrated hazard rate function of the Gumbel distribution}
\usage{
igumbel(x, t = 1, mu = 1, sigma = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{mu}{the value of mu parameter, can be any real}
  \item{sigma}{the value of sigma parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{reliaR}.}

\examples{x=runif(10,min=0,max=1)
y=igumbel(x)

## The function is currently defined as
function (x, t = 1, mu = 1, sigma = 1) 
{
    ret = ifelse(length(x) != length(t) | sigma <= 0, NaN, -log((1 - 
        pgumbel(x + t, mu = mu, sigma = sigma))/(1 - pgumbel(x, 
        mu = mu, sigma = sigma))))
    return(ret)
  }
}
\keyword{Gumbel distribution}
