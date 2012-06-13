\name{dmow}
\alias{dmow}
\title{Marshall-Olkin Weibull pdf}
\description{Computes the pdf of the Marshall-Olkin Weibull distribution}
\usage{
dmow(x, alpha = 1, beta = 1, lambda = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the pdf needs to be computed}
  \item{alpha}{the value of alpha parameter, must be positive}
  \item{beta}{the value of beta parameter, must be positive}
  \item{lambda}{the value of lambda parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=dmow(x)
}
\keyword{Marshall-Olkin Weibull distribution}
