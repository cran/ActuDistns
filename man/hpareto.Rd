\name{hpareto}
\alias{hpareto}
\title{Pareto hazard rate function}
\description{Computes the hazard rate function of the Pareto distribution}
\usage{
hpareto(x, alpha = 1, m = 1)
}
\arguments{
  \item{x}{scale or vector of values at which the hazard rate function needs to be computed, values must be greater than m}
  \item{alpha}{the value of alpha parameter, must be positive}
  \item{m}{the value of m parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=2,max=3)
y=hpareto(x)
}
\keyword{Pareto distribution}
