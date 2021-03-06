% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleanFeatures.R
\name{cleanFeatures}
\alias{cleanFeatures}
\title{Automated data cleaning}
\usage{
cleanFeatures(x, feats, edaFrame, trackingFeats = TRUE,
  clipOutliers = TRUE, imputeMissing = TRUE, progress = FALSE,
  autoCode = TRUE)
}
\arguments{
\item{x}{[data.frame | Required] Data.frame containing numeric features to transform}

\item{feats}{[character vector | Required] Character vector of features to clean}

\item{edaFrame}{[data.frame | Required] Data.frame object returned by exploreData function}

\item{trackingFeats}{[logical | Optional] Should tracking features be created. Tracking features are binary features that keep track of data before changes have been applied to, useful for tree type models}

\item{clipOutliers}{[logical | Optional] Should outliers be clipped using the method specified in the exploreData function}

\item{imputeMissing}{[logical | Optional] Should features be imputed using median imputation for numerics and mode for categoricals}

\item{progress}{[logical | Optional] Display progress}

\item{autoCode}{[logical | Optional] Should code be generated when running the function}
}
\value{
List containing data.frame with cleaned features as well as code when autoCode is TRUE
}
\description{
Cleans features in a dataset for machine learning purposes. Utilizes the edaFrame generated by exploreData. Cleaning involves imputation, clipping outliers and creating tracking features
}
\examples{
eda <- exploreData(iris)
cleaned <- cleanFeatures(x = iris, feats = names(iris), edaFrame = eda)
}
\author{
Xander Horn
}
