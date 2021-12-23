# deconvBench
The project on comparstive research of cell deconvolution methods 

## Overview

deconvBench is a R package used to assess the performance of diverse approaches evaluation of cell fraction estimation, and in total it has more than 30 different types of bioinformatics software.

## Installation

To install the deconvBench, install from github using devtools

``` r
library(devtools)
install_github("libcell/deconvBench")
```

Or you can download the .ZIP file and unzip it.
 
``` r
install.packages("deconvBench", repos = NULL, type = "source")
# The "deconvBench" should be combined with the absolute path.
```

## Usage

It’s hard to succinctly describe how deconvBench works because it embodies a 
deep philosophy of visualization. 

!!!Note: after installation, you must download the whole database file (deconvBench.eg.sqlite, https://drive.google.com/file/d/1gw9C9KX0spPrd6d_CNLAqnZ5qDMbqrYo/view?usp=sharing; deconvBench.sc.sqlite, ) to replace the primary *.sqlite file in the directory deconvBench/inst/extdata/.  

## Contact email

Please don't hesitate to address comments/questions/suggestions regarding this R 
package to: Bo Li libcell@cqnu.edu.cn
