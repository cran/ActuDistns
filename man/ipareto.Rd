\name{ipareto}
\alias{ipareto}
\title{Pareto integrated hazard rate function}
\description{Computes the integrated hazard rate function of the Pareto distribution}
\usage{
ipareto(x, t = 1, alpha = 1, m = 1)
}
\arguments{
  \item{x}{scale or vector of values at which the integrated hazard rate function needs to be computed, values must be greater than m}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{alpha}{the value of alpha parameter, can be any real}
  \item{m}{the value of m parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.}

\examples{x=runif(10,min=2,max=3)
y=ipareto(x)

## The function is currently defined as
function (x, t = 1, alpha = 1, m = 1) 
{
    ret = ifelse(x <= m | t <= 0 | m <= 0 | length(x) != length(t), 
        NaN, exp(alpha) * log(1 + t/x))
    return(ret)
  }
}
\keyword{Pareto distribution}
