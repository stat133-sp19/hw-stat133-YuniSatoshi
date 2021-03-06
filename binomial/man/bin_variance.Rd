% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main-functions.R
\name{bin_variance}
\alias{bin_variance}
\title{Binomial Variance}
\usage{
bin_variance(trials, prob)
}
\arguments{
\item{n}{number of trials (numeric)}

\item{p}{success rate of each trials (numeric)}
}
\value{
Return the variance of binomial distribution
}
\description{
Calculates the variance of a binomial variable
}
\examples{
bin_variance(trials = 5, prob = 0.5)
}
