
TICPE <- function(signature = LM22, bulkdata, tumortype = "CRC") {

  require(TICPE)

  if (tumortype == "CRC") {
    TICPE_res <- TICPEScores(bulkdata,  # bulk_data
                             CRC_select_siggene,   # gene_list
                             CRC_stable_pairs,     # higher and lower genes.
                             CRC_parameter,        # Stimulatedmodel
                             0.5)
  } else

    if (tumortype == "lung") {
      TICPE_res <- TICPEScores(bulkdata,  #bulk_data
                               lung_select_siggene,   # gene_list
                               lung_stable_pairs,     # higher and lower genes.
                               lung_parameter,        # Stimulatedmodel
                               0.5)
  } else

    if (tumortype == "SKCM") {
      TICPE_res <- TICPEScores(bulkdata,  #bulk_data
                               skcm_select_siggene,    # gene_list
                               skcm_stable_pairs,     # higher and lower genes.
                               skcm_parameter,        # Stimulatedmodel
                               0.5)
    } else {
      TICPE_res <- NULL
    }
  return(TICPE_res)
}
