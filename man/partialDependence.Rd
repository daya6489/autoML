% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/partialDependence.R
\name{partialDependence}
\alias{partialDependence}
\title{Generate partial dependence plots}
\usage{
partialDependence(train, trainedModel, sample = 0.1, seed = 1991)
}
\arguments{
\item{train}{[data.frame | Required] Training set on which the model was trained}

\item{trainedModel}{[mlr obj | Required] MLR trained moodel object}

\item{sample}{[numeric | Optional] A number between 0 - 1 to sub-sample the training set for faster computational time. Default of 0.1}

\item{seed}{[integer | Optional] Random seed number for reproducable results. Default of 1991}
}
\value{
List object containing a plot for each feature in the dataset.
}
\description{
Creates a list of partial dependence plots for each feature used by the model. Partial dependence is simply the average prediction path a model takes whilst iterating through unique values of a feature and keeping the rest of the features static
}
\examples{
mod <- mlr::train(makeLearner("classif.ranger"), iris.task)
partialDependence(train = iris, mod)
}
\author{
Xander Horn
}
