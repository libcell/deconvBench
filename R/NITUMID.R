
Nitumid <- function(bulkdata,
                    signature = NULL,
                    if.bulk = TRUE) {
  res <- NITUMID::NITUMID_simple(Y = bulkdata,
                                 if.bulk = if.bulk)
  res <- res$result[[2]]$H
  return(res)
}
