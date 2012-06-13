\name{dlgammad}
\alias{dlgammad}
\title{Log gamma pdf}
\description{Computes the pdf of the log gamma distribution}
\usage{
dlgammad(x, alpha = 1, lambda = 1)
}
\arguments{
  \item{x}{scale or vector of values greater than one at which the pdf needs to be computed}
  \item{alpha}{the value of alpha parameter, must be positive}
  \item{lambda}{the value of lambda parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the pdf values computed at \code{x}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values are input for \code{x} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{actuar}.}

\examples{x=runif(10,min=2,max=3)
y=dlgammad(x)
}
\keyword{Log gamma distribution}
