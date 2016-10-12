.PHONY: data tests eda regression report clean all

data:
 curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > data/Advertising.csv

tests:
   cd code/tests; Rscript -e "library(testthat);test_file('test-regression.R')"

eda:
   cd code/scripts; Rscript eda-script.R; rm Rplots.pdf; mv eda-output.txt ../../data

regression:
  cd code/scripts; Rscript regression-script.R
   
report:
 cd report && Rscript -r "Library(rmarkdown);render('report.Rmd')"
 
clean:
   rm -f report/report.Rmd report/report.pdf

all: eda regression report 
   
