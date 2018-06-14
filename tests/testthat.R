library(reticulate)

print("Create env")

# Create a conda environment:
if (!("rettest" %in% conda_list()$name)) {
    print("Create")
    conda_create("rettest")
    print("Install")
    conda_install("rettest", c("python=3.6", "numpy"), forge=F)
    print("Install: scanpy")
    conda_install("rettest", "scanpy", pip=T)
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