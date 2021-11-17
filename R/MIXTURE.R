
Mixture <- function(signature = LM22, bulkdata, ncore = 1L) {
  require(snow)
  require(MIXTURE)

  savefile <- paste0("MIXTURE",
                     "_",
                     substitute(bulkdata),
                     "_",
                     substitute(signature),
                     ".xlsx")
  mix.test1 <- MIXTURE(expressionMatrix = as.matrix(bulkdata),
                       signatureMatrix = signature,
                       iter = 50,   ####rep times
                       functionMixture = nu.svm.robust.RFE,
                       useCores = ncore,
                       verbose = TRUE,
                       nullDist = "PopulationBased",  ####"none" or "PopulationBased"
                       fileSave = savefile)

  MIXTURE_res_prop <- GetMixture(mix.test1)

  MIXTURE_res_abs <- GetMixture(mix.test1,type="absolute")

  TOAST_res <- res$H

  return(TOAST_res)
}
