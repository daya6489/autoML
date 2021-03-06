% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modelInteractions.R
\name{modelInteractions}
\alias{modelInteractions}
\title{Model feature interactions}
\usage{
modelInteractions(train, trainedModel, sample = 0.1, seed = 1991)
}
\arguments{
\item{train}{[data.frame | Required] Training set on which the model was trained}

\item{trainedModel}{[mlr obj | Required] MLR trained moodel object}

\item{sample}{[numeric | Optional] A number between 0 - 1 to sub-sample the training set for faster computational time. Default of 0.1}

\item{seed}{[integer | Optional] Random seed number for reproducable results. Default of 1991}
}
\value{
List object containing a data.frame and a plot object.
}
\description{
Finds and calculates the features that have a strong ability to be used as interactions in the dataset
}
\examples{
mod <- mlr::train(makeLearner("classif.ranger"), iris.task)
modelInteractions(train = iris, mod)
}
\author{
Xander Horn
}
