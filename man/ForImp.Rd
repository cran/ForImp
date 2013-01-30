\name{ForImp}
\alias{ForImp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Forward Imputation procedure
}
\description{
Forward Imputation of missing data
}
\usage{
ForImp(mat, p=2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{
a matrix/dataframe
}
  \item{p}{
the parameter for computing the Minkowski distance used in the nearest neighbor procedure for missing value imputation.
\code{p} can be any positive number (\code{p}=2 gives the euclidean distance); if a negative number or Inf is entered,
the procedure will use the maximum distance (or supremum norm)
}
}
\details{
The function implements the Forward Imputation algorithm (see reference) on a matrix of ordinal data with missing values.
The algorithm alternates NonLinear Principal Component Analysis (NLPCA) on a subset of the data with no missing data and sequential imputations of missing values by the nearest neighbor method.
This sequential process starts from the units with the lowest number of missing values and ends with the units with the highest number of missing values.
}
\value{
the imputed matrix
}
\references{
Ferrari P.A., Annoni P., Barbiero A., Manzi G. (2011) An imputation method for categorical variables with application to nonlinear principal component analysis,
Computational Statistics & Data Analysis, vol. 55, issue 7, pages 2410-2420\cr
\url{http://ideas.repec.org/a/eee/csdana/v55y2011i7p2410-2420.html}\cr
\url{http://www.sciencedirect.com/science/article/pii/S0167947311000521}

Ferrari P.A., Barbiero A., Manzi G.: Handling missing data in presence of ordinal variables: a new imputation procedure. In "New Perspectives in Statistical Modeling and Data Analysis", S. Ingrassia, R. Rocci, M. Vichi, Eds.,  Springer, 2011\cr
}
\author{
Alessandro Barbiero, Giancarlo Manzi, Pier Alda Ferrari
}
\seealso{
\code{\link{modeimp}}, \code{\link{medianimp}}, \code{\link{meanimp}}
}
\examples{
set.seed(1)
# correlation matrix
sigma<-matrix(c(1,0.5,0.5,0.5,0.5,1,0.5,0.5,0.5,0.5,1,0.5,0.5,0.5,0.5,1),4,4)
# generate a 500*4 matrix from a multivariate normal
matc<-rmvnorm(n=500, mean=rep(0,4), sigma=sigma)
# transform the numerical values into ordinal categories (Likert scale)
# obtaining matrix mato
mato<-transfmatcat(matc,4)
# set the number of desired missing values
nummissing<-100
# create the random missing values, obtaining matrix mat
mat<-missingmat(mato, nummissing, pattern="r")
# use function \code{ForImp} to impute missing values, obtaining matrix mati
mati<-ForImp(mat)
# number of correct imputations
nummissing-sum(mati!=mato)
}
\keyword{datagen}
\keyword{multivariate}% __ONLY ONE__ keyword per line
