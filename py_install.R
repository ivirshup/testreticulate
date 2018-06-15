#!/usr/bin/env Rscript
library(reticulate)
print("Create")
conda_create("rettest")
print("Install")
conda_install("rettest", c("python=3.6", "numpy", "seaborn", "scikit-learn", "statsmodels", "numba", "cython"), forge=F)
print("Install: scanpy")
if (Sys.info()[["sysname"]] == "Linux") {
    conda_install("rettest", c("scanpy", "phate"), pip=T)
} else if (Sys.info()[["sysname"]] == "Darwin") {
    conda_install("rettest", c("scanpy", "phate"), pip=T, pip_ignore_installed=F)
}
print("Activate")
use_condaenv("rettest")
