
Fardeep <- function(signature, bulkdata) {
  res <- FARDEEP::fardeep(X = signature,
                          Y = bulkdata,
                          alpha1 = 0.1,
                          alpha2 = 1.5,
                          up = 10,
                          low = 1,
                          nn = TRUE,
                          intercept = TRUE,
                          lognorm = TRUE,
                          permn = 100,
                          QN = FALSE)
  return(res$abs.beta)
}
