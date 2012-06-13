\name{dschabe}
\alias{dschabe}
\title{Schabe pdf}
\description{Computes the pdf of the Schabe distribution}
\usage{
dschabe(x, theta = 1, gamma = 0.5)
}
\arguments{
  \item{x}{scale or vector of values at which the pdf needs to be computed, must be positive and less than theta}
  \item{theta}{the value of theta parameter, must be positive}
  \item{gamma}{the value of gamma parameter, must be between zero and one}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=dschabe(x)
}
\keyword{Schabe distribution}
