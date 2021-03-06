% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_resid.R
\name{plot.brainGraph_resids}
\alias{plot.brainGraph_resids}
\title{Plot model residuals for each brain region}
\usage{
\method{plot}{brainGraph_resids}(x, regions = NULL, cols = FALSE, ...)
}
\arguments{
\item{x}{A \code{brainGraph_resids} object (from \code{\link{get.resid}})}

\item{regions}{Character vector of region(s) to focus on; default behavior is
to show summary for all regions}

\item{cols}{Logical indicating whether to color by group (default: FALSE)}

\item{...}{Arguments passed to \code{\link{brainGraph_GLM_design}} (optional)}
}
\value{
A list of \code{\link[ggplot2]{ggplot}} objects
}
\description{
Check the model residuals for each brain region in a structural covariance
analysis. It shows a \emph{qqplot} of the studentized residuals, as output
from \code{\link{get.resid}}.
}
\examples{
\dontrun{
myresids <- get.resids(lhrh, covars)
residPlots <- plot(myresids, cols=TRUE)

## Save as a multi-page PDF
ml <- marrangeGrob(residPlots, nrow=3, ncol=3)
ggsave('residuals.pdf', ml)
}
}
\seealso{
\code{\link[stats]{qqnorm}}

Other Structural covariance network functions: \code{\link{IndividualContributions}},
  \code{\link{brainGraph_boot}},
  \code{\link{brainGraph_init}},
  \code{\link{brainGraph_permute}},
  \code{\link{corr.matrix}}, \code{\link{get.resid}},
  \code{\link{plot_volumetric}}
}
\author{
Christopher G. Watson, \email{cgwatson@bu.edu}
}
