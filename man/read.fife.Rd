\name{read.fife}
\alias{read.fife}
\alias{read.fifer}
\alias{read.meta}
\alias{read.meta.data}
\alias{read.metadata}
\title{Read in a dataset and load the meta-data for a file}
\usage{
  read.fife(file, file.type = ".csv", ...)
}
\arguments{
  \item{file}{The location of the file to be read.}

  \item{file.type}{The extension of the dataset. Defaults
  to .csv.}

  \item{...}{other arguments passed to to
  \code{\link{read.csv}}}
}
\value{
  An R object containing the subsetted dataset. Also, an
  object called \code{original.file} will be loaded into
  the R environment that contains a string of the original
  file location
}
\description{
  Oftentimes the original data matrix is too large to
  practically read in everytime you want to do analysis.
  This often means creating a separate file for analysis.
  Unfortunately, if the original file is changed, the
  separate file doesn't reflect those changes.
  \code{read.fife} and \code{\link{write.fife}} both read
  and write meta-data, then display the original file name
  for the meta data.
}
\details{
  Technically, \code{read.fife} and
  \code{\link{write.fife}} don't actually read and write
  meta-data. Instead, they create (or read) a separate file
  that has the same name (though different extension) than
  the subsetted dataset. The extension of the meta data
  file is .file.
}
\author{
  Dustin Fife
}
\seealso{
  \code{\link{write.fife}}
}

