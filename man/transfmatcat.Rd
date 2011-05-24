\name{transfmatcat}
\alias{transfmatcat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Transforming a matrix of continuous values into a matrix of ordinal values
}
\description{
The function transforms a matrix of continuous numerical values into a matrix of integer (ordinal) values, with uniform marginal distributions and the desired number of categories
}
\usage{
transfmatcat(mat, cat = 3)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{
a matrix or a dataframe
}
  \item{cat}{
the number of categories, one for each column/variable of the matrix/dataframe
}
}
\details{
The function converts the matrix in input, containing continuous numerical values, into a matrix of
ordinal values (1,2,3,... i.e.: Likert scale) according to the \code{cat}-1 normal quantiles corresponding to each variable (column) of \code{mat}.
}
\value{
the matrix of ordinal values
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Ferrari P.A., Barbiero A., Manzi G.: Handling missing data in presence of ordinal variables: a new imputation procedure. In "New Perspectives in Statistical Modeling and Data Analysis", S. Ingrassia, R. Rocci, M. Vichi, Eds.,  Springer, 2011\cr

Ferrari P.A., Annoni P., Barbiero A., Manzi G. (2011) An imputation method for categorical variables with application to nonlinear principal component analysis,
Computational Statistics & Data Analysis, vol. 55, issue 7, pages 2410-2420, \url{http://www.sciencedirect.com/science/article/pii/S0167947311000521}
}
\author{
Alessandro Barbiero, Giancarlo Manzi, Pier Alda Ferrari
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{rancatmat}}
}
\examples{
# generate a 40*3 matrix from a multivariate normal r.v.
# whose independent components have mean 10 and standard deviation 4
mat<-matrix(rnorm(40,3),10,4)
# transform the matrix of normal data into a matrix of ordinal data
transfmatcat(mat, cat=c(2,3,4,3))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{datagen}
\keyword{multivariate}% __ONLY ONE__ keyword per line
