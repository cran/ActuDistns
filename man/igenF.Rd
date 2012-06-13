\name{igenF}
\alias{igenF}
\title{Generalized F integrated hazard rate function}
\description{Computes the integrated hazard rate function of the generalized F distribution}
\usage{
igenF(x, t = 1, beta = 0, sigma = 1, m1 = 1, m2 = 1)
}
\arguments{
  \item{x}{scale or vector of positive values at which the integrated hazard rate function needs to be computed}
  \item{t}{scale or vector of positive values at which the integrated hazard rate function needs to be computed, must be of the same length as \code{x}}
  \item{beta}{the value of beta parameter, must be positive}
  \item{sigma}{the value of sigma parameter, must be positive}
  \item{m1}{the value of m1 parameter, must be positive}
  \item{m2}{the value of m2 parameter, must be positive}
}
\value{An object of the same length as \code{x}, giving the hazard rate function values computed at \code{x} and \code{t}}
\references{S. Nadarajah, S. A. A. Bakar, Tabulations of survival models for actuarial use, submitted}
\author{Saralees Nadarajah}
\note{If incorrect values or inconsistent lengths are input for \code{x},
\code{t} or the model parameters then NaNs will be returned as the output.
This function uses the \code{R} contributed package \code{flexsurv}.}

\examples{x=runif(10,min=0,max=1)
#y=igenF(x)

## The function is currently defined as
function(x,t=1,beta=0,sigma=1,m1=1,m2=1)
{
    ret	= ifelse(x<=0 | t<=0 | length(x)!=length(t)
           | sigma<=0 | m1<=0 | m2<=0,
           NaN,log((1-pgenf.orig(x,mu=beta,sigma=sigma,s1=m1,s2=m2))
           /(1-pgenf.orig(x+t,mu=beta,sigma=sigma,s1=m1,s2=m2))))
	return(ret)
    }
}
\keyword{generalized F distribution}
