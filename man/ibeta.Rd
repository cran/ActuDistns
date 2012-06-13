\name{ibeta}
\alias{ibeta}
\title{Beta integrated hazard rate function}
\description{Computes the integrated hazard rate function of the beta distribution}
\usage{
ibeta(x, t = 1, a = 1, b = 1)
}
\arguments{
  \item{x}{scale or vector of values at which the integrated hazard rate function needs to be computed, values must be in the unit interval}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{a}{the value of b parameter, must be positive}
  \item{b}{the value of nu parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=ibeta(x)
}
\keyword{Beta distribution}
