context("Test reticulate")
print("first test")
expect_true(reticulate::py_module_available("numpy"))
expect_true(reticulate::py_module_available("scanpy"))
expect_true(reticulate::py_module_available("phate"))
