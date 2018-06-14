context("Test reticulate")
library(reticulate)

print("environement")
print(Sys.getenv("TRAVIS_BUILD_DIR"))
print(list.files(Sys.getenv("TRAVIS_BUILD_DIR")))
print("source build script")

source(paste0(Sys.getenv("TRAVIS_BUILD_DIR"), "/testreticulate/build_ci_env.R"))

reticulate::use_condaenv("seurat_py_deps")
print("first test")
reticulate::py_module_available("numpy")
expect_true(reticulate::py_module_available("numpy"))
expect_true(reticulate::py_module_available("scanpy"))
expect_true(reticulate::py_module_available("phate"))