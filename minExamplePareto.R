#####################################################
# This is an R script I use when doing development work on the package. The end user should not have a need to use this script.
#
# Used to write and test code for looking at different voting Rules
#
#####################################################
rm(list = ls(all = TRUE))


##############################################
## LOAD THE PACKAGES (Install if not loaded):
##############################################



#library(voteR)
library(MinimumRcpp)


####################################################################
# 
####################################################################

set.seed(123) # for development purposes


# 1) Create three voter data frames to test with:



staticVoterDataFrame1 <- data.frame(pointType = rep(x = "voter", 3), ID = c("V-1", "V-2", "V-3"), xLocation=c(-1/8, 7/8, 4/8), yLocation=c(3/8, 4/8, -3/8), minkoOrder=c(2, 2, 2), xSalience = c(1, 1, 1), ySalience = c(1, 1, 1), lossOrder = c(1, 1, 1) )



# 2) Find the Pareto Set of the Group of Voters using undelying Rcpp function



paretoSetS1 <- findParetoSet( cbind(staticVoterDataFrame1$xLocation, staticVoterDataFrame1$yLocation) )

paretoSetS1



# DO NOT RUN

findParetoSet(staticVoterDataFrame1)


