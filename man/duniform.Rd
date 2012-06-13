\name{duniform}
\alias{duniform}
\title{Uniform pdf}
\description{Computes the pdf of the uniform distribution}
\usage{
duniform(x, a = 1, b = 2)
}
\arguments{
  \item{x}{scale or vector of values at which the pdf needs to be computed, values must be between a and b}
  \item{a}{the value of a parameter, must be positive}
  \item{b}{the value of b parameter, must be greater than a}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=1,max=2)
y=duniform(x)
}
\keyword{Uniform distribution}
