context("Test reticulate")

reticulate::py_module_available("numpy")
expect_true(reticulate::py_module_available("numpy"))
