\name{modeimp}
\alias{modeimp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Mode imputation
}
\description{
Mode imputation}
\usage{
modeimp(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{
A matrix of categorical or ordinal values, coded as integer values (1, 2, 3, ...)
}
}
\details{
The function implements the mode imputation on a matrix of categorical or ordinal data with missing values.
The function substitutes to each missing value the mode of the corresponding variable.
}
\value{
The imputed matrix
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{Alessandro barbiero, Giancarlo Manzi, Pier Alda Ferrari 
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{medianimp}}, \code{\link{modeimp}}
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
modeimp(mat)
# original matrix with no missing values
mat
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{datagen}
\keyword{multivariate}% __ONLY ONE__ keyword per line
