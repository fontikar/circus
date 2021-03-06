% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{model_bad_novars}
\alias{model_bad_novars}
\title{Model output of a linear model from 'brms' using Gryphon data}
\format{
model output with class 'brmsfit', list of 19
\enumerate{
\item BWT:	Birth weight at fledging
\item SEX:	Sex of gryphon
\item BYEAR: Year of Birth
}
}
\usage{
model_bad_novars
}
\description{
This is an example model output from an linear model ran in 'brms' using Gryphon data. This model tests for sex differences (SEX) as well as among birth year differences (BYEAR) in birth weight (BWT). This model was run with 500 iterations, warmup of 250 and thinned at every sample. Note this is a short run for demonstrative purposes only. Estimates will not be reliable
}
\references{
Wilson, A. J., Reale, D., Clements, M. N., Morrissey, M. M., Postma, E., Walling, C. A., Kruuk, L. E. B & Nussey, D. H. (2010). An ecologist's guide to the animal model. Journal of Animal Ecology, 79(1), 13-26.
}
\seealso{
\code{\link{gryphon}}

\code{\link{gryphonPed}}
}
