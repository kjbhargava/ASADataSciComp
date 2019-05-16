getwd()
setwd("C:/Users/karan/Desktop/ASADataSciComp/R_Code")
getwd()

#data.frame1 is ownedNYCHVS
data.frame1 <- read.csv("../owned_NY_Data_Final.csv")

#data.frame2 is rentedNYCHVS
data.frame2 <- read.csv("../rented_NY_Data_Final.csv")
View(data.frame1)
View(data.frame2)

library(lawstat)
library(ape)

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

gini.index(data.frame2$num_rooms)
#data:  data.frame2$num_rooms
#Gini Index = 0.20939, delta = 1.5303

gini.index(data.frame2$num_bedrooms)
#data:  data.frame2$num_bedrooms
#Gini Index = 0.19499, delta = 1.061

gini.index(data.frame2$monthly_rent)
#data:  data.frame2$monthly_rent
#Gini Index = 0.80992, delta = 22919

gini.index(data.frame2$outofpocket_rent)
#data:  data.frame2$outofpocket_rent
#Gini Index = 0.81604, delta = 23298

gini.index(data.frame2$hhinc)
#data:  data.frame2$hhinc
#Gini Index = 0.79677, delta = 289610

gini.index(data.frame2$num_under6)
#data:  data.frame2$num_under6
#Gini Index = 0.13158, delta = 0.30872

gini.index(data.frame2$num_under18)
#data:  data.frame2$num_under18
#Gini Index = 0.26486, delta = 0.79821

#cluster with low gini index
#number under 6 for owned homes and number under 6 for rented homes


#grouping of about 1% of the data with number of under 6 year olds in 
#rented home (4 child leafs/groupings)

length(data.frame2$num_under6)
arr_dist <- dist(data.frame2$num_under6, method = "euclidean")
arr_clust <-hclust(arr_dist)
arr_tree<-as.phylo(arr_clust)
plot(arr_tree,cex = .5)

#grouping of about 1% of the data with number of under 6 year olds in 
#owned home (3 child leafs/groupings)

arr_dist2<- dist(data.frame1$num_under6, method = "euclidean")
arr_clust2 <- hclust(arr_dist2)
arr_tree2<-as.phylo(arr_clust2)
plot(arr_tree2,cex = .5)

#cluster with the highest gini index scores
#broken windows for owned homes
#out of pocket rent for rented homes
#(crap ton of branching )
arr_dist3<- dist(data.frame2$outofpocket_rent, method = "euclidean")
arr_clust3 <- hclust(arr_dist3)
arr_tree3<-as.phylo(arr_clust3)
plot(arr_tree3,cex = .5)

#broken windows for owned homes
#2 branches
arr_dist4<- dist(data.frame1$ï..broken_windows, method = "euclidean")
arr_clust4 <- hclust(arr_dist4)
arr_tree4<-as.phylo(arr_clust4)
plot(arr_tree4,cex = .5)


#middle value gini indices
#number of stories for both owned
#and rented homes
#7 branches
#this is owned homes
arr_dist5<- dist(data.frame1$num_stories, method = "euclidean")
arr_clust5 <- hclust(arr_dist5)
arr_tree5<-as.phylo(arr_clust5)
plot(arr_tree5,cex = .5)


#and rented homes
#also 7 branches
arr_dist6<- dist(data.frame2$num_stories, method = "euclidean")
arr_clust6 <- hclust(arr_dist6)
arr_tree6<-as.phylo(arr_clust6)
plot(arr_tree6,cex = .5)
