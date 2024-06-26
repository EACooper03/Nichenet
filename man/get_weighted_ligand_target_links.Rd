% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/application_prediction.R
\name{get_weighted_ligand_target_links}
\alias{get_weighted_ligand_target_links}
\title{Infer weighted active ligand-target links between a possible ligand and target genes of interest}
\usage{
get_weighted_ligand_target_links(ligand, geneset,ligand_target_matrix,n = 250)
}
\arguments{
\item{ligand}{Character vector giving the gene symbols of the potentially active ligand for which you want to find target genes.}

\item{geneset}{Character vector of the gene symbols of genes of which the expression is potentially affected by ligands from the interacting cell.}

\item{ligand_target_matrix}{The NicheNet ligand-target matrix denoting regulatory potential scores between ligands and targets (ligands in columns).}

\item{n}{The top n of targets per ligand that will be considered. Default: 250.}
}
\value{
A tibble with columns ligand, target and weight (i.e. regulatory potential score).
}
\description{
\code{get_weighted_ligand_target_links} Infer active ligand target links between possible ligands and genes belonging to a gene set of interest: consider the intersect between the top n targets of a ligand and the gene set.
}
\examples{
\dontrun{
weighted_networks = construct_weighted_networks(lr_network, sig_network, gr_network,source_weights_df)
ligands = list("TNF","BMP2","IL4")
ligand_target_matrix = construct_ligand_target_matrix(weighted_networks, ligands, ltf_cutoff = 0, algorithm = "PPR", damping_factor = 0.5, secondary_targets = FALSE)
potential_ligand = "TNF"
geneset = c("SOCS2","SOCS3", "IRF1")
active_ligand_target_links_df = get_weighted_ligand_target_links(ligand = potential_ligand, geneset = geneset, ligand_target_matrix = ligand_target_matrix, n = 250)
}

}
