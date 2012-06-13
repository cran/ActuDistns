\name{hgpw}
\alias{hgpw}
\title{Generalized power Weibull hazard rate function}
\description{Computes the hazard rate function of the generalized power Weibull distribution}
\usage{
hgpw(x, alpha = 1, theta = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the hazard rate function needs to be computed}
  \item{alpha}{the value of alpha parameter, must be positive}
  \item{theta}{the value of theta parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=hgpw(x)
}
\keyword{Generalized power Weibull distribution}
