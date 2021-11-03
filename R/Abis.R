
total.norm <- function(x) {
  y <- sum(x)
  z <- x / y
  z
}

Abis <- function(signature, bulkdata) {
  require(MASS)

  bulkgenes <- rownames(bulkdata)

  siggenes <- rownames(signature)

  genes <- intersect(bulkgenes, siggenes)

  Dec <- apply(bulkdata[genes, , drop = FALSE],
               2,
               function(x) {
                 coef(rlm(as.matrix(signature[genes, ]), x, maxit = 100))
               })

  Dec <- Dec * 100

  ABIS_res <- signif(Dec, 3)

  ABIS_res[ABIS_res < 0] <- 0

  ABIS_res <- t(apply(t(ABIS_res), 1, total.norm))

  return(ABIS_res)
}
