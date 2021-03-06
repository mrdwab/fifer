\name{demographics}
\alias{demographics}
\title{Summarize a Data Set (Demographics)}
\usage{
  demographics(formula, data, latex = TRUE,
    na.action = na.pass, ...)
}
\arguments{
  \item{formula}{A \code{\link[stats]{formula}}, with the
  left-hand side being empty or a group variable to
  summarize by. The right-hand side should include
  variables to summarize by; they should be either
  continuous variables or factors/characters.}

  \item{data}{A \code{\link{data.frame}} where the
  variables in \code{formula} come from; if not specified,
  variables are looked for in the parent environment.}

  \item{latex}{A \link{logical} variable that determines
  whether the resulting output will be part of a LaTeX
  document. Defaults to \code{TRUE}.}

  \item{na.action}{A function to handle missing data. See
  \code{\link[stats]{na.pass}}.}

  \item{...}{Additional arguments passed to
  \link{SummarizeVar}, such as \code{decimalFactor},
  \code{decimalContinuous},
  \code{ContinuousSummaryFunction}, and
  \code{FactorSummaryFunction}.}
}
\value{
  A matrix to be used with \code{\link[xtable]{xtable}},
  which in turn should be used in
  \code{\link[xtable]{print.xtable}}.
}
\description{
  Creates a summary table of a data set in a matrix object
  for pretty printing via \code{\link[xtable]{xtable}}.
}
\details{
  This is generally used to create demographics table and
  used with the package \link[xtable]{xtable} to print. To
  get proper names to display, a \code{data.frame} should
  be constructed such that the variable names are what the
  users want to be displayed. For \code{factor} variables,
  the user should make use of the \code{levels} and
  \code{labels} arguments in \code{\link{factor}}.
}
\examples{
set.seed(1)
n <- 50
df <- data.frame(trt=sample(0:1, 2*n, replace=TRUE), x1=runif(2*n), x2=rnorm(2*n),
   x3=sample(c("a", "b", "c"), 2*n, replace=TRUE))
demographics(~x1+x2+x3, data=df)
demographics(trt~x1+x2+x3, data=df)
demographics(~., data=df)
demographics(trt~., data=df, decimalFactor=2)
\dontrun{print(xtable(Summarize(trt~., data=df)), sanitize.text.function=identity)}
}
\author{
  Vinh Nguyen
}

