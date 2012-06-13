\name{qschabe}
\alias{qschabe}
\title{Schabe quantile function}
\description{Computes the quantile function of the Schabe distribution}
\usage{
qschabe(x, u = 0.5, theta = 1, gamma = 0.5)
}
\arguments{
  \item{x}{scale or vector of values at which the integrated hazard rate function needs to be computed, must be positive and less than theta}  
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{theta}{the value of theta parameter, must be positive}
  \item{gamma}{the value of gamma parameter, must be between zero and one}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=qschabe(x)
}
\keyword{Schabe distribution}
