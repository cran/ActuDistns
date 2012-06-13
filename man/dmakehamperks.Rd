\name{dmakehamperks}
\alias{dmakehamperks}
\title{Makeham-Perks pdf}
\description{Computes the pdf of the Makeham-Perks distribution}
\usage{
dmakehamperks(x, alpha = 1, beta = 1, epsilon = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the pdf needs to be computed}
  \item{alpha}{the value of alpha parameter, can be any real}
  \item{beta}{the value of beta parameter, must be positive}
  \item{epsilon}{the value of epsilon parameter, can be any real}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=dmakehamperks(x)

## The function is currently defined as
function (x, alpha = 1, beta = 1, epsilon = 1) 
{
    ret = NaN
    if (x > 0 & beta > 0) {
        m = length(x)
        y = x
        for (i in 1:m) {
            y[i] = integrate(hmakehamperks, lower = 0, upper = x[i])$value
        }
        ret = exp(-y) * hmakehamperks(x, alpha = 1, beta = 1, 
            epsilon = 1)
    }
    return(ret)
  }
}
\keyword{Makeham-Perks distribution}
