\name{missingmat2}
\alias{missingmat2}
\title{
Random generation of missing values
}
\description{
Random generation of missing values in matrices
}
\usage{
missingmat2(mat, missing)
}
\arguments{
  \item{mat}{
a matrix (n rows, m columns)
}
  \item{missing}{
a vector: element i contains the desired number of rows with i missing values (1<=i<=m)
}
}
\value{
a matrix with the specified pattern of missing values
}
\author{
Alessandro Barbiero, Giancarlo Manzi, Pier Alda Ferrari
}
\seealso{
\code{\link{missingmat}},\code{\link{missingness}}
}
\examples{
mat<-matrix(rnorm(500),100,5)
# if you want 20 rows with 1 missing, 10 rows with 2 missing,
# 4 rows with 3 missing, 1 row with 4 missing
missing<-c(20,10,4,1)
matm<-missingmat2(mat, missing)
matm
# check that the function works
missingness(matm)
}
\keyword{multivariate}
\keyword{datagen}% __ONLY ONE__ keyword per line
