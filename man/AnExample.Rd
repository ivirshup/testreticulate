\name{AnExample}
\alias{AnExample}
\title{An Example}
\description{a dummy test}
\examples{

if (reticulate::py_module_available("phate")) {

library(reticulate)
phate = import("phate")
print("phate is installed, and doesn't even crash R on loading.")

} else { 
  print(reticulate::py_config())
  print(reticulate::py_module_available("anndata"))
}

}
\references{
Moon K, van Dijk D, Wang Z, Burkhardt D, Chen W, van den Elzen A,
Hirn M, Coifman R, Ivanova N, Wolf G and Krishnaswamy S (2017).
"Visualizing Transitions and Structure for High Dimensional Data
Exploration." _bioRxiv_, pp. 120378. doi: 10.1101/120378
(URL: http://doi.org/10.1101/120378),
<URL: https://www.biorxiv.org/content/early/2017/12/01/120378>.
}
