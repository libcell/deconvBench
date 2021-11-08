
# require(MCPcounter)

MCPcounter <-
  function(bulkdata,
           signature = NULL,
           featuresType = c("affy133P2_probesets",
                            "HUGO_symbols",
                            "ENTREZ_ID",
                            "ENSEMBL_ID")[2]
           )
  {

    # probesets
    probpath <- "inst/extdata/probesets.txt"
    probesets = read.table(
      probpath,
      sep = "\t",
      stringsAsFactors = FALSE,
      colClasses = "character"
    )

    # genes
    genepath <- "inst/extdata/genes.txt"
    genes = read.table(
      genepath,
      sep = "\t",
      stringsAsFactors = FALSE,
      header = TRUE,
      colClasses = "character",
      check.names = FALSE
    )

    if (featuresType == "affy133P2_probesets") {
      features = probesets
      markers.names = unique(features[, 2])
      features = split(features[, 1], features[, 2])
      features = lapply(features, intersect, x = rownames(bulkdata))
      features = features[sapply(features, function(x)
        length(x) >
          0)]
      missing.populations = setdiff(markers.names, names(features))
      features = features[intersect(markers.names, names(features))]
    }
    else {
      markersG = genes
    }
    if (featuresType == "HUGO_symbols") {
      features = subset(markersG, get("HUGO symbols") %in%
                          rownames(bulkdata))
      markers.names = unique(features[, "Cell population"])
      features = split(features[, "HUGO symbols"], features[,
                                                            "Cell population"])
      missing.populations = setdiff(markers.names, names(features))
      features = features[intersect(markers.names, names(features))]
    }
    if (featuresType == "ENTREZ_ID") {
      features = subset(markersG, ENTREZID %in% rownames(bulkdata))
      markers.names = unique(features[, "Cell population"])
      features = split(features[, "ENTREZID"], features[,
                                                        "Cell population"])
      missing.populations = setdiff(markers.names, names(features))
      features = features[intersect(markers.names, names(features))]
    }
    if (featuresType == "ENSEMBL_ID") {
      features = subset(markersG, get("ENSEMBL ID") %in%
                          rownames(bulkdata))
      markers.names = unique(features[, "Cell population"])
      features = split(features[, "ENSEMBL ID"], features[,
                                                          "Cell population"])
      missing.populations = setdiff(markers.names, names(features))
      features = features[intersect(markers.names, names(features))]
    }
    if (length(missing.populations) > 0) {
      warning(paste(
        "Found no markers for population(s):",
        paste(missing.populations, collapse = ", ")
      ))
    }
    t(appendSignatures(bulkdata, features))
  }

