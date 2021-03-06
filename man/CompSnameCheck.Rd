% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hello.R
\name{CompSnameCheck}
\alias{CompSnameCheck}
\title{CompSnameCheck}
\usage{
CompSnameCheck(data, name)
}
\arguments{
\item{data}{dataframe}

\item{name}{full Chinese name as a column inside data}
}
\value{
Dataframe with extra 2 columns: sname (Surname) and fname (First Name)
}
\description{
extract the Surname and First Name from Chinese Names, automatically checking and modifing the surname if it's a Chinese compound surname.
}
\examples{
CompSnameCheck(data, name)
}
