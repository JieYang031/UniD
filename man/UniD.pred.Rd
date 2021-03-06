% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/UniD.pred.R
\name{UniD.pred}
\alias{UniD.pred}
\title{Diagnostic Prediction}
\usage{
UniD.pred(inputdata, inputvalueType = "B", inputdata.BMIQ,
  Pred.1p19q = TRUE, Pred.IDH = TRUE, Pred.ATRX = TRUE,
  Pred.TERTp = TRUE, Pred.ExpressSubtype = TRUE, outDir, write)
}
\arguments{
\item{inputdata}{input data with columns as samples and rows as
probes, could be either Beta.raw generated from \code{UniD.dataqc} or
Beta.clean generated from \code{UniD.probefilter}.}

\item{inputvalueType}{indicate the inputdata value type. Can be "B"
or "M". By default is Beta value "B".}

\item{inputdata.BMIQ}{input data after BMIQ normalized with columns
as samples and rows as probes. Must be Beta value. Suggest to be the
Beta.BMIQ generated by \code{UniD.BMIQ}.}

\item{Pred.1p19q}{whether perform chromosome 1p/19q co-deletion
status prediction. Default is TRUE.}

\item{Pred.IDH}{whether perform IDH mutation status prediction,
default is TRUE.}

\item{Pred.ATRX}{whehter perform ATRX mutation status prediction,
default is TRUE.}

\item{Pred.TERTp}{whehter perform TERT promoter mutation status
prediction, default is TRUE.}

\item{Pred.ExpressSubtype}{whether perform TCGA gene expression
subtype prediction, including Classical/C, Mesenchymal/M, and Proneural/P.
Default is TRUE.}

\item{outDir}{The directory where the prediction result saved}

\item{write}{wehther save the data generated within the function}
}
\value{
A data frame with predicted results, rows are samples, columns
are each predicted genomic information
}
\description{
Used to predict other genomic information, including:
(1) chromosome 1p/19q co-deletion status; (2) IDH mutation status; (3)
ATRX mutation status; (4) TERT promoter mutation status; (5) TCGA gene
expression subtype; (6) MGMT expression level by tumor. When applying
the prediction models, missing values may exist in the input data. The
number of missing values will be checked. If high proportion of input
data are missing values, the predicted results may have quality issues.
}
\examples{
\dontrun{
Pred <- UniD.pred(inputdata = Beta.raw, inputvalueType = "B", inputdata.BMIQ
= Beta.BMIQ, Pred.1p19q = T, Pred.IDH = T, Pred.ATRX = T, Pred.TERTp = T,
Pred.ExpressSubtype = T, Pred.MGMTExpress = T, outDir = "~/Desktop/output/",
write = T)
}
}
