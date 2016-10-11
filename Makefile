.PHONY: data tests eda regression report clean all
tests:
   cd code && Rscript -e "library(testthat);test_dir("tests")"
   
