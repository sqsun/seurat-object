% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/seurat.R, R/assay.R, R/assay5.R
\name{HVFInfo}
\alias{HVFInfo}
\alias{VariableFeatures}
\alias{VariableFeatures<-}
\alias{SVFInfo}
\alias{SpatiallyVariableFeatures}
\alias{HVFInfo.Seurat}
\alias{VariableFeatures.Seurat}
\alias{VariableFeatures<-.Seurat}
\alias{SVFInfo.Seurat}
\alias{SpatiallyVariableFeatures.Seurat}
\alias{HVFInfo.Assay}
\alias{SpatiallyVariableFeatures.Assay}
\alias{SVFInfo.Assay}
\alias{VariableFeatures.Assay}
\alias{VariableFeatures<-.Assay}
\alias{HVFInfo.Assay5}
\alias{VariableFeatures.Assay5}
\alias{SVFInfo.StdAssay}
\alias{SVFInfo.Assay5}
\alias{SpatiallyVariableFeatures.Assay5}
\title{Highly Variable Features}
\usage{
HVFInfo(object, method, status = FALSE, ...)

VariableFeatures(object, method = NULL, ...)

VariableFeatures(object, ...) <- value

SVFInfo(object, method, status, ...)

SpatiallyVariableFeatures(object, method, ...)

\method{HVFInfo}{Seurat}(
  object,
  method = NULL,
  status = FALSE,
  assay = NULL,
  selection.method = deprecated(),
  ...
)

\method{VariableFeatures}{Seurat}(
  object,
  method = NULL,
  assay = NULL,
  nfeatures = NULL,
  layer = NA,
  simplify = TRUE,
  selection.method = deprecated(),
  ...
)

\method{VariableFeatures}{Seurat}(object, assay = NULL, ...) <- value

\method{SVFInfo}{Seurat}(
  object,
  method = c("markvariogram", "moransi"),
  status = FALSE,
  assay = NULL,
  selection.method = deprecated(),
  ...
)

\method{SpatiallyVariableFeatures}{Seurat}(
  object,
  method = "moransi",
  assay = NULL,
  decreasing = TRUE,
  selection.method = deprecated(),
  ...
)

\method{HVFInfo}{Assay}(object, method, status = FALSE, selection.method = deprecated(), ...)

\method{SpatiallyVariableFeatures}{Assay}(
  object,
  method = "moransi",
  decreasing = TRUE,
  selection.method = deprecated(),
  ...
)

\method{SVFInfo}{Assay}(
  object,
  method = c("markvariogram", "moransi"),
  status = FALSE,
  selection.method = deprecated(),
  ...
)

\method{VariableFeatures}{Assay}(object, method = NULL, selection.method = deprecated(), ...)

\method{VariableFeatures}{Assay}(object, ...) <- value

\method{HVFInfo}{Assay5}(object, method = NULL, status = FALSE, layer = NA, strip = TRUE, ...)

\method{VariableFeatures}{Assay5}(
  object,
  method = NULL,
  layer = NA,
  simplify = TRUE,
  nfeatures = NULL,
  selection.method = deprecated(),
  ...
)

\method{SVFInfo}{StdAssay}(
  object,
  method = c("markvariogram", "moransi"),
  status = FALSE,
  selection.method = deprecated(),
  ...
)

\method{SVFInfo}{Assay5}(
  object,
  method = c("markvariogram", "moransi"),
  status = FALSE,
  selection.method = deprecated(),
  ...
)

\method{SpatiallyVariableFeatures}{Assay5}(
  object,
  method = "moransi",
  decreasing = TRUE,
  selection.method = deprecated(),
  ...
)
}
\arguments{
\item{object}{An object}

\item{method}{Which method to pull. For \code{HVFInfo} and
\code{VariableFeatures}, choose one from one of the
following:
\itemize{
 \item \dQuote{vst}
 \item \dQuote{sctransform} or \dQuote{sct}
 \item \dQuote{mean.var.plot}, \dQuote{dispersion}, \dQuote{mvp}, or
  \dQuote{disp}
}
For \code{SVFInfo} and \code{SpatiallyVariableFeatures}, choose from:
\itemize{
 \item \dQuote{markvariogram}
 \item \dQuote{moransi}
}}

\item{status}{Add variable status to the resulting data frame}

\item{...}{Arguments passed to other methods}

\item{value}{A character vector of variable features}

\item{assay}{Name of assay to pull highly variable feature information for}

\item{selection.method}{\Sexpr[stage=build,results=rd]{lifecycle::badge("deprecated")}}

\item{nfeatures}{Maximum number of features to select when simplifying}

\item{layer}{Layer to pull variable features for}

\item{simplify}{When pulling for multiple layers, combine into a single
vector and select a common set of variable features for all layers}

\item{decreasing}{Return features in decreasing order (most spatially
variable first).}

\item{strip}{Remove method/layer identifiers from highly variable data frame}
}
\value{
\code{HVFInfo}: A data frame with feature means, dispersion, and
scaled dispersion

\code{VariableFeatures}: a vector of the variable features

\code{SVFInfo}: a data frame with the spatially variable features

\code{SpatiallyVariableFeatures}: a character vector of the spatially
variable features
}
\description{
Get and set variable feature information for an \code{\link{Assay}} object.
\code{HVFInfo} and \code{VariableFeatures} utilize generally variable
features, while \code{SVFInfo} and \code{SpatiallyVariableFeatures} are
restricted to spatially variable features
}
\examples{
# Get the HVF info from a specific Assay in a Seurat object
HVFInfo(object = pbmc_small, assay = "RNA")[1:5, ]

# Get the HVF info directly from an Assay object
HVFInfo(pbmc_small[["RNA"]], method = 'vst')[1:5, ]

}
\concept{data-access}
