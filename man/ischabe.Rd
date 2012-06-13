\name{ischabe}
\alias{ischabe}
\title{Schabe integrated hazard rate function}
\description{Computes the integrated hazard rate function of the Schabe distribution}
\usage{
ischabe(x, t = 1, theta = 1, gamma = 0.5)
}
\arguments{
  \item{x}{scale or vector of values at which the integrated hazard rate function needs to be computed, must be positive and less than theta}  
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{theta}{the value of theta parameter, must be positive}
  \item{gamma}{the value of gamma parameter, must be between zero and one}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=ischabe(x)

## The function is currently defined as
function (x, t = 1, theta = 1, gamma = 0.5) 
{
    ret = ifelse(x > theta | t > theta | length(x) != length(t) | 
        theta <= 0 | gamma <= 0 | gamma >= 1, NaN, log(1 + t/(theta * 
        gamma + x)) - log(1 - t/(theta - x)))
    return(ret)
  }
}
\keyword{Schabe distribution}
