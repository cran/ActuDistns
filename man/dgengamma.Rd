\name{dgengammad}
\alias{dgengammad}
\title{Generalized gamma pdf}
\description{Computes the pdf of the generalized gamma distribution}
\usage{
dgengammad(x, b = 1, d = 1, k = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the pdf needs to be computed}
  \item{b}{the value of b parameter, must be positive}
  \item{d}{the value of d parameter, must be positive}
  \item{k}{the value of k parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{VGAM}.}

\examples{x=runif(10,min=0,max=1)
y=dgengammad(x)
}
\keyword{Generalized gamma distribution}
