\name{Cibersort}
\alias{Cibersort}
\title{
The function to do cell deconvolution analysis proposed by Newman, et al., 2015.
}
\description{
The function to do cell deconvolution analysis proposed by Newman, et al., 2015.
}
\usage{
results <- Cibersort(signature, bulkdata, perm = 0, QN = TRUE)
}
\arguments{
    \item{bulkdata}{
  bulk gene expression matrix, and samples in cols and genes in rows
  }
  \item{signature}{
  the specific marker expression profiles of cell types, and cells in cols as
  well as genes in rows
  }
  \item{perm}{Number of permutations}
  \item{QN}{Perform quantile normalization or not (TRUE/FALSE)}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A dataframe containing samples (in rows) and corresponding proportions of
cell types (in columns).
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
NEWMAN A M, LIU C L, GREEN M R, et al. Robust enumeration of cell subsets from
tissue expression profiles[J]. Nat Methods, 2015,12(5): 453-457.
}
\author{
NEWMAN A M, LIU C L, GREEN M R, et al.
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

# Using the standarded dataset
signature.mat <- LM22
bulk.mat <- Abis_refarray
results <- Cibersort(bulkdata = Abis_refarray,
                     signature = signature.mat,
                     perm = 0,
                     QN = TRUE)
print(results)

# Using the dataset SDY420
signature.mat <- LM22

path <- system.file("extdata",
                    "deconvTest.eg.sqlite",
                    package = "deconvBench")

library(RSQLite)
conn <- dbConnect(RSQLite::SQLite(), path)
mixdata <- dbGetQuery(conn,
                      "SELECT * FROM SDY420")
dbDisconnect(conn)

rownames(mixdata) <- mixdata$Gene_symbol
rownames(mixdata)
mixdata <- mixdata[, -ncol(mixdata)]

bulk.mat <- mixdata
results <- Cibersort(bulkdata = mixdata,
                     signature = signature.mat,
                     perm = 0,
                     QN = TRUE)
print(results)

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
}
