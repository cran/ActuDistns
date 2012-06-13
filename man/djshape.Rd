\name{djshape}
\alias{djshape}
\title{J-shaped pdf}
\description{Computes the pdf of the J-shaped distribution}
\usage{
djshape(x, b = 1, nu = 1)
}
\arguments{
  \item{x}{scale or vector of values at which the pdf needs to be computed, values are positive and bounded below by b}
  \item{b}{the value of b parameter, must be positive}
  \item{nu}{the value of nu parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=0,max=1)
y=djshape(x)
}
\keyword{J-shaped distribution}
