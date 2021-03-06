\name{subsetString}
\alias{subsetString}
\title{Extract only part of a string}
\usage{
  subsetString(string, sep = " ", position = 3)
}
\arguments{
  \item{string}{a vector of strings}

  \item{sep}{the separator that separates the parts of the
  strings}

  \item{position}{the position of the element you wish to
  extract}
}
\value{
  the element the user wishes to extract
}
\description{
  Extract only part of a string, given a separator
}
\details{
  Given a string with a separator (e.g., "Subject 001",
  where the separator is a space), this function can be
  used to extract only whatever follows the separator (in
  this case, "001"). It is often used when data comes in
  with a conglomorated identifier (such as
  case-matchNumber-drawNumber-Month).
}
\examples{
barcode = c("Case-001-B", "Control-001-A", "Case-002-A")
subsetString(barcode, sep="-", position=2)
subsetString(barcode, sep="-", position=3)
}
\author{
  Dustin Fife
}

