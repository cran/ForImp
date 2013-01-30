\name{ld}
\alias{ld}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Listwise deletion
}
\description{
Listwise deletion
}
\usage{
ld(mat)
}
\arguments{
  \item{mat}{
a matrix or a dataframe
}
}
\details{
This function implements the listwise deletion on a given dataset, removing all the rows or units containing at least one missing value
}
\value{
The matrix/dataframe in input with the rows/units with missing values removed
}
\author{
Alessandro Barbiero, Giancarlo Manzi, Pier Alda Ferrari
}
\seealso{
\code{\link{meanimp}}, \code{\link{modeimp}}, \code{\link{medianimp}}
}
\examples{
n<-10
m<-4
mat<-matrix(rnorm(n*m),n,m)
mat[c(3,6),1]<-NA
mat[10,2]<-NA
mat
ld(mat)
}

\keyword{datagen}
\keyword{multivariate}% __ONLY ONE__ keyword per line

