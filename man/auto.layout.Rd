\name{auto.layout}
\alias{auto.layout}
\title{Automatically select the layout.}
\usage{
  auto.layout(n, layout = T)
}
\arguments{
  \item{n}{the number of plots}

  \item{layout}{should the fuction return a preallocated
  layout object? If \code{FALSE}, it returns a matrix}
}
\value{
  either a matrix or a layout object
}
\description{
  Given a particular number of plots, \code{auto.layout}
  will automatically determine the arrangement of each plot
  using the \code{layout} function. See examples.
}
\examples{
## plot six plots
auto.layout(6)
for (i in 1:6){
	plot(rnorm(100), rnorm(100))
}
## same as mar(mfrow=c(3,2))
par(mfrow=c(3,2))
for (i in 1:6){
	plot(rnorm(100), rnorm(100))
}
## default for odd number of plots using mfrow looks terrible
par(mfrow=c(3,2))
for (i in 1:5){
	plot(rnorm(100), rnorm(100))
}
## much better with auto.layout
auto.layout(5)
for (i in 1:5){
	plot(rnorm(100), rnorm(100))
}
}
\author{
  Dustin Fife
}

