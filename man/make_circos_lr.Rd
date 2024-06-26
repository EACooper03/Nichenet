% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/differential_nichenet_plotting.R
\name{make_circos_lr}
\alias{make_circos_lr}
\title{make_circos_lr}
\usage{
make_circos_lr(
  prioritized_tbl_oi,
  colors_sender,
  colors_receiver,
  cutoff = 0,
  scale = FALSE,
  transparency = NULL,
  circos_type = "normal",
  border = TRUE,
  separate_legend = FALSE
)
}
\arguments{
\item{prioritized_tbl_oi}{Dataframe with the ligand-receptor interactions that should be visualized}

\item{colors_sender}{Named character vector giving the colors of each sender cell type}

\item{colors_receiver}{Named character vector giving the colors of each receiver cell type}

\item{cutoff}{Threshold On the prioritization score - if lower than this value, the link will be removed -- default = 0.}

\item{scale}{scale value in `chordDiagram`. Default: FALSE}

\item{transparency}{Vector of transparency values of the links or NULL, in that case this will be calculated automatically. Default: NULL.}

\item{circos_type}{"normal" or "arrow". Default: "normal".}

\item{border}{Border to arrows or not in `chordDiagram`? (Default: TRUE)}

\item{separate_legend}{return plot and legend as separate objects? (Default: FALSE)}
}
\value{
List containing the circos plot and the legend
}
\description{
\code{make_circos_lr} Plot the prioritized ligand-receptor pairs in a circos plot (via the circlize package)
}
\examples{
\dontrun{
make_circos_lr(prioritized_tbl_oi, colors_sender, colors_receiver, cutoff = 0, scale = FALSE, transparency = NULL, circos_type = "normal", border = TRUE)
}

}
