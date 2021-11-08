
library(ADAPTS)
# library(DeconRNASeq)

# method: one of four, nnls, DeconRNASeq, proportionsInAdmixture, and SVMDECON

Adapts <- function(bulkdata, signature = LM22, method = "nnls") {
  if (method == "SVMDECON") {
    bulkdata <- bulkdata[apply(bulkdata, 1, var) != 0, ]
  }
  res <- ADAPTS::estCellPercent(refExpr = signature,
                        geneExpr = bulkdata,
                        method = method)
  return(res)
}

