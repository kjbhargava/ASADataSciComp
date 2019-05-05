getwd()
setwd("C:/Users/karan/Desktop/ASADataSciComp/R_Code")
getwd()

#data.frame1 is ownedNYCHVS
data.frame1 <- read.csv("../ownedNYCHVS_midterm2.csv")

#data.frame2 is rentedNYCHVS
data.frame2 <- read.csv("../rentedNYCHVS_midterm3.csv")
View(data.frame1)
View(data.frame2)

library(lawstat)

###################################################
#owned homes Gini Index

gini.index(data.frame1$broken_windows)
#data:  data.frame1$broken_windows
#Gini Index = 0.95236, delta = 0.090879

gini.index(data.frame1$value)
#data:  data.frame1$value
#Gini Index = 0.44563, delta = 596600

gini.index(data.frame1$num_units)
#data:  data.frame1$num_units
#Gini Index = 0.45363, delta = 5.3803

gini.index(data.frame1$num_stories)
#data:  data.frame1$num_stories
#Gini Index = 0.40452, delta = 2.3703

gini.index(data.frame1$num_rooms)
#data:  data.frame1$num_rooms
#Gini Index = 0.19089, delta = 1.8849

gini.index(data.frame1$hhinc)
#data:  data.frame1$hhinc
#Gini Index = 0.53058, delta = 135990

gini.index(data.frame1$num_under6)
#data:  data.frame1$num_under6
#Gini Index = 0.10966, delta = 0.24919

gini.index(data.frame1$num_under18)
#data:  data.frame1$num_under18
#Gini Index = 0.25873, delta = 0.76717

#################################################
#rented Homes Gini Index
gini.index(data.frame2$num_units)
#data:  data.frame2$num_units
#Gini Index = 0.23161, delta = 4.2021

gini.index(data.frame2$num_stories)
#data:  data.frame2$num_stories
#Gini Index = 0.2812, delta = 2.1467
