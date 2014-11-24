\name{missingmat}
\alias{missingmat}
\title{
Random generation of missing values
}
\description{
Random generation of missing values in matrices of numerical data or preferably categorical data coded as integers
}
\usage{
missingmat(mat, nummissing, pattern =  "r", nk = 1, p = 0.1, w = 3)
}
\arguments{
  \item{mat}{
A matrix of numerical values
}
  \item{nummissing}{
number of missing values
}
  \item{pattern}{
pattern of missing values ("r" random, "l" lowest value, "b" block, "n" not at random)
}
  \item{nk}{
category
}
  \item{p}{
percentage of missing values
}
  \item{w}{
weight for the lowest category in pps sampling (pattern "n")
}
}
\details{
The function generates random missing values on a matrix of categorical data according to a specific pattern.
"r" is the random pattern, "l" generates a percentage \code{p} of missing values on the lowest values of variable \code{nk},
"b" generates random blocks of missing values on the group of variables indexed by \code{nk},
"n" generates a kind of not at random missing values: specifically, lowest values are more
likely to be missing, since they are assigned a weight \code{w} (greater than 1, the default is 3)
and the values are sampled according to an unequal probability sampling design (pivotal, see the reference for more details)
}
\value{
The original matrix with the desired number of values randomly substituted by missing values
}
\references{
Ferrari P.A., Annoni P., Barbiero A., Manzi G. (2011) An imputation method for categorical variables with application to nonlinear principal component analysis,
Computational Statistics & Data Analysis, vol. 55, issue 7, pages 2410-2420, \url{http://www.sciencedirect.com/science/article/pii/S0167947311000521}
}
\author{
Alessandro Barbiero, Giancarlo Manzi, Pier Alda Ferrari
}
\examples{
set.seed(1)
# correlation matrix
sigma<-matrix(c(1,0.5,0.5,0.5,0.5,1,0.5,0.5,0.5,0.5,1,0.5,0.5,0.5,0.5,1),4,4)
# generate a n*m matrix from a multivariate normal
n<-500
m<-4
matc<-rmvnorm(n, mean=rep(0,m), sigma=sigma)
# transform the numerical values into ordinal categories (Likert scale)
# obtaining matrix mato
mato<-transfmatcat(matc,c(2,3,4,5))
# set the number of desired missing values
nummissing<-150
# create the random missing values
# random missing values
matc<-missingmat(mato, nummissing, pattern= "r")
matc
# random blocks of missing values on variables 1,2 and 3
matc<-missingmat(mato, nummissing, pattern= "b", nk=c(2,3))
matc
# missing values on lowest category of variable 4
matl<-missingmat(mato, nummissing, pattern= "l", nk=4, p=0.1)
matl
# not at random missing values on variable 4
matn<-missingmat(mato, nummissing, pattern= "n", nk=4, w=4)
matn
}
\keyword{datagen}
\keyword{multivariate}% __ONLY ONE__ keyword per line
