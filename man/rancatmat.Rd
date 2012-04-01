\name{rancatmat}
\alias{rancatmat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generating a random matrix of ordinal variables
}
\description{
The function generates a random matrix of integer (ordinal) variables, with independent and uniform marginal distributions
}
\usage{
rancatmat(n, m, cat = 3)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
number of rows/units
}
  \item{m}{
number of columns, variables
}
  \item{cat}{
number of categories for each variable
}
}
\details{
The function generates a random matrix of integer (ordinal) variables (coded with 1, 2, 3...), with independent and uniform marginal distributions
}
\value{
a matrix of ordinal values
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{
Alessandro Barbiero, Giancarlo Manzi, Pieralda Ferrari
}
\seealso{
\code{\link{transfmatcat}}
}
\examples{
n<-500
m<-3
mat<-rancatmat(n,m,c(3,4,5))
# let's check the marginal distributions...
apply(mat,2,tabulate)
#... should be "quite" uniform
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{datagen}
\keyword{multivariate}% __ONLY ONE__ keyword per line
