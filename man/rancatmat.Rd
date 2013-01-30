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
\keyword{datagen}
\keyword{multivariate}% __ONLY ONE__ keyword per line
