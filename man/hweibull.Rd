\name{hweibull}
\alias{hweibull}
\title{Weibull hazard rate function}
\description{Computes the hazard rate function of the Weibull distribution}
\usage{
hweibull(x, alpha = 1, sigma = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the hazard rate function needs to be computed}
  \item{alpha}{the value of alpha parameter, must be positive}
  \item{sigma}{the value of sigma parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=hweibull(x)
}
\keyword{Weibull distribution}
