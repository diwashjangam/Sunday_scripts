# this is a script to explore the gapminder dataset using R
#Diwash Jangam
# #diwash.jangam@mavs.uta.edu
#Apr 19th 2015
#installed
#Install packages
install.packages("dplyr", dependencies=TRUE)

#first you need to load after you install, this line needs to be here.
library("dplyr")


# read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", sep="\t", header=TRUE)

# %>% in equivilent to | in shell.using dplyr
gap.in %>% 
  filter(pop>15000000) %>%
  select(country,year,pop) %>%
  group_by(country)%>%
  summarize(min=min(pop))

#calculate mean population per continent across per years prior to 1990
gap.in %>% 
  group_by(continent, year)%>%
  filter(year<1990)%>%
  summarize(mean(pop))%>%
#print the full length data in the console.
  as.data.frame()



  
