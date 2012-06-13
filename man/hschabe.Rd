\name{hschabe}
\alias{hschabe}
\title{Schabe hazard rate function}
\description{Computes the hazard rate function of the Schabe distribution}
\usage{
hschabe(x, theta = 1, gamma = 0.5)
}
\arguments{
  \item{x}{scale or vector of values at which the hazard rate function needs to be computed, must be positive and less than theta}
  \item{theta}{the value of theta parameter, must be positive}
  \item{gamma}{the value of gamma parameter, must be between zero and one}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=hschabe(x)
}
\keyword{Schabe distribution}
