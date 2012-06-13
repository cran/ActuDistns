\name{iuniform}
\alias{iuniform}
\title{Uniform integrated hazard rate function}
\description{Computes the integrated hazard rate function of the uniform distribution}
\usage{
iuniform(x, t = 1, a = 0, b = 1)
}
\arguments{
  \item{x}{scale or vector of values at which the integrated hazard rate function needs to be computed, values must be between a and b}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{a}{the value of a parameter, must be positive}
  \item{b}{the value of b parameter, must be greater than a}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=iuniform(x)
}
\keyword{Uniform distribution}
