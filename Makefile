 .PHONY: data tests eda regression report clean all

 data:
   curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > data/Advertising.csv

 tests:
   cd code/tests && Rscript -e "library(testthat);test_dir("tests")"

 eda:
   cd code/scripts; Rscript eda-script.R; rm Rplots.pdf; mv eda-output.txt ../../data

 regression:
   
 report:

 clean:
   rm -f report/report.rmd report/report.pdf

 all: eda regression report 
   
