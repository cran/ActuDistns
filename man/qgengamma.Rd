\name{qgengammad}
\alias{qgengammad}
\title{Generalized gamma quantile function}
\description{Computes the quantile function of the generalized gamma distribution}
\usage{
qgengammad(x, u = 0.5, b = 1, d = 1, k = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{u}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{b}{the value of b parameter, must be positive}
  \item{d}{the value of d parameter, must be positive}
  \item{k}{the value of k parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{u}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{u} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=2,max=3)
y=qgengammad(x)
}
\keyword{Generalized gamma distribution}
