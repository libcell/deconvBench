#' A validated leukocyte gene signature matrix, LM22
#'
#' A dataset containing 547-gene expression values in 22 functionally defined
#'  human hematopoietic subsets. The variables are as follows:
#'
#' @format A data frame with 547 rows and 22 variables:
#' \describe{
#'   \item{B cells naive}{A naive B cell is a B cell that has not been exposed
#'   to an antigen}
#'   \item{B cells memory}{B cell memory is generated upon a first pathogen
#'   encounter and is carried by two distinct lineages: long-lived plasma cells
#'   that secrete protective antibodies for a lifetime and memory B cells that
#'   can elicit improved and enhanced responses upon new antigen challenges.}
#'   \item{Plasma cells}{To be supplemented}
#'   \item{T cells CD8}{To be supplemented}
#'   \item{T cells CD4 naive}{To be supplemented}
#'   \item{T cells CD4 memory resting}{To be supplemented}
#'   \item{T cells CD4 memory activated}{To be supplemented}
#'   \item{T cells follicular helper}{To be supplemented}
#'   \item{T cells regulatory (Tregs)}{To be supplemented}
#'   \item{T cells gamma delta}{To be supplemented}
#'   \item{NK cells resting}{To be supplemented}
#'   \item{NK cells activated}{To be supplemented}
#'   \item{Monocytes}{To be supplemented}
#'   \item{Macrophages M0}{To be supplemented}
#'   \item{Macrophages M1}{To be supplemented}
#'   \item{Macrophages M2}{To be supplemented}
#'   \item{Dendritic cells resting}{To be supplemented}
#'   \item{Dendritic cells activated}{To be supplemented}
#'   \item{Mast cells resting}{To be supplemented}
#'   \item{Mast cells activated}{To be supplemented}
#'   \item{Eosinophils}{To be supplemented}
#'   \item{Neutrophils}{To be supplemented}
#' }
"LM22"


#' Human tumour immune environment signature matrix form quanTIseq
#'
#' Rf: Finotello F, Mayer C, Plattner C et al. Molecular and pharmacological
#' modulators of the tumor immune contexture revealed by deconvolution of RNA-seq data.
#' Genome Med 2019; 11:34.
#'
#' A dataset containing the molecular signature profiles of 10 cell types
#' The variables are as follows:
#'
#' @format A data frame with 170 rows and 10 variables:
#' \describe{
#'   \item{B.cells}{gene expression value range (0-1)}
#'   \item{Macrophages.M1}{gene expression value range (0-1)}
#'   \item{Macrophages.M2}{gene expression value range (0-1)}
#'   \item{Monocytes}{gene expression value range (0-1)}
#'   \item{Neutrophils}{gene expression value range (0-1)}
#'   \item{NK.cells}{gene expression value range (0-1)}
#'   \item{T.cells.CD4}{gene expression value range (0-1)}
#'   \item{T.cells.CD8}{gene expression value range (0-1)}
#'   \item{Tregs}{gene expression value range (0-1)}
#'   \item{Dendritic.cells}{gene expression value range (0-1)}
#' }
"TIL10"


#'  A validated of PBMC from healthy donors signature RNA-seq matrix
#'  by Flow cytometry
#'
#'  Rf: Monaco G, Lee B, Xu W et al. RNA-Seq Signatures Normalized by mRNA Abundance
#'  Allow Absolute Deconvolution of Human Immune Cell Types. Cell Rep 2019; 26:1627-1640 e1627.
#'
#' A dataset containing the molecular signature profiles of 17 cell types
#' The variables are as follows:
#'
#' @format A data frame with 1296 rows and 17 variables:
#' \describe{
#'   \item{Monocytes C}{gene expression value range (0-100)}
#'   \item{NK}{gene expression value range (0-100)}
#'   \item{T CD8 Memory}{gene expression value range (0-100)}
#'   \item{T CD4 Naive}{gene expression value range (0-100)}
#'   \item{T CD8 Naive}{gene expression value range (0-100)}
#'   \item{B Naive}{gene expression value range (0-100)}
#'   \item{T CD4 Memory}{gene expression value range (0-100)}
#'   \item{MAIT}{gene expression value range (0-100)}
#'   \item{T gd Vd2}{gene expression value range (0-100)}
#'   \item{Neutrophils LD}{gene expression value range (0-100)}
#'   \item{T gd non-Vd2}{gene expression value range (0-100)}
#'   \item{Basophils LD}{gene expression value range (0-100)}
#'   \item{Monocytes NC+I}{gene expression value range (0-100)}
#'   \item{B Memory}{gene expression value range (0-100)}
#'   \item{mDCs}{gene expression value range (0-100)}
#'   \item{pDCs}{gene expression value range (0-100)}
#'   \item{Plasmablasts}{gene expression value range (0-100)}
#' }
"Abis_refseq"


#'  A validated of PBMC from healthy donors signature microarray matrix
#'  by Flow cytometry
#'
#'  Rf: Monaco G, Lee B, Xu W et al. RNA-Seq Signatures Normalized by mRNA Abundance
#'  Allow Absolute Deconvolution of Human Immune Cell Types. Cell Rep 2019; 26:1627-1640 e1627.
#'
#' A dataset containing the molecular signature profiles of 11 cell types
#' The variables are as follows:
#'
#' @format A data frame with 819 rows and 11 variables:
#' \describe{
#'   \item{T.Naive}{gene expression value range (0-100)}
#'   \item{T.Memory}{gene expression value range (0-100)}
#'   \item{B.Naive}{gene expression value range (0-100)}
#'   \item{B.Memory}{gene expression value range (0-100)}
#'   \item{Plasmablasts}{gene expression value range (0-100)}
#'   \item{NK}{gene expression value range (0-100)}
#'   \item{pDCs}{gene expression value range (0-100)}
#'   \item{Neutrophils.LD}{gene expression value range (0-100)}
#'   \item{Basophils.LD}{gene expression value range (0-100)}
#'   \item{mDCs}{gene expression value range (0-100)}
#'   \item{Monocytes}{gene expression value range (0-100)}
#' }
"Abis_refarray"

