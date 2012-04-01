\name{medianimp}
\alias{medianimp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Median imputation
}
\description{
Median imputation}
\usage{
medianimp(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{
A matrix of ordinal values , ordered according to the Likert scale (1, 2, 3,...)
}
}
\details{
The function implements the median imputation on a matrix of ordinal data with missing values.
The function substitutes to each missing value the median of the corresponding variable.
}
\value{
The imputed matrix
}

\author{
Alessandro Barbiero, Giancarlo Manzi, Pier Alda Ferrari
}

\seealso{
\code{\link{modeimp}}, \code{\link{meanimp}}
}
\examples{
set.seed(1)
n<-10
m<-3
mat<-matrix(ceiling(runif(n*m)*4),n,m)
matm<-mat
matm[1,3]<-NA
matm[9:10,1]<-NA
# matrix with missing values
matm
# imputed matrix
medianimp(matm)
# original matrix with no missing values
mat
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{datagen}
\keyword{multivariate}% __ONLY ONE__ keyword per line
