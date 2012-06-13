\name{dexponential}
\alias{dexponential}
\title{Exponential pdf}
\description{Computes the pdf of the exponential distribution}
\usage{
dexponential(x, alpha = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the pdf needs to be computed}
  \item{alpha}{the value of alpha parameter, can be any real}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=dexponential(x)

## The function is currently defined as
function (x, alpha = 1) 
{
    ret = ifelse(x <= 0, NaN, exp(alpha) * exp(-exp(alpha) * 
        x))
    return(ret)
  }
}
\keyword{Exponential distribution}
