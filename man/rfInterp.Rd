\name{rfInterp}
\alias{rfInterp}
\title{Variable Selection with Random Forest}
\usage{
  rfInterp(object, nruns = 20, nsd = 1,
    importance = "permutation", ...)
}
\arguments{
  \item{object}{a rfThresh object}

  \item{nruns}{how many forests should be grown?}

  \item{nsd}{defaults to one.}

  \item{importance}{method of calculating importance
  (permutation or gini)}

  \item{...}{other arguments passed to
  \code{\link{cforest}} or \code{\link{randomForest}}}
}
\value{
  \item{varselect.interp}{The variables selected for
  Interpretation (sorted)}

  \item{err.interp}{The error at each stage of the stepwise
  variable inclusion.}

  \item{sd.min}{The standard deviation of the minimum
  fitted value.}

  \item{num.varselect.interp}{The number of variables
  selected for interpretation.}

  \item{comput.time}{Computation time of the procedure.}

  \item{data}{The dataset used for fitting the RF
  algorithm}

  \item{formula}{The formula of all variables included
  after the interpretation step.}
}
\description{
  Find best variables using Random Forest (Interpretation
  Step). Find complete documentation at
  \code{\link{rfThresh}}
}
\examples{
#### do threshold step
\dontrun{data(iris);
data = iris;
formula = as.formula("Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width")
object = rfThresh(formula, data=iris, nruns=2, importance="gini");
	#### run interpretation step
rfInterp(object, nruns=10, importance="permutation")}
}
\author{
  Robin Genuer, Jean-Michel Poggi and Christine
  Tuleau-Malot, with modifications by Dustin Fife
}
\seealso{
  \code{\link{rfInterp}}, \code{\link{rfPred}}
}

