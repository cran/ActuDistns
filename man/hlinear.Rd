\name{hlinear}
\alias{hlinear}
\title{Linear failure rate hazard rate function}
\description{Computes the hazard rate function of the linear failure rate distribution}
\usage{
hlinear(x, a = 1, b = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the hazard rate function needs to be computed}
  \item{a}{the value of a parameter, must be non-negative but both a and b cannot be zero}
  \item{b}{the value of b parameter, must be non-negative but both a and b cannot be zero}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=hlinear(x)
}
\keyword{Linear failure rate distribution}
