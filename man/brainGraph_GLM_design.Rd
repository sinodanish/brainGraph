% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/brainGraph_GLM.R
\name{brainGraph_GLM_design}
\alias{brainGraph_GLM_design}
\title{Create a design matrix for linear model analysis}
\usage{
brainGraph_GLM_design(covars, coding = c("dummy", "effects", "cell.means"),
  mean.center = FALSE, binarize = NULL, int = NULL)
}
\arguments{
\item{covars}{A \code{data.table} of covariates}

\item{coding}{Character string indicating how factor variables will be coded
(default: \code{'dummy'})}

\item{mean.center}{Logical indicating whether to mean center non-factor
variables (default: \code{FALSE})}

\item{binarize}{Character string specifying the column name(s) of the
covariate(s) to be converted from type \code{factor} to \code{numeric}
(default: \code{NULL})}

\item{int}{Character string specifying the column name(s) of the
covariate(s) to test for an interaction (default: \code{NULL})}
}
\value{
A numeric matrix
}
\description{
This function takes a \code{data.table} of covariates and returns a
\emph{design matrix} to be used in linear model analysis.
}
\details{
There are three different ways to code factors: \emph{dummy}, \emph{effects},
or \emph{cell-means} (chosen by the argument \code{coding}). To understand
the difference, see Chapter 7 of the User Guide.

The argument \code{mean.center} allows you to mean-center any non-factor
variables (including any dummy/indicator covariates). The argument
\code{binarize} will convert the given factor variable(s) into numeric
variable(s).

The \code{int} argument specifies which variables should interact with the
\emph{Group} factor variable. This argument accepts either numeric variables
(e.g., \emph{Age}) and other factor variables (e.g., \emph{Sex}) if you are
running a two-way ANOVA. See Chapter 7 of the User Guide for examples.
}
\seealso{
Other GLM functions: \code{\link{brainGraph_GLM_fit}},
  \code{\link{brainGraph_GLM}}, \code{\link{mtpc}}
}
\author{
Christopher G. Watson, \email{cgwatson@bu.edu}
}