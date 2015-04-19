# this is a script to explore the gapminder dataset using R
#Diwash Jangam
# #diwash.jangam@mavs.uta.edu
#Apr 19th 2015

#Install packages
install.packages("dplyr", dependencies=TRUE)

#first you need to load after you install, this line needs to be here.
library("dplyr")

# read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", sep="\t", header=TRUE)

