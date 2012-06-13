\name{haddweibull}
\alias{haddweibull}
\title{Additive Weibull hazard rate function}
\description{Computes the hazard rate function of the additive Weibull distribution}
\usage{
haddweibull(x, a = 1, b = 1, c = 1, d = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the hazard rate function needs to be computed}
  \item{a}{the value of a parameter (the first scale parameter), must be positive}
  \item{b}{the value of b parameter (the first shape parameter), must be positive}
  \item{c}{the value of c parameter (the second scale parameter), must be positive}
  \item{d}{the value of d parameter (the second shape parameter), must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=haddweibull(x)
}
\keyword{Additive Weibull}
