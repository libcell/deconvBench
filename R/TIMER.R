
Timer <- function(bulkdata,
                  signature = NULL,
                  tumor = TRUE,
                  tumor.type = "brca") {
  indi <- rep(tumor.type, time = ncol(bulkdata))
  res <- immunedeconv::deconvolute(gene_expression = bulkdata,
                                   method = "timer",
                                   indications = indi,
                                   tumor = tumor,
                                   arrays = FALSE,
                                   column = "gene_symbol",
                                   rmgenes = NULL,
                                   scale_mrna = TRUE,
                                   expected_cell_types = NULL)
  res <- t(res)
  colnames(res) <- res[1, ]
  res <- as.data.frame(res[-1, ])
  return(res)
}
