\name{ilr}
\alias{ilr}
\title{Logistic Rayleigh integrated hazard rate function}
\description{Computes the integrated hazard rate function of the logistic Rayleigh distribution}
\usage{
ilr(x, t = 1, alpha = 1, lambda = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{alpha}{the value of alpha parameter, must be positive}
  \item{lambda}{the value of lambda parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{reliaR}.}

\examples{x=runif(10,min=0,max=1)
y=ilr(x)
}
\keyword{Logistic Rayleigh distribution}
