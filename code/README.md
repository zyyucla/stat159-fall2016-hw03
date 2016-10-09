This folder contains all the R files for producing summary statistics and corresponding plot. _eda-script.R_ reads data from Advertising.csv and computes summary statistics and histograms for all the variables.

_regression-script.R_ reads data from Advertising.csv and computes a "regression" object stored in the file _regression.RData_.
This script also produces the three diagnostics plots residual-plot.png,scale-location-plot.png, and normal-qq-plot.png in the _images_ folder.

_session-info-script.R_ is a script that includes s library() calls to all the
packages that used for the project, as well as the output of the function sessionInfo().
