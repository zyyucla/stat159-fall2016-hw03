#Diverts session info output to the designated file
sink("../../session-info.txt")
library(testthat)
library(knitr)
library(rmarkdown)
library(xtable)
sessionInfo()
sink()
