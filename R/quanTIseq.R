
Quantiseq <- function(bulkdata, signature = NULL, tumor = TRUE) {
  res <- immunedeconv::deconvolute(gene_expression = bulkdata,
                                   method = "quantiseq",
                                   indications = NULL,
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
