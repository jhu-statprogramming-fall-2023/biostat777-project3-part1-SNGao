% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/InvestigatePrior_rm.R
\name{PlotPriorFits}
\alias{PlotPriorFits}
\title{Plot of exposure-response function from univariate KMR fit}
\usage{
PlotPriorFits(
  y,
  X,
  Z,
  fits,
  which.z = NULL,
  which.q = NULL,
  plot.resid = TRUE,
  ylim = NULL,
  ...
)
}
\arguments{
\item{y}{a vector of outcome data of length \code{n}.}

\item{X}{an \code{n}-by-\code{K} matrix of covariate data where each row represents an observation and each column represents a covariate. Should not contain an intercept column.}

\item{Z}{an \code{n}-by-\code{M} matrix of predictor variables to be included in the \code{h} function. Each row represents an observation and each column represents an predictor.}

\item{fits}{output from \code{\link{InvestigatePrior}}}

\item{which.z}{which predictors (columns in \code{Z}) to plot}

\item{which.q}{which q.values to plot; defaults to all possible}

\item{plot.resid}{whether to plot the data points}

\item{ylim}{plotting limits for the y-axis}

\item{...}{other plotting arguments}
}
\value{
No return value, generates plot
}
\description{
Plot the estimated \code{h(z[m])} estimated from frequentist KMR for \code{r[m]} fixed to specific values
}
\examples{
## First generate dataset
set.seed(111)
dat <- SimData(n = 50, M = 4)
y <- dat$y
Z <- dat$Z
X <- dat$X

priorfits <- InvestigatePrior(y = y, Z = Z, X = X, q.seq = c(2, 1/2, 1/4, 1/16))
PlotPriorFits(y = y, Z = Z, X = X, fits = priorfits)
}
