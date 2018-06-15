if (Sys.getenv("TRAVIS") == "true") {
  reticulate::use_condaenv("rettest")
}
