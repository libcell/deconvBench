
test <- function() {
  genepath <- "inst/extdata/genes.txt"
  genes = read.table(
    genepath,
    sep = "\t",
    stringsAsFactors = FALSE,
    header = TRUE,
    colClasses = "character",
    check.names = FALSE
  )
  return(genes)
}
