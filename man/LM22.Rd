\name{LM22}
\alias{LM22}
\docType{data}
\title{A validated leukocyte gene signature matrix, LM22}
\description{
A dataset containing 547-gene expression values in 22 functionally defined
human hematopoietic subsets.
}
\usage{
LM22
}
\format{
  A data frame with 547 observations on the following 22 variables.
  \describe{
  \item{B cells naive}{A naive B cell is a B cell that has not been exposed to
  an antigen}
  \item{B cells memory}{B cell memory is generated upon a first pathogen
  encounter and is carried by two distinct lineages: long-lived plasma cells
  that secrete protective antibodies for a lifetime and memory B cells that
  can elicit improved and enhanced responses upon new antigen challenges.}
  \item{Plasma cells}{To be supplemented}
  \item{T cells CD8}{To be supplemented}
  \item{T cells CD4 naive}{To be supplemented}
  \item{T cells CD4 memory resting}{To be supplemented}
  \item{T cells CD4 memory activated}{To be supplemented}
  \item{T cells follicular helper}{To be supplemented}
  \item{T cells regulatory (Tregs)}{To be supplemented}
  \item{T cells gamma delta}{To be supplemented}
  \item{NK cells resting}{To be supplemented}
  \item{NK cells activated}{To be supplemented}
  \item{Monocytes}{To be supplemented}
  \item{Macrophages M0}{To be supplemented}
  \item{Macrophages M1}{To be supplemented}
  \item{Macrophages M2}{To be supplemented}
  \item{Dendritic cells resting}{To be supplemented}
  \item{Dendritic cells activated}{To be supplemented}
  \item{Mast cells resting}{To be supplemented}
  \item{Mast cells activated}{To be supplemented}
  \item{Eosinophils}{To be supplemented}
  \item{Neutrophils}{To be supplemented}
  }
}
\details{
A dataset containing the gene expression values of 547 genes in 22 cell types.
}
\source{
The LM22 dataset was obtain from Cibersort software.
}
\references{
NEWMAN A M, LIU C L, GREEN M R, et al. Robust enumeration of cell subsets from tissue expression profiles[J]. Nat Methods, 2015,12(5): 453-457.
}
\examples{
# loading the LM22 object
LM22
# checking the dimension of LM22 dataset
dim(LM22)
# viewing the first 6 and last 6 rows of LM22 dataset
head(LM22)
tail(LM22)
}
\keyword{datasets}
