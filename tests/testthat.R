library(reticulate)

print("Create env")

# Create a conda environment:
if (!("rettest" %in% conda_list()$name)) {
    print("Create")
    conda_create("rettest")
    print("Install")
    conda_install("rettest", c("python=3.6", "numpy", "seaborn", "scikit-learn", "statsmodels", "numba", "cython"), forge=F)
    sysname = Sys.info()[["sysname"]]
    if (sysname == "Linux") {
        conda_install("rettest", c("scanpy", "phate"), pip=T)
    } else if (sysname == "Darwin") {
        conda_install("rettest", c("scanpy", "phate"), pip=T, pip_ignore_installed=F)
    } else if (sysname == "Windows") {
        conda_install("rettest", c("scanpy", "phate"), pip=T, pip_ignore_installed=F)
    } else {
        stop("Error: Current OS (", sysname, ") is not supported")
    }
    print("Activate")
    use_condaenv("rettest")
    # py_install("scanpy", envname="rettest")
}


print("Imports")

library(testthat)
library(testreticulate)

print("Start test")

test_check("testreticulate")



# conda_remove("retest")