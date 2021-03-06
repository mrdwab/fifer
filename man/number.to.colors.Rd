\name{number.to.colors}
\alias{integer.to.colors}
\alias{integers.to.colors}
\alias{number.to.color}
\alias{number.to.colors}
\alias{numberToColor}
\alias{numberToColors}
\alias{numbers.to.colors}
\title{Convert from numbers to colors}
\usage{
  number.to.colors(value, colors = c("red", "blue"),
    num = 100)
}
\arguments{
  \item{value}{a vector of numbers.}

  \item{colors}{a vector of two or more colors representing
  the inflection points of the gradients, passed to
  \code{\link{colorRampPalette}}.}

  \item{num}{The number of unique intervals for colors.
  Chose larger numbers for finer gradients (higher
  resolution).}
}
\value{
  a vector of colors.
}
\description{
  Automatically convert a vector of numbers into a color
  for easy plotting
}
\examples{
#### plot three variables, represent the third with a color
d = mvrnorm(100, mu=c(0,0,0), Sigma=matrix(c(1, .6, .6, .6, 1, .6, .6, .6, 1), ncol=3))
plot(d[,1:2], col=number.to.colors(d[,3], c("black", "pink")), pch=16)
}
\author{
  Dustin Fife
}
\seealso{
  \code{\link{string.to.colors}}
  \code{\link{colorRampPalette}}
  \code{\link{gradient.legend}}
}

