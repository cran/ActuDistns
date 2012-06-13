\name{ijshape}
\alias{ijshape}
\title{J-shaped integrated hazard rate function}
\description{Computes the integrated hazard rate function of the J-shaped distribution}
\usage{
ijshape(x, t = 1, b = 1, nu = 1)
}
\arguments{
  \item{x}{scale or vector of values at which the integrated hazard rate function needs to be computed, values are positive and bounded below by b}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{b}{the value of b parameter, must be positive}
  \item{nu}{the value of nu parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=ijshape(x)

## The function is currently defined as
function (x, t = 1, b = 1, nu = 1) 
{
    y1 = 1 - x/b
    y2 = 1 - (x + t)/b
    ret = ifelse(y1 <= 0 | y1 >= 1 | t <= 0 | t >= b | length(x) != 
        length(t) | b <= 0 | nu <= 0, NaN, log((1 - (1 - y1 * 
        y1)^nu)/(1 - (1 - y2 * y2)^nu)))
    return(ret)
  }
}
\keyword{J-shaped distribution}
