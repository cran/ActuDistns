\name{qpareto}
\alias{qpareto}
\title{Pareto quantile function}
\description{Computes the quantile function of the Pareto distribution}
\usage{
qpareto(x, u = 0.5, alpha = 1, m = 1)
}
\arguments{
  \item{x}{scale or vector of values at which the integrated hazard rate function needs to be computed, values must be greater than m}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{alpha}{the value of alpha parameter, must be positive}
  \item{m}{the value of m parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=2,max=3)
y=qpareto(x)
}
\keyword{Pareto distribution}
