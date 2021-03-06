% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/brainGraph_GLM.R
\name{GLMhelpers}
\alias{GLMhelpers}
\alias{setup_glm}
\alias{glm_fit_helper}
\title{Helper function to set-up for GLM analyses}
\usage{
setup_glm(covars, X, con.mat, con.type, con.name, ...)

glm_fit_helper(DT, X, con.type, con.mat, alt, measure, mykey)
}
\arguments{
\item{covars}{A \code{data.table} of covariates}

\item{X}{Numeric matrix, if you wish to supply your own design matrix
(default: \code{NULL})}

\item{con.mat}{Numeric matrix specifying the contrast(s) of interest; if
only one contrast is desired, you can supply a vector}

\item{con.type}{Character string; either \code{'t'} or \code{'f'} (for t or
F-statistics). Default: \code{'t'}}

\item{con.name}{Character vector of the contrast name(s); if \code{con.mat}
has row names, those will be used for reporting results (default:
\code{NULL})}

\item{...}{Other arguments passed to \code{\link{brainGraph_GLM_design}}}

\item{DT}{A data.table with all the necessary data}

\item{measure}{Character string of the graph measure of interest}

\item{mykey}{The \code{key} to key by (to differentiate NBS and other GLM
analyses)}
}
\description{
\code{setup_glm} is used to setup the data/objects for any function that uses
the main GLM functionality in \code{brainGraph}.

Helper function for GLM fitting
}
\details{
This function performs several tasks: it removes unused levels from
\code{covars}, removes subjects with incomplete data, creates a design matrix
(if not supplied), and supplies names to the contrast matrix.
}
\keyword{internal}
