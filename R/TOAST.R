
Toast <- function(signature = LM22, bulkdata) {

  require(TOAST)

  CellType <- as.list(1:ncol(LM22))

  names(CellType) <- colnames(LM22)

  myMarker <- ChooseMarker(LM22,
                           CellType,
                           nMarkCT = 50,
                           chooseSig = TRUE,
                           verbose = FALSE)

  res <- MDeconv(Ymat = bulkdata,
                 SelMarker = myMarker,
                 alpha = NULL,
                 sigma = NULL,
                 epsilon = 1e-3,
                 maxIter = 1000,
                 verbose = FALSE)

  TOAST_res <- res$H

  return(TOAST_res)
}
