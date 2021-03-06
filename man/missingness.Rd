\name{missingness}
\alias{missingness}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Missing values
}
\description{
Summary for the missing values in a matrix
}
\usage{
missingness(mat)
}
\arguments{
  \item{mat}{
a matrix/dataframe with missing values
}
}
\details{
The function provides a summary for the missing values in a matrix (units for variables)
}
\value{

\item{number_of_missing_values}{Total number of missing values in the matrix}
\item{missing_values_per_unit}{Number of units with a certain number of missing values}
\item{missing_values_per_variable}{Number of missing values for each variable}
}
\author{
Alessandro Barbiero, Giancarlo Manzi, Pier Alda Ferrari
}

\examples{
n<-100
m<-3
mat<-matrix(rnorm(n*m),n,m)
nummissing<-50
index<-sample(n*m,nummissing,replace=FALSE)
mat[index]<-NA
missingness(mat)
}
\keyword{datagen}
\keyword{multivariate}% __ONLY ONE__ keyword per line
