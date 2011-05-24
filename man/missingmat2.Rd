\name{missingmat2}
\alias{missingmat2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Random generation of missing values
}
\description{
Random generation of missing values in matrices
}
\usage{
missingmat2(mat, missing)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{
a matrix (n rows, m columns)
}
  \item{missing}{
a vector: element i contains the desired number of rows with i missing values (1<=i<=m)
}
}
\details{
}
\value{
a matrix with the specified pattern of missing values
}
\references{
}
\author{
Alessandro Barbiero, Giancarlo Manzi, Pier Alda Ferrari
}
\note{
}


\seealso{
\code{\link{missingmat}},\code{\link{missingness}}
}
\examples{
mat<-matrix(rnorm(500),100,5)
# if you want 20 rows with 1 missing, 10 rows with 2 missing, 4 rows with 3 missing, 1 row with 4 missing
missing<-c(20,10,4,1)
matm<-missingmat2(mat, missing)
matm
# check that the function works
missingness(matm)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{multivariate}
\keyword{datagen}% __ONLY ONE__ keyword per line