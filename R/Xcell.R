
total.norm <- function(x) {
  y <- sum(x)
  z <- x/y
  return(z)
}

Xcell <- function(signature = NULL, bulkdata, RNAseq = TRUE) {
  res <- xCell::xCellAnalysis(expr = bulkdata,
                              signatures = signature,
                              genes = NULL,
                              spill = NULL,
                              rnaseq = RNAseq,
                              file.name = NULL,
                              scale = TRUE,
                              alpha = 0.5,
                              save.raw = FALSE,
                              parallel.sz = 4,
                              parallel.type = "SOCK",
                              cell.types.use = NULL)
  res <- apply(t(res)[, 1:64], 1, total.norm)
  res <- t(res)
  return(res)
}
