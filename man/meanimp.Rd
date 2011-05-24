\name{meanimp}
\alias{meanimp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Mean imputation
}
\description{
Mean imputation}
\usage{
meanimp(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{
A numerical matrix
}
}
\details{
The function implements the unconditional mean imputation on a numerical matrix with missing values, substituting to each missing value the arithmetic mean of the corresponding variable
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
\author{
Alessandro Barbiero, Giancarlo Manzi, Pier Alda Ferrari
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{modeimp}}, \code{\link{medianimp}}
}
\examples{
set.seed(1)
n<-10
m<-3
mat<-matrix(rnorm(n*m),n,m)
matm<-mat
matm[1,1]<-NA
matm[2,2:3]<-NA
# matrix with missing values
matm
# imputed matrix
meanimp(mat)
# original matrix with no missing values
mat
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{datagen}
\keyword{multivariate}% __ONLY ONE__ keyword per line
