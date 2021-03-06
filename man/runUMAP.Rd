% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dimension_reduction.R
\name{runUMAP}
\alias{runUMAP}
\title{runUMAP}
\usage{
runUMAP(
  gobject,
  expression_values = c("normalized", "scaled", "custom"),
  reduction = c("cells", "genes"),
  dim_reduction_to_use = "pca",
  dim_reduction_name = "pca",
  dimensions_to_use = 1:10,
  name = "umap",
  genes_to_use = NULL,
  return_gobject = TRUE,
  n_neighbors = 40,
  n_components = 2,
  n_epochs = 400,
  min_dist = 0.01,
  n_threads = NA,
  spread = 5,
  set_seed = TRUE,
  seed_number = 1234,
  verbose = T,
  ...
)
}
\arguments{
\item{gobject}{giotto object}

\item{expression_values}{expression values to use}

\item{reduction}{cells or genes}

\item{dim_reduction_to_use}{use another dimension reduction set as input}

\item{dim_reduction_name}{name of dimension reduction set to use}

\item{dimensions_to_use}{number of dimensions to use as input}

\item{name}{arbitrary name for UMAP run}

\item{genes_to_use}{if dim_reduction_to_use = NULL, which genes to use}

\item{return_gobject}{boolean: return giotto object (default = TRUE)}

\item{n_neighbors}{UMAP param: number of neighbors}

\item{n_components}{UMAP param: number of components}

\item{n_epochs}{UMAP param: number of epochs}

\item{min_dist}{UMAP param: minimum distance}

\item{n_threads}{UMAP param: threads/cores to use}

\item{spread}{UMAP param: spread}

\item{set_seed}{use of seed}

\item{seed_number}{seed number to use}

\item{verbose}{verbosity of function}

\item{...}{additional UMAP parameters}
}
\value{
giotto object with updated UMAP dimension recuction
}
\description{
run UMAP
}
\details{
See \code{\link[uwot]{umap}} for more information about these and other parameters.
\itemize{
  \item Input for UMAP dimension reduction can be another dimension reduction (default = 'pca')
  \item To use gene expression as input set dim_reduction_to_use = NULL
  \item If dim_reduction_to_use = NULL, genes_to_use can be used to select a column name of
  highly variable genes (see \code{\link{calculateHVG}}) or simply provide a vector of genes
  \item multiple UMAP results can be stored by changing the \emph{name} of the analysis
}
}
\examples{

data(mini_giotto_single_cell)

mini_giotto_single_cell <- runUMAP(mini_giotto_single_cell,
                                   dimensions_to_use = 1:3,
                                   n_threads = 1,
                                   n_neighbors = 3)

plotUMAP(gobject = mini_giotto_single_cell)

}
