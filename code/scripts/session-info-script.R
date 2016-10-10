#Diverts session info output to the designated file
sink("../../session-info.txt")
sessionInfo()
sink()
