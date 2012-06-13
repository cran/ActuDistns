\name{qjshape}
\alias{qjshape}
\title{J-shaped quantile function}
\description{Computes the quantile function of the J-shaped distribution}
\usage{
qjshape(x, u = 0.5, b = 1, nu = 1)
}
\arguments{
  \item{x}{scale or vector of values at which the integrated hazard rate function needs to be computed, values are positive and bounded below by b}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{b}{the value of b parameter, must be positive}
  \item{nu}{the value of nu parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=qjshape(x)

## The function is currently defined as
function (x, u = 0.5, b = 1, nu = 1) 
{
    y = 1 - x/b
    ret = ifelse(y <= 0 | y >= 1 | u <= 0 | u >= 1 | length(x) != 
        length(u) | b <= 0 | nu <= 0, NaN, b * (1 - (1 - (1 - 
        u * (1 - (1 - y * y)^nu))^(1/nu))^(1/2)) - x)
    return(ret)
  }
}
\keyword{J-shaped distribution}
