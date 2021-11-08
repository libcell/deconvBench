
Epic <- function(bulkdata, signature = NULL) {
  res <- EPIC::EPIC(bulk = bulkdata,
                    reference = signature,
                    mRNA_cell = NULL,
                    mRNA_cell_sub = NULL,
                    sigGenes = NULL,
                    scaleExprs = TRUE,
                    withOtherCells = TRUE,
                    constrainedSum = TRUE,
                    rangeBasedOptim = FALSE)
  return(res$cellFractions)
}
