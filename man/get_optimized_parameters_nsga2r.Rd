% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parameter_optimization.R
\name{get_optimized_parameters_nsga2r}
\alias{get_optimized_parameters_nsga2r}
\title{Get optimized parameters from the output of \code{run_nsga2R_cluster}.}
\usage{
get_optimized_parameters_nsga2(result_nsga2r, source_names, search_all_iterations = FALSE, top_n = NULL, summarise_weights = TRUE)
}
\arguments{
\item{result_nsga2r}{The output of \code{run_nsga2R_cluster}.}

\item{source_names}{Character vector containing the names of the data sources.}

\item{search_all_iterations}{Logical indicating whether the best solution across all generations should be considered (TRUE) or only the best solution at the end of the generations (FALSE).}

\item{top_n}{If search_all_iterations=TRUE, this indicates how many of the best solutions should be considered.}

\item{summarise_weights}{If search_all_iterations=TRUE, a logical indicating whether the weights should be summarised by taking the mean and median.}
}
\value{
A list containing two dataframes, the optimal data source weights and the optimal hyperparameters.
}
\description{
\code{get_optimized_parameters_nsga2} will take as input the output of \code{run_nsga2R_cluster} and extract the optimal parameter values, either from the best solution at the end of the generations or the best solution across all generations.
}
\examples{
\dontrun{
results <- run_nsga2R_cluster(model_evaluation_optimization_nsga2r, varNo=n_param, objDim=n_obj,
lowerBounds=lower_bounds, upperBounds=upper_bounds, popSize = 360, tourSize = 2, generations = 15, ncores = 8)

# Get the best solution at the end of the generations
optimized_parameters <- get_optimized_parameters_nsga2(results, source_names, search_all_iterations = FALSE, top_n = NULL, summarise_weights = TRUE)

# Get the best solution across all generations, consider top 25 solutions and summarise weights
optimized_parameters <- get_optimized_parameters_nsga2(results, source_names, search_all_iterations = TRUE, top_n = 25, summarise_weights = TRUE)
}

}
