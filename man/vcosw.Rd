\name{vcosw}
\alias{vcosw}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Cosine of the angle between two vectors
}
\description{
The function calculates the cosine of the angle between two vectors, defined as the inner product of the vectors divided by the product of their euclidean norms
}
\usage{
vcosw(v, w)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{v}{
a vector
}
  \item{w}{
a vector, of the same length of \code{v}
}
}
\value{
The cosine of the angle between the two vectors
}
\author{
Alessandro Barbiero, Giancarlo Manzi, Pier Alda Ferrari
}
\seealso{
Ferrari P.A., Annoni P., Barbiero A., Manzi G. (2011) An imputation method for categorical variables with application to nonlinear principal component analysis,
Computational Statistics & Data Analysis, vol. 55, issue 7, pages 2410-2420, \url{http://www.sciencedirect.com/science/article/pii/S0167947311000521}
}
\examples{
a<-1:10
b<-2:11
vcosw(a,b)
#
e<-c(1,2,3)
f<-c(3,-3,1)
vcosw(e,f)
# e and f are orthogonal vectors!
}
\keyword{datagen}
\keyword{multivariate}% __ONLY ONE__ keyword per line
