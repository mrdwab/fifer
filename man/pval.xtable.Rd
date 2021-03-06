\name{pval.xtable}
\alias{p.val.xtable}
\alias{p.value}
\alias{p.values}
\alias{p.xtable}
\alias{pval.xtable}
\title{Convert p-values into strings with inequalities.}
\usage{
  pval.xtable(p.values, round.digits = 4,
    threshold = 1e-04, scipen = FALSE)
}
\arguments{
  \item{p.values}{A vector (or scalar) of p-values.}

  \item{round.digits}{How many digits should the decimals
  be rounded to during display?}

  \item{threshold}{The threshold for the inequalities. This
  value with then be joined with the inequality via
  \code{paste}. (e.g., threshold = .01 becomes "<.01")}

  \item{scipen}{Should scientific notation be used?
  Defaults to zero. (Note: it will not entirely suppress
  scientific notation, but will make it so extreme it will
  likely never happen).}
}
\value{
  A vector of strings yielding the formatted p-values
}
\description{
  Often times the p values are so small they must either be
  expressed with bajillions of digits, or in scientific
  notation. It is common to simply state that p<.0001, or
  something of the sort. This function takes a vector of
  p-values and converts them into characters so they can be
  expressed with inequalities.
}
\examples{
p.values = runif(100,0,1)
pval.xtable(p.values, round.digits=2, threshold=.01)
pval.xtable
}
\author{
  Dustin Fife
}

