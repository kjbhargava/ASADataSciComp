rm(list = ls())


# Data-only data frame (with no headers):
nych91 <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH1991.csv", skip = 2, header = FALSE)
# Temporary data frame from which to extract the first row of headers:
tmp <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH1991.csv", header = TRUE)
# Use headers from tmp for nych17:
names(nych91) <- names(tmp)
# Remove the temporary data frame:
rm(tmp)
# Data-only data frame (with no headers):
nych93 <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH1993.csv", skip = 2, header = FALSE)
# Temporary data frame from which to extract the first row of headers:
tmp <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH1993.csv", header = TRUE)
# Use headers from tmp for nych17:
names(nych93) <- names(tmp)
# Remove the temporary data frame:
rm(tmp)
# Data-only data frame (with no headers):
nych96 <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH1996.csv", skip = 2, header = FALSE)
# Temporary data frame from which to extract the first row of headers:
tmp <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH1996.csv", header = TRUE)
# Use headers from tmp for nych17:
names(nych96) <- names(tmp)
# Remove the temporary data frame:
rm(tmp)
# Data-only data frame (with no headers):
nych99 <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH1999.csv", skip = 2, header = FALSE)
# Temporary data frame from which to extract the first row of headers:
tmp <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH1999.csv", header = TRUE)
# Use headers from tmp for nych17:
names(nych99) <- names(tmp)
# Remove the temporary data frame:
rm(tmp)
# Data-only data frame (with no headers):
nych02 <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH2002.csv", skip = 2, header = FALSE)
# Temporary data frame from which to extract the first row of headers:
tmp <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH2002.csv", header = TRUE)
# Use headers from tmp for nych17:
names(nych02) <- names(tmp)
# Remove the temporary data frame:
rm(tmp)
# Data-only data frame (with no headers):
nych05 <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH2005.csv", skip = 2, header = FALSE)
# Temporary data frame from which to extract the first row of headers:
tmp <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH2005.csv", header = TRUE)
# Use headers from tmp for nych17:
names(nych05) <- names(tmp)
# Remove the temporary data frame:
rm(tmp)
# Data-only data frame (with no headers):
nych08 <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH2008.csv", skip = 2, header = FALSE)
# Temporary data frame from which to extract the first row of headers:
tmp <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH2008.csv", header = TRUE)
# Use headers from tmp for nych17:
names(nych08) <- names(tmp)
# Remove the temporary data frame:
rm(tmp)
# Data-only data frame (with no headers):
nych11 <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH2011.csv", skip = 2, header = FALSE)
# Temporary data frame from which to extract the first row of headers:
tmp <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH2011.csv", header = TRUE)
# Use headers from tmp for nych17:
names(nych11) <- names(tmp)
# Remove the temporary data frame:
rm(tmp)
# Data-only data frame (with no headers):
nych14 <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH2014.csv", skip = 2, header = FALSE)
# Temporary data frame from which to extract the first row of headers:
tmp <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH2014.csv", header = TRUE)
# Use headers from tmp for nych17:
names(nych14) <- names(tmp)
# Remove the temporary data frame:
rm(tmp)
# Data-only data frame (with no headers):
nych17 <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH2017.csv", skip = 2, header = FALSE)
# Temporary data frame from which to extract the first row of headers:
tmp <- read.csv("C:\\Users\\maybe\\Desktop\\R\\NYCH2017.csv", header = TRUE)
# Use headers from tmp for nych17:
names(nych17) <- names(tmp)
# Remove the temporary data frame:
rm(tmp)


nych91c <- nych91 %>%
  select(borough, 
         X_d3, X_d4, X_d5,
         X_e1, X_e2, X_e3, X_e4, 
         X_f1, X_f2, X_f3,
         X_g3, X_g4, X_g5,
         X_h,
         X_i,
         X_1b, X_1c, X_1e, X_1f,
         X_2,
         X_3,
         X_4a, 
         X_5,
         X_6,
         X_7a, X_7b, X_7c,
         X_8,
         X_9a, X_9c,
         X_12b, X_12b2,
         X_13,
         X_14,
         X_20,
         X_21,
         X_22a,
         X_23a,
         X_24a, X_24b,
         X_25a, X_25b, X_25c,
         X_26a, X_26b, X_26c,
         X_27,
         X_28a1, X_28a2, X_28b1, X_28b2, X_28c, X_28d1, X_28d2, X_28e1, X_28e2,
         X_29,
         X_32a, X_32b,
         X_33,
         X_35a, X_35c,
         X_36a, X_36b,
         X_38a,
         X_39,
         scr,
         tsc,
         ybr,
         hcr,
         npr,
         mgrent,
         hhinc, hhiwages, hhincf, hhiint, hhiss, hhissi, hhincdis, hhincva)
         
         
nych93c <- nych93 %>%
  select(borough, 
         X_d3, X_d4, X_d5,
         X_e1, X_e2, X_e3, X_e4, 
         X_f1, X_f2, X_f3,
         X_g3, X_g4, X_g5,
         X_h,
         X_i,
         X_1b, X_1c, X_1e, X_1f,
         X_2,
         X_3,
         X_4a, 
         X_5,
         X_6,
         X_7a, X_7b, X_7c,
         X_8,
         X_9a, X_9c,
         X_12b, X_12b2,
         X_13,
         X_14,
         X_20,
         X_21,
         X_22a,
         X_23a,
         X_24a, X_24b,
         X_25a, X_25b, X_25c,
         X_26a, X_26b, X_26c,
         X_27,
         X_28a1, X_28a2, X_28b1, X_28b2, X_28c, X_28d1, X_28d2, X_28e1, X_28e2,
         X_29,
         X_32a, X_32b,
         X_33,
         X_35a, X_35c,
         X_36a, X_36b,
         X_38a,
         X_39,
         scr,
         tsc,
         ybr,
         hcr,
         npr,
         mgrent,
         hhinc, hhiwages, hhincf, hhiint, hhiss, hhissi, hhincdis, hhincva)

nych96$X_2 <- nych96$X_2a + nych96$X_2b 

nych96c <- nych96 %>%
  select(borough, 
         X_d3, X_d4, X_d5,
         X_e1, X_e2, X_e3, X_e4, 
         X_f1, X_f2, X_f3,
         X_g3, X_g4, X_g5,
         X_h,
         X_i,
         X_1b, X_1c, X_1e, X_1f,
         X_2,
         X_3,
         X_4a,
         X_5,
         X_6,
         X_7a, X_7b, X_7c,
         X_8,
         X_9a, X_9c,
         X_12b, X_12b2,
         X_13,
         X_14,
         X_20,
         X_21,
         X_22a,
         X_23a,
         X_24a, X_24b,
         X_25a, X_25b, X_25c,
         X_26a, X_26b, X_26c,
         X_27,
         X_28a1, X_28a2, X_28b1, X_28b2, X_28c, X_28d1, X_28d2, X_28e1, X_28e2,
         X_29,
         X_32a, X_32b,
         X_33,
         X_35a, X_35c,
         X_36a, X_36b,
         X_38a,
         X_39,
         scr,
         tsc,
         ybr,
         hcr,
         npr,
         mgrent,
         hhinc, hhiwages, hhincf, hhiint, hhiss, hhissi, hhincdis, hhincva)

nych99$X_2 <- nych99$X_2a + nych99$X_2b

nych99c <- nych99 %>%
  select(borough, 
         X_d3, X_d4, X_d5,
         X_e1, X_e2, X_e3, X_e4, 
         X_f1, X_f2, X_f3,
         X_g3, X_g4, X_g5,
         X_h,
         X_i,
         X_1b, X_1c, X_1e, X_1f,
         X_2,
         X_3,
         X_4a,
         X_5,
         X_6,
         X_7a, X_7b, X_7c,
         X_8,
         X_9a, X_9c,
         X_12b, X_12b2,
         X_13,
         X_14,
         X_20,
         X_21,
         X_22a,
         X_23a,
         X_24a, X_24b,
         X_25a, X_25b, X_25c,
         X_26a, X_26b, X_26c,
         X_27,
         X_28a1, X_28a2, X_28b1, X_28b2, X_28c, X_28d1, X_28d2, X_28e1, X_28e2,
         X_29,
         X_32a, X_32b,
         X_33,
         X_35a, X_35c,
         X_36a, X_36b,
         X_38a,
         X_39,
         scr,
         tsc,
         ybr,
         hcr,
         npr,
         mgrent,
         hhinc, hhiwages, hhincf, hhiint, hhiss, hhissi, hhincdis, hhincva)

nych02$X_2 <- nych02$X_2a + nych02$X_2b

nych02c <- nych02 %>%
  select(borough, 
         X_d3, X_d4, X_d5,
         X_e1, X_e2, X_e3, X_e4, 
         X_f1, X_f2, X_f3,
         X_g3, X_g4, X_g5,
         X_h,
         X_i,
         X_1b, X_1c, X_1e, X_1f,
         X_2,
         X_3,
         X_4a, 
         X_5,
         X_6,
         X_7a, X_7b, X_7c,
         X_8,
         X_9a, X_9c,
         X_12b, X_12b2,
         X_13,
         X_14,
         X_20,
         X_21,
         X_22a,
         X_23a,
         X_24a, X_24b,
         X_25a, X_25b, X_25c,
         X_26a, X_26b, X_26c,
         X_27,
         X_28a1, X_28a2, X_28b1, X_28b2, X_28c, X_28d1, X_28d2, X_28e1, X_28e2,
         X_29,
         X_32a, X_32b,
         X_33,
         X_35a, X_35c,
         X_36a, X_36b,
         X_38a,
         X_39,
         scr,
         tsc,
         ybr,
         hcr,
         npr,
         mgrent,
         hhinc, hhiwages, hhincf, hhiint, hhiss, hhissi, hhincdis, hhincva)

nych05$X_2 <- nych05$X_2a + nych05$X_2b

nych05c <- nych05 %>%
  select(borough, 
         X_d3, X_d4, X_d5,
         X_e1, X_e2, X_e3, X_e4, 
         X_f1, X_f2, X_f3,
         X_g3, X_g4, X_g5,
         X_h,
         X_i,
         X_1b, X_1c, X_1e, X_1f,
         X_2,
         X_3,
         X_4a, 
         X_5,
         X_6,
         X_7a, X_7b, X_7c,
         X_8,
         X_9a, X_9c,
         X_12b, X_12b2,
         X_13,
         X_14,
         X_20,
         X_21,
         X_22a,
         X_23a,
         X_24a, X_24b,
         X_25a, X_25b, X_25c,
         X_26a, X_26b, X_26c,
         X_27,
         X_28a1, X_28a2, X_28b1, X_28b2, X_28c, X_28d1, X_28d2, X_28e1, X_28e2,
         X_29,
         X_32a, X_32b,
         X_33,
         X_35a, X_35c,
         X_36a, X_36b,
         X_38a,
         X_39,
         scr,
         tsc,
         ybr,
         hcr,
         npr,
         mgrent,
         hhinc, hhiwages, hhincf, hhiint, hhiss, hhissi, hhincdis, hhincva)         


nych08$X_2 <- nych08$X_2a + nych08$X_2b

nych08c <- nych08 %>%
  select(borough, 
         X_d3, X_d4, X_d5,
         X_e1, X_e2, X_e3, X_e4, 
         X_f1, X_f2, X_f3,
         X_g3, X_g4, X_g5,
         X_h,
         X_i,
         X_1b, X_1c, X_1e, X_1f,
         X_2,
         X_3,
         X_4a, 
         X_5,
         X_6,
         X_7a, X_7b, X_7c,
         X_8,
         X_9a, X_9c,
         X_12b, X_12b2,
         X_13,
         X_14,
         X_20,
         X_21,
         X_22a,
         X_23a,
         X_24a, X_24b,
         X_25a, X_25b, X_25c,
         X_26a, X_26b, X_26c,
         X_27,
         X_28a1, X_28a2, X_28b1, X_28b2, X_28c, X_28d1, X_28d2, X_28e1, X_28e2,
         X_29,
         X_32a, X_32b,
         X_33,
         X_35a, X_35c,
         X_36a, X_36b,
         X_38a,
         X_39,
         scr,
         tsc,
         ybr,
         hcr,
         npr,
         mgrent,
         hhinc, hhiwages, hhincf, hhiint, hhiss, hhissi, hhincdis, hhincva)            

nych11$X_2 <- nych11$X_2a + nych11$X_2b

nych11c <- nych11 %>%
  select(borough, 
         X_d3, X_d4, X_d5,
         X_e1, X_e2, X_e3, X_e4, 
         X_f1, X_f2, X_f3,
         X_g3, X_g4, X_g5,
         X_h,
         X_i,
         X_1b, X_1c, X_1e, X_1f,
         X_2,
         X_3,
         X_4a, 
         X_5,
         X_6,
         X_7a, X_7b, X_7c,
         X_8,
         X_9a, X_9c,
         X_12b, X_12b2,
         X_13,
         X_14,
         X_20,
         X_21,
         X_22a,
         X_23a,
         X_24a, X_24b,
         X_25a, X_25b, X_25c,
         X_26a, X_26b, X_26c,
         X_27,
         X_28a1, X_28a2, X_28b1, X_28b2, X_28c, X_28d1, X_28d2, X_28e1, X_28e2,
         X_29,
         X_32a, X_32b,
         X_33,
         X_35a, X_35c,
         X_36a, X_36b,
         X_38a,
         X_39,
         scr,
         tsc,
         ybr,
         hcr,
         npr,
         mgrent,
         hhinc, hhiwages, hhincf, hhiint, hhiss, hhissi, hhincdis, hhincva)  

nych14$X_2 <- nych14$X_2a + nych14$X_2b
                  
nych14c <- nych14 %>%
  select(borough, 
         X_d3, X_d4, X_d5,
         X_e1, X_e2, X_e3, X_e4, 
         X_f1, X_f2, X_f3,
         X_g3, X_g4, X_g5,
         X_h,
         X_i,
         X_1b, X_1c, X_1e, X_1f,
         X_2,
         X_3,
         X_4a, 
         X_5,
         X_6,
         X_7a, X_7b, X_7c,
         X_8,
         X_9a, X_9c,
         X_12b, X_12b2,
         X_13,
         X_14,
         X_20,
         X_21,
         X_22a,
         X_23a,
         X_24a, X_24b,
         X_25a, X_25b, X_25c,
         X_26a, X_26b, X_26c,
         X_27,
         X_28a1, X_28a2, X_28b1, X_28b2, X_28c, X_28d1, X_28d2, X_28e1, X_28e2,
         X_29,
         X_32a, X_32b,
         X_33,
         X_35a, X_35c,
         X_36a, X_36b,
         X_38a,
         X_39,
         scr,
         tsc,
         ybr,
         hcr,
         npr,
         mgrent,
         hhinc, hhiwages, hhincf, hhiint, hhiss, hhissi, hhincdis, hhincva) 

nych17$X_25b <- rep(NA, len=nrow(nych17))
nych17$X_26b <- rep(NA, len=nrow(nych17))

nych17c <- nych17 %>%
  select(borough, 
         X_d3, X_d4, X_d5,
         X_e1, X_e2, X_e3, X_e4, 
         X_f1, X_f2, X_f3,
         X_g3, X_g4, X_g5,
         X_h,
         X_i,
         X_1b, X_1c, X_1e, X_1f,
         X_2,
         X_3,
         X_4a, 
         X_5,
         X_6,
         X_7a, X_7b, X_7c,
         X_8,
         X_9a, X_9c,
         X_12b, X_12b2,
         X_13,
         X_14,
         X_20,
         X_21,
         X_22a,
         X_23a,
         X_24a, X_24b,
         X_25a, X_25b, X_25c,
         X_26a, X_26b, X_26c,
         X_27,
         X_28a1, X_28a2, X_28b1, X_28b2, X_28c, X_28d1, X_28d2, X_28e1, X_28e2,
         X_29,
         X_32a, X_32b,
         X_33,
         X_35a, X_35c,
         X_36a, X_36b,
         X_38a,
         X_39,
         scr,
         tsc,
         ybr,
         hcr,
         npr,
         mgrent,
         hhinc, hhiwages, hhincf, hhiint, hhiss, hhissi, hhincdis, hhincva) 


##append year columns
nych91c$nychyear <- rep(1991, len=nrow(nych91c))
nych93c$nychyear <- rep(1993, len=nrow(nych93c))
nych96c$nychyear <- rep(1996, len=nrow(nych96c))
nych99c$nychyear <- rep(1999, len=nrow(nych99c))
nych02c$nychyear <- rep(2002, len=nrow(nych02c))
nych05c$nychyear <- rep(2005, len=nrow(nych05c))
nych08c$nychyear <- rep(2008, len=nrow(nych08c))
nych11c$nychyear <- rep(2011, len=nrow(nych11c))
nych14c$nychyear <- rep(2014, len=nrow(nych14c))
nych17c$nychyear <- rep(2017, len=nrow(nych17c))

ncol(nychtotal)
ncol(nych17c)


##the crosswalk for borough is the same for all years
cbBorough <- data.frame(borough = c(1, 2, 3, 4, 5),
                        boroughName = c("Bronx", "Brooklyn", "Manhattan",
                                        "Queens", "Staten Island"))

##the crosswalk for all d-questions is the same for all years
#cbD12 <- data.frame(X_d12 = c(1,8,9), eWalls_MissingOrSloping = c("Applies", "Does not apply", NA))
#cbD1 <- data.frame(X_d1 = c(1,8,9), eWalls_Missing = c("Applies", "Does not apply", NA))  
#cbD2 <- data.frame(X_d2 = c(1,8,9), eWalls_Sloping = c("Applies", "Does not apply", NA)) 
cbD3 <- data.frame(X_d3 = c(1,8,9), eWalls_Cracks = c("Applies", "Does not apply", NA)) 
cbD4 <- data.frame(X_d4 = c(1,8,9), eWalls_LooseMaterial = c("Applies", "Does not apply", NA)) 
cbD5 <- data.frame(X_d5 = c(1,8,9), eWalls_NoProblems = c("Applies", "Does not apply", NA)) 

##the crosswalk for all e-questions is the same for all years
cbE1 <- data.frame(X_e1 = c(1,8,9), eWindows_Missing = c("Applies", "Does not apply", NA))  
cbE2 <- data.frame(X_e2 = c(1,8,9), eWindows_Loose = c("Applies", "Does not apply", NA)) 
cbE3 <- data.frame(X_e3 = c(1,8,9), eWindows_Boarded = c("Applies", "Does not apply", NA)) 
cbE4 <- data.frame(X_e4 = c(1,8,9), eNoProblems = c("Applies", "Does not apply", NA)) 

##the crosswalk for all f-questions is the same for all years
cbF1 <- data.frame(X_f1 = c(1,8,9), eiStair_MissingStair = c("Applies", "Does not apply", NA))  
cbF2 <- data.frame(X_f2 = c(1,8,9), eiStair_MissingStep = c("Applies", "Does not apply", NA)) 
cbF3 <- data.frame(X_f3 = c(1,8,9), eiStair_NoProblems = c("Applies", "Does not apply", NA)) 

##the crosswalk for all g-questions is the same for all years
#cbG12 <- data.frame(X_g12 = c(1,8,9), floors_SlopingOrShiftedDoor = c("Applies", "Does not apply", NA))
#cbG1 <- data.frame(X_g1 = c(1,8,9), floors_Sloping = c("Applies", "Does not apply", NA))  
#cbG2 <- data.frame(X_g2 = c(1,8,9), floors_ShiftedDoor = c("Applies", "Does not apply", NA)) 
cbG3 <- data.frame(X_g3 = c(1,8,9), floors_DeepWear = c("Applies", "Does not apply", NA)) 
cbG4 <- data.frame(X_g4 = c(1,8,9), floors_Holes = c("Applies", "Does not apply", NA)) 
cbG5 <- data.frame(X_g5 = c(1,8,9), floors_NoProblems = c("Applies", "Does not apply", NA))

##the crosswalk for h is the same for all years
cbH <- data.frame(X_h = c(1,2,3,8), condOfBuilding = c("Dilapidated", "Sound", "Deteriorating", NA))

##the crosswalk for i is the same for all years
cbI <- data.frame(X_i = c(1,2,8), nearbyBrokenWindows = c("Yes", "No", NA))

##the crosswalk for all 1-questions is the same for all years
cb1b <- data.frame(X_1b = c(1,2), sex = c("Male", "Female"))
##X_1c is jus the age, no crosswalk needed
cb1e <- data.frame(X_1e = c(1,2,3,4,5,6,7,8), hispanicOrigin = c("No", "Puerto Rican", "Dominican", "Cuban", "South/Central American", "Mexican, Mexian-American, Chicano", "Other Spanish/Hispanic", "Not Reported"))
cb1f <- data.frame(X_1f = c(1,2,3,4,5,6,7,8,9,10), c("White", "Black", "American Indian or Alaskan Native", "Chinese", "Filipino", "Korean", "Asian Indian, Pakistani or Bangladeshi", "Other Asian", "Native Hawaiian", "Other"))


##questions 2, 2a and 2b are just numbers


##the crosswalk for all 3-questions is the same for all years
cb3 <- data.frame(X_3 = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,98), 
                  mostRecentLived = c("Always lived in this unit", "Other unit, same building", "Bronx", "Brooklyn", "Manhattan", "Queens", "Staten Island", "NY, NJ, Connecticut", "Other state", "Puerto Rico", "Dominican Republic", "Other Carribean", "Mexico", "Central/South America", "Canada", "Europe", "Russia", "China, Hong Kong, Taiwan", "Korea", "India", "Pakistan, Bangladesh", "Phillipines", "SE Asia", "Other Asia", "Africa", "All other countries", NA))

##question 4 is just a year value

##the crosswalk for question 5 is the same for all years
cb5 <- data.frame(X_5 = c(1,2,3,8), firstOccupantsOfUnit = c("Yes, first occupants", "No, previously occupied", "Don't know", NA))

##the crosswalk for question 6 is the same for all years
cb6 <- data.frame(X_6 = c(1:33,98,99), reasonForMove = c("Job transfer/New job", "Retirement", "Looking for work", "commuting reasons", "To attend school", "Other financial reasons", "Need larger living space", "Widowed", "Separated/divorced", "Newly married", "Moved to be with/closer to relatives", "Family decreased", "Wanted to establish separate household", "Other family reason", "Neighborhood overcrowded", "Change in racial or ethnic composition of neighborhood", "Wanted this neighborhood", "Crime or safety concerns", "Other neighborhood reason", "Wanted to own residence", "Wanted to rent residence", "Wanted less expensive residence", "Wanted better quality residence", "Evicted", "Poor building condition/services", "Harrassment by landlord", "Needed accessible housing", "other housing reason", "Displaced by public activity", "Displaced by private action", "Schools", "Natural disaster/fire", "Any other reason", NA, "Not applicable"))


##the crosswalk for question 7a, 7b and 7c is the same for all years
cb7a <- data.frame(X_7a = c(7,9,10:26,98), placeOfHouseholderBirth = c("New York City", "US, outside NYC", "Puerto Rico", "Dominican Republic", "Carribean Other", "Mexico", "Central/South America", "Canada", "Europe", "Russia", "China, Hong Kong, Taiwan", "Korea", "India", "Pakistan, Bangladesh", "Phillipines", "SE Asia", "Other Asia", "Africa", "All other countries", NA))
cb7b <- data.frame(X_7b = c(7,9,10:26,98), placeOfFathersBirth = c("New York City", "US, outside NYC", "Puerto Rico", "Dominican Republic", "Carribean Other", "Mexico", "Central/South America", "Canada", "Europe", "Russia", "China, Hong Kong, Taiwan", "Korea", "India", "Pakistan, Bangladesh", "Phillipines", "SE Asia", "Other Asia", "Africa", "All other countries", NA))
cb7c <- data.frame(X_7c = c(7,9,10:26,98), placeOfMothersBirth = c("New York City", "US, outside NYC", "Puerto Rico", "Dominican Republic", "Carribean Other", "Mexico", "Central/South America", "Canada", "Europe", "Russia", "China, Hong Kong, Taiwan", "Korea", "India", "Pakistan, Bangladesh", "Phillipines", "SE Asia", "Other Asia", "Africa", "All other countries", NA))

##the crosswalk for question 8 is the same for all years
cb8 <- data.frame(X_8 = 1:4, condoOrCoop = c("No", "Yes, a condo", "Yes, a cooperative", "Don't know"))

##the crosswalk for 9-questions is the same for all years
cb9a <- data.frame(X_9a = c(1,9), rentOrOwn = c("Owned or buying", "Renter occupied"))
cb9c <- data.frame(X_9c = c(2,3,9), rentCost = c("Pay cash rent", "Occupy rent free", "Owner occupied"))

##the crosswalk for 12-questions is the same for all years
##12b is just a number
cb12b2 <- data.frame(X_12b2 = c(0,8,9), downPaymentStatus = c("Don't know", NA, "Not applicable"))

##13 is just a number for all years

##the crosswalk for question 14 is the same for all years
cb14 <- data.frame(X_14 = c(1,2,8,9), mortgageStatus = c("Mortgage or similar loan", "Owned free and clear", NA, "Not applicable"))

##15 is just a number for all years

##the crosswalk for question 20 is the same for all years
cb20 <- data.frame(X_20 = 1:13, numberOfUnitsInBuilding = c("1 unit without business", "1 unit with business", "2 units without business", "2 units with business", "3 units", "4 units", "5 units", "6 to 9 units", "10 to 12 units", "13 to 19 units", "20 to 49 units", "50 to 99 units", "100 units or more"))

##the crosswalk for question 21 is the same for all years
cb21 <- data.frame(X_21 = c(1,2,3,8), ownerInBuilding = c("Yes", "No", "Don't know", NA))

##the crossawalk for question 22a is the same for all years
cb22a <- data.frame(X_22a = 1:7, storiesInBuilding = c("1 to 2 stories", "3 stories", "4 stories", "5 stories", "6 to 10 stories", "11 to 20 stories", "21 stories or more"))

##the crosswalk for question 23a is the same for all years
cb23a <- data.frame(X_23a = 1:2, passengerElevator = c("Yes", "No"))

##the crosswalk for question 24 is the same for all years
cb24a <- data.frame(X_24a = 1:8, numberOfRooms = c("1 room", "2 rooms", "3 rooms", "4 rooms", "5 rooms", "6 rooms", "7 rooms", "8 rooms or more"))
cb24b <- data.frame(X_24b = 1:9, numberOfBedrooms = c("No bedroom", "1 bedroom", "2 bedrooms", "3 bedrooms", "4 bedrooms", "5 bedrooms", "6 bedrooms", "7 bedrooms", "8 bedrooms or more"))

##the crosswalk for question 25 is the same for all years
cb25a <- data.frame(X_25a = 0:2, completePlumbing = c("Yes", "Some facilities but not all", "No plumbing facilities in unit"))
cb25b <- data.frame(X_25b = c(3,4,9), exclusivePlumbing = c("For the excusive use of house", "Also for use by another house", NA))
cb25c <- data.frame(X_25c = c(1:3,8:9), toiletBreakdowns = c("Yes", "No", "No toilet in unit", NA, "Incomplete plumbing facilties in unit"))

##the crosswalk for question 26 is the same for all years
cb26a <- data.frame(X_26a = c(0,1,2), completeKitchen = c("Yes", "Some facilities but not all", "No kitchen facilities in unit"))
cb26c <- data.frame(X_26c = c(1,2,8,9), kitchenFunction = c("Yes, all functioning", "No, something is not working at all", NA, "No"))

##the crosswalk for question 27 is the same for all years
cb27 <- data.frame(X_27 = 1:4, typeOfHeatingFuel = c("Fuel oil", "Utility gas", "Electricity", "Other fuel"))

##the crosswalk for question 28 is the same for all years
cb28a1 <- data.frame(X_28a1 = c(1,2,3,8), electricityPaidSeparate = c("Yes", "Yes, but combined with gas", "No, included in rent/fees", NA))
##cb28a2 is a number value no crosswalk needed
cb28b1 <- data.frame(X_28b1 = c(1,2,3,8,9), gasPaidSeparate = c("Yes", "No, included in rent/fees", "No, gas not used", NA, "Yes, but combined with electricity"))
##cb28b2 is a number value no crosswalk needed
##cb28c is a number value no crosswalk needed
cb28d1 <- data.frame(X_28d1 = c(1,2,8), waterAndSewerPaidSeparate = c("Yes", "No, included in rent/fees", NA))
##cb28d2 is a number value no crosswalk needed
cb28e1 <- data.frame(X_28e1 = c(1,2,3,8), otherFuelsPaidSeparate = c("Yes", "No, included in rent/fees", "No, other fuels not used", NA))
##cb28e2 is a number value no crosswalk needed

##the crosswak for 29 is the same for all years
cb29 <- data.frame(X_29 = 1:9, lengthOfLease = c("Less than 1 year", "1 year", "More than 1 year but less than 2 years", "2 years", "More than 2 years", "No lease", "Don't know", NA, "Not applicable (Owner occupied or rent free)"))

##the crosswalk for 32 is the same for all years
cb32a <- data.frame(X_32a = c(0,1,8), heatingEquipBreak = c("Yes", "No", NA))
cb32b <- data.frame(X_32b = c(2:5,8,9), numberOfHeatingBreaks = c("One time", "Two times", "Three times", "Four or more times", NA, "No breakdowns"))

##the crosswalk for 33 is the same for all years
cb33 <- data.frame(X_33 = c(1,2,8), additionalSourcesOfHeat = c("Yes", "No", NA))

##the crosswalk for 35 is the same for all years
cb35a <- data.frame(X_35a = c(1,2,8), presenceOfMice = c("Yes", "No", NA))
cb35c <- data.frame(X_35c = c(1:5,8), exterminatorService = c("Regularly", "Only when needed", "Irregularly", "Not at all", "Don't know", NA))

##the crosswalk for 36 is the same for all years
cb36a <- data.frame(X_36a = c(1,2,8), cracksOrHolesWalls = c("Yes", "No", NA))
cb36b <- data.frame(X_36b = c(1,2,8), holesInFloors = c("Yes", "No", NA))

##the crosswalk for 38 is the same for all years
cb38a <- data.frame(X_38a = c(1,2,8), waterLeakage = c("Yes", "No", NA))


##the crosswalk for 39 is the same for all years
cb39 <- data.frame(X_39 = c(1:4,8), ratingNeighborhood = c("Excellent", "Good", "Fair", "Poor", NA))

#the crosswalk for 51 is NOT the same for all years
#cb51 <- data.frame(X_51 = c(1,2,3,8), publicAssistance = c("Yes", "No", "Don't Know", NA))
#cb51a <- data.frame(X_51a = c(1,2,3,8), tanfOrAfdc = c("Yes", "No", "Don't Know", NA))
#cb51b <- data.frame(X_51b = c(1,2,3,8), safetyNet = c("Yes", "No", "Don't Know", NA))
#cb51c <- data.frame(X_51c = c(1,2,3,8), sSI = c("Yes", "No", "Don't Know", NA))
#cb51d <- data.frame(X_51 = c(1,2,3,8), publicAssistanceOther = c("Yes", "No", "Don't Know", NA))

##the crosswalk for scr is the same for all years
cbscr <- data.frame(scr = 1:13, structureClassRecode = c("Old law tenement (built pre 1901)", "New law tenement (built 1901-1929)", "Multiple built after 1929", "Apartment Hotel", "One or two family converted to apts", "Commercial building converted to apts", "Tenement building used for SRO", "One or two family converted to rooming house", "Misc Class B Stucture", NA, "Not found", "Data not available", "One or two family home"))

##the crosswalk for tsc is the same for all years
cbtsc <- data.frame(tsc = c(1:3, 12,13,15,16), typeOfScheduleCode = c("OwnerReg", "OwnerCoop", "OwnerCondo", "RenterPublicHousing", "RenterNewConstruction", "RenterInRem", "RenterOldConstruction"))

####################################
#################################
##############################
##THE CROSSWALK FOR YBR VARIES YEAR TO YEAR BOO
##For data 1991-2005
cbybrto2005 <- data.frame(ybr = 1:9, yearBuiltRecode = c("1990 or later", "1980-1989", "1970-1979", "1960-1969", "1947-1959", "1930-1946", "1920-1929", "1901-1919", "1900 or earlier"))
##For data 2006+
cbybrafter2005 <- data.frame(ybr = 1:10, yearBuiltRecode = c("2000 or later", "1990-1999", "1980-1989", "1970-1979", "1960-1969", "1947-1959", "1930-1946", "1920-1929", "1901-1919", "1900 or earlier"))

##the crosswalk for hcr is the same for all years
cbhcr <- data.frame(hcr = c(1:4, 6:9, 11:14), housholdComposition = c("Married couple only", "Married with children under 18", "Married, no children under 18", "Married, with other adults and children under 18","Female HH only", "Female HH with children under 18 only", "Female HH with no children under 18", "Female HH with other adults and children under 18", "Male HH only", "Male HH with children under 18 only", "Male HH with no children under 18", "Male HH with other adults and children under 18"))

##npr is a numerical value, no crosswalk needed

##mgrent is a numerical value, no crosswalk needed

##hhinc, hhiwages, hhincf, hhiint, hhiss, hhissi, hhincdis, hhincva are all numerical values, no crosswalks needed

#########################
###Crossing those walkies
###Borough
nych91c <- left_join(cbBorough, nych91c, by = "borough")
nych93c <- left_join(cbBorough, nych93c, by = "borough")
nych96c <- left_join(cbBorough, nych96c, by = "borough")
nych99c <- left_join(cbBorough, nych99c, by = "borough")
nych02c <- left_join(cbBorough, nych02c, by = "borough")
nych05c <- left_join(cbBorough, nych05c, by = "borough")
nych08c <- left_join(cbBorough, nych08c, by = "borough")
nych11c <- left_join(cbBorough, nych11c, by = "borough")
nych14c <- left_join(cbBorough, nych14c, by = "borough")
nych17c <- left_join(cbBorough, nych17c, by = "borough")

###X_d
#nych91c <- left_join(cbD1, nych91c, by = "X_d1")
#nych93c <- left_join(cbD1, nych93c, by = "X_d1")
#nych96c <- left_join(cbD1, nych96c, by = "X_d1")
#nych99c <- left_join(cbD1, nych99c, by = "X_d1")
#nych02c <- left_join(cbD1, nych02c, by = "X_d1")
#nych05c <- left_join(cbD1, nych05c, by = "X_d1")
#nych08c <- left_join(cbD1, nych08c, by = "X_d1")
#nych11c <- left_join(cbD1, nych11c, by = "X_d1")
#nych14c <- left_join(cbD1, nych14c, by = "X_d1")
#nych17c <- left_join(cbD12, nych17c, by = "X_d12")

#nych91c <- left_join(cbD2, nych91c, by = "X_d2")
#nych93c <- left_join(cbD2, nych93c, by = "X_d2")
#nych96c <- left_join(cbD2, nych96c, by = "X_d2")
#nych99c <- left_join(cbD2, nych99c, by = "X_d2")
#nych02c <- left_join(cbD2, nych02c, by = "X_d2")
#nych05c <- left_join(cbD2, nych05c, by = "X_d2")
#nych08c <- left_join(cbD2, nych08c, by = "X_d2")
#nych11c <- left_join(cbD2, nych11c, by = "X_d2")
#nych14c <- left_join(cbD2, nych14c, by = "X_d2")

nych91c <- left_join(cbD3, nych91c, by = "X_d3")
nych93c <- left_join(cbD3, nych93c, by = "X_d3")
nych96c <- left_join(cbD3, nych96c, by = "X_d3")
nych99c <- left_join(cbD3, nych99c, by = "X_d3")
nych02c <- left_join(cbD3, nych02c, by = "X_d3")
nych05c <- left_join(cbD3, nych05c, by = "X_d3")
nych08c <- left_join(cbD3, nych08c, by = "X_d3")
nych11c <- left_join(cbD3, nych11c, by = "X_d3")
nych14c <- left_join(cbD3, nych14c, by = "X_d3")
nych17c <- left_join(cbD3, nych17c, by = "X_d3")

nych91c <- left_join(cbD4, nych91c, by = "X_d4")
nych93c <- left_join(cbD4, nych93c, by = "X_d4")
nych96c <- left_join(cbD4, nych96c, by = "X_d4")
nych99c <- left_join(cbD4, nych99c, by = "X_d4")
nych02c <- left_join(cbD4, nych02c, by = "X_d4")
nych05c <- left_join(cbD4, nych05c, by = "X_d4")
nych08c <- left_join(cbD4, nych08c, by = "X_d4")
nych11c <- left_join(cbD4, nych11c, by = "X_d4")
nych14c <- left_join(cbD4, nych14c, by = "X_d4")
nych17c <- left_join(cbD4, nych17c, by = "X_d4")

nych91c <- left_join(cbD5, nych91c, by = "X_d5")
nych93c <- left_join(cbD5, nych93c, by = "X_d5")
nych96c <- left_join(cbD5, nych96c, by = "X_d5")
nych99c <- left_join(cbD5, nych99c, by = "X_d5")
nych02c <- left_join(cbD5, nych02c, by = "X_d5")
nych05c <- left_join(cbD5, nych05c, by = "X_d5")
nych08c <- left_join(cbD5, nych08c, by = "X_d5")
nych11c <- left_join(cbD5, nych11c, by = "X_d5")
nych14c <- left_join(cbD5, nych14c, by = "X_d5")
nych17c <- left_join(cbD5, nych17c, by = "X_d5")

###X_e
nych91c <- left_join(cbE1, nych91c, by = "X_e1")
nych93c <- left_join(cbE1, nych93c, by = "X_e1")
nych96c <- left_join(cbE1, nych96c, by = "X_e1")
nych99c <- left_join(cbE1, nych99c, by = "X_e1")
nych02c <- left_join(cbE1, nych02c, by = "X_e1")
nych05c <- left_join(cbE1, nych05c, by = "X_e1")
nych08c <- left_join(cbE1, nych08c, by = "X_e1")
nych11c <- left_join(cbE1, nych11c, by = "X_e1")
nych14c <- left_join(cbE1, nych14c, by = "X_e1")
nych17c <- left_join(cbE1, nych17c, by = "X_e1")

nych91c <- left_join(cbE2, nych91c, by = "X_e2")
nych93c <- left_join(cbE2, nych93c, by = "X_e2")
nych96c <- left_join(cbE2, nych96c, by = "X_e2")
nych99c <- left_join(cbE2, nych99c, by = "X_e2")
nych02c <- left_join(cbE2, nych02c, by = "X_e2")
nych05c <- left_join(cbE2, nych05c, by = "X_e2")
nych08c <- left_join(cbE2, nych08c, by = "X_e2")
nych11c <- left_join(cbE2, nych11c, by = "X_e2")
nych14c <- left_join(cbE2, nych14c, by = "X_e2")
nych17c <- left_join(cbE2, nych17c, by = "X_e2")

nych91c <- left_join(cbE3, nych91c, by = "X_e3")
nych93c <- left_join(cbE3, nych93c, by = "X_e3")
nych96c <- left_join(cbE3, nych96c, by = "X_e3")
nych99c <- left_join(cbE3, nych99c, by = "X_e3")
nych02c <- left_join(cbE3, nych02c, by = "X_e3")
nych05c <- left_join(cbE3, nych05c, by = "X_e3")
nych08c <- left_join(cbE3, nych08c, by = "X_e3")
nych11c <- left_join(cbE3, nych11c, by = "X_e3")
nych14c <- left_join(cbE3, nych14c, by = "X_e3")
nych17c <- left_join(cbE3, nych17c, by = "X_e3")

nych91c <- left_join(cbE4, nych91c, by = "X_e4")
nych93c <- left_join(cbE4, nych93c, by = "X_e4")
nych96c <- left_join(cbE4, nych96c, by = "X_e4")
nych99c <- left_join(cbE4, nych99c, by = "X_e4")
nych02c <- left_join(cbE4, nych02c, by = "X_e4")
nych05c <- left_join(cbE4, nych05c, by = "X_e4")
nych08c <- left_join(cbE4, nych08c, by = "X_e4")
nych11c <- left_join(cbE4, nych11c, by = "X_e4")
nych14c <- left_join(cbE4, nych14c, by = "X_e4")
nych17c <- left_join(cbE4, nych17c, by = "X_e4")

###X_f
nych91c <- left_join(cbF1, nych91c, by = "X_f1")
nych93c <- left_join(cbF1, nych93c, by = "X_f1")
nych96c <- left_join(cbF1, nych96c, by = "X_f1")
nych99c <- left_join(cbF1, nych99c, by = "X_f1")
nych02c <- left_join(cbF1, nych02c, by = "X_f1")
nych05c <- left_join(cbF1, nych05c, by = "X_f1")
nych08c <- left_join(cbF1, nych08c, by = "X_f1")
nych11c <- left_join(cbF1, nych11c, by = "X_f1")
nych14c <- left_join(cbF1, nych14c, by = "X_f1")
nych17c <- left_join(cbF1, nych17c, by = "X_f1")

nych91c <- left_join(cbF2, nych91c, by = "X_f2")
nych93c <- left_join(cbF2, nych93c, by = "X_f2")
nych96c <- left_join(cbF2, nych96c, by = "X_f2")
nych99c <- left_join(cbF2, nych99c, by = "X_f2")
nych02c <- left_join(cbF2, nych02c, by = "X_f2")
nych05c <- left_join(cbF2, nych05c, by = "X_f2")
nych08c <- left_join(cbF2, nych08c, by = "X_f2")
nych11c <- left_join(cbF2, nych11c, by = "X_f2")
nych14c <- left_join(cbF2, nych14c, by = "X_f2")
nych17c <- left_join(cbF2, nych17c, by = "X_f2")

nych91c <- left_join(cbF3, nych91c, by = "X_f3")
nych93c <- left_join(cbF3, nych93c, by = "X_f3")
nych96c <- left_join(cbF3, nych96c, by = "X_f3")
nych99c <- left_join(cbF3, nych99c, by = "X_f3")
nych02c <- left_join(cbF3, nych02c, by = "X_f3")
nych05c <- left_join(cbF3, nych05c, by = "X_f3")
nych08c <- left_join(cbF3, nych08c, by = "X_f3")
nych11c <- left_join(cbF3, nych11c, by = "X_f3")
nych14c <- left_join(cbF3, nych14c, by = "X_f3")
nych17c <- left_join(cbF3, nych17c, by = "X_f3")


###X_g
#nych91c <- left_join(cbG1, nych91c, by = "X_g1")
#nych93c <- left_join(cbG1, nych93c, by = "X_g1")
#nych96c <- left_join(cbG1, nych96c, by = "X_g1")
#nych99c <- left_join(cbG1, nych99c, by = "X_g1")
#nych02c <- left_join(cbG1, nych02c, by = "X_g1")
#nych05c <- left_join(cbG1, nych05c, by = "X_g1")
#nych08c <- left_join(cbG1, nych08c, by = "X_g1")
#nych11c <- left_join(cbG1, nych11c, by = "X_g1")
#nych14c <- left_join(cbG1, nych14c, by = "X_g1")
#nych17c <- left_join(cbG1, nych14c, by = "X_g1")

#nych91c <- left_join(cbG2, nych91c, by = "X_g2")
#nych93c <- left_join(cbG2, nych93c, by = "X_g2")
#nych96c <- left_join(cbG2, nych96c, by = "X_g2")
#nych99c <- left_join(cbG2, nych99c, by = "X_g2")
#nych02c <- left_join(cbG2, nych02c, by = "X_g2")
#nych05c <- left_join(cbG2, nych05c, by = "X_g2")
#nych08c <- left_join(cbG2, nych08c, by = "X_g2")
#nych11c <- left_join(cbG2, nych11c, by = "X_g2")
#nych14c <- left_join(cbG2, nych14c, by = "X_g2")

nych91c <- left_join(cbG3, nych91c, by = "X_g3")
nych93c <- left_join(cbG3, nych93c, by = "X_g3")
nych96c <- left_join(cbG3, nych96c, by = "X_g3")
nych99c <- left_join(cbG3, nych99c, by = "X_g3")
nych02c <- left_join(cbG3, nych02c, by = "X_g3")
nych05c <- left_join(cbG3, nych05c, by = "X_g3")
nych08c <- left_join(cbG3, nych08c, by = "X_g3")
nych11c <- left_join(cbG3, nych11c, by = "X_g3")
nych14c <- left_join(cbG3, nych14c, by = "X_g3")
nych17c <- left_join(cbG3, nych17c, by = "X_g3")

nych91c <- left_join(cbG4, nych91c, by = "X_g4")
nych93c <- left_join(cbG4, nych93c, by = "X_g4")
nych96c <- left_join(cbG4, nych96c, by = "X_g4")
nych99c <- left_join(cbG4, nych99c, by = "X_g4")
nych02c <- left_join(cbG4, nych02c, by = "X_g4")
nych05c <- left_join(cbG4, nych05c, by = "X_g4")
nych08c <- left_join(cbG4, nych08c, by = "X_g4")
nych11c <- left_join(cbG4, nych11c, by = "X_g4")
nych14c <- left_join(cbG4, nych14c, by = "X_g4")
nych17c <- left_join(cbG4, nych17c, by = "X_g4")

nych91c <- left_join(cbG5, nych91c, by = "X_g5")
nych93c <- left_join(cbG5, nych93c, by = "X_g5")
nych96c <- left_join(cbG5, nych96c, by = "X_g5")
nych99c <- left_join(cbG5, nych99c, by = "X_g5")
nych02c <- left_join(cbG5, nych02c, by = "X_g5")
nych05c <- left_join(cbG5, nych05c, by = "X_g5")
nych08c <- left_join(cbG5, nych08c, by = "X_g5")
nych11c <- left_join(cbG5, nych11c, by = "X_g5")
nych14c <- left_join(cbG5, nych14c, by = "X_g5")
nych17c <- left_join(cbG5, nych17c, by = "X_g5")


###X_h
nych91c <- left_join(cbH, nych91c, by = "X_h")
nych93c <- left_join(cbH, nych93c, by = "X_h")
nych96c <- left_join(cbH, nych96c, by = "X_h")
nych99c <- left_join(cbH, nych99c, by = "X_h")
nych02c <- left_join(cbH, nych02c, by = "X_h")
nych05c <- left_join(cbH, nych05c, by = "X_h")
nych08c <- left_join(cbH, nych08c, by = "X_h")
nych11c <- left_join(cbH, nych11c, by = "X_h")
nych14c <- left_join(cbH, nych14c, by = "X_h")
nych17c <- left_join(cbH, nych17c, by = "X_h")


###X_i
nych91c <- left_join(cbI, nych91c, by = "X_i")
nych93c <- left_join(cbI, nych93c, by = "X_i")
nych96c <- left_join(cbI, nych96c, by = "X_i")
nych99c <- left_join(cbI, nych99c, by = "X_i")
nych02c <- left_join(cbI, nych02c, by = "X_i")
nych05c <- left_join(cbI, nych05c, by = "X_i")
nych08c <- left_join(cbI, nych08c, by = "X_i")
nych11c <- left_join(cbI, nych11c, by = "X_i")
nych14c <- left_join(cbI, nych14c, by = "X_i")
nych17c <- left_join(cbI, nych17c, by = "X_i")


###X_1
nych91c <- left_join(cb1b, nych91c, by = "X_1b")
nych93c <- left_join(cb1b, nych93c, by = "X_1b")
nych96c <- left_join(cb1b, nych96c, by = "X_1b")
nych99c <- left_join(cb1b, nych99c, by = "X_1b")
nych02c <- left_join(cb1b, nych02c, by = "X_1b")
nych05c <- left_join(cb1b, nych05c, by = "X_1b")
nych08c <- left_join(cb1b, nych08c, by = "X_1b")
nych11c <- left_join(cb1b, nych11c, by = "X_1b")
nych14c <- left_join(cb1b, nych14c, by = "X_1b")
nych17c <- left_join(cb1b, nych17c, by = "X_1b")

###x_1c - no crosswalk needed

nych91c <- left_join(cb1e, nych91c, by = "X_1e")
nych93c <- left_join(cb1e, nych93c, by = "X_1e")
nych96c <- left_join(cb1e, nych96c, by = "X_1e")
nych99c <- left_join(cb1e, nych99c, by = "X_1e")
nych02c <- left_join(cb1e, nych02c, by = "X_1e")
nych05c <- left_join(cb1e, nych05c, by = "X_1e")
nych08c <- left_join(cb1e, nych08c, by = "X_1e")
nych11c <- left_join(cb1e, nych11c, by = "X_1e")
nych14c <- left_join(cb1e, nych14c, by = "X_1e")
nych17c <- left_join(cb1e, nych17c, by = "X_1e")

nych91c <- left_join(cb1f, nych91c, by = "X_1f")
nych93c <- left_join(cb1f, nych93c, by = "X_1f")
nych96c <- left_join(cb1f, nych96c, by = "X_1f")
nych99c <- left_join(cb1f, nych99c, by = "X_1f")
nych02c <- left_join(cb1f, nych02c, by = "X_1f")
nych05c <- left_join(cb1f, nych05c, by = "X_1f")
nych08c <- left_join(cb1f, nych08c, by = "X_1f")
nych11c <- left_join(cb1f, nych11c, by = "X_1f")
nych14c <- left_join(cb1f, nych14c, by = "X_1f")
nych17c <- left_join(cb1f, nych17c, by = "X_1f")


###X_2 - no crosswalk needed

###X_3
nych91c <- left_join(cb3, nych91c, by = "X_3")
nych93c <- left_join(cb3, nych93c, by = "X_3")
nych96c <- left_join(cb3, nych96c, by = "X_3")
nych99c <- left_join(cb3, nych99c, by = "X_3")
nych02c <- left_join(cb3, nych02c, by = "X_3")
nych05c <- left_join(cb3, nych05c, by = "X_3")
nych08c <- left_join(cb3, nych08c, by = "X_3")
nych11c <- left_join(cb3, nych11c, by = "X_3")
nych14c <- left_join(cb3, nych14c, by = "X_3")
nych17c <- left_join(cb3, nych17c, by = "X_3")


###X_4 - no crosswalk needed


###X_5
nych91c <- left_join(cb5, nych91c, by = "X_5")
nych93c <- left_join(cb5, nych93c, by = "X_5")
nych96c <- left_join(cb5, nych96c, by = "X_5")
nych99c <- left_join(cb5, nych99c, by = "X_5")
nych02c <- left_join(cb5, nych02c, by = "X_5")
nych05c <- left_join(cb5, nych05c, by = "X_5")
nych08c <- left_join(cb5, nych08c, by = "X_5")
nych11c <- left_join(cb5, nych11c, by = "X_5")
nych14c <- left_join(cb5, nych14c, by = "X_5")
nych17c <- left_join(cb5, nych17c, by = "X_5")


###X_6
nych91c <- left_join(cb6, nych91c, by = "X_6")
nych93c <- left_join(cb6, nych93c, by = "X_6")
nych96c <- left_join(cb6, nych96c, by = "X_6")
nych99c <- left_join(cb6, nych99c, by = "X_6")
nych02c <- left_join(cb6, nych02c, by = "X_6")
nych05c <- left_join(cb6, nych05c, by = "X_6")
nych08c <- left_join(cb6, nych08c, by = "X_6")
nych11c <- left_join(cb6, nych11c, by = "X_6")
nych14c <- left_join(cb6, nych14c, by = "X_6")
nych17c <- left_join(cb6, nych17c, by = "X_6")


###X_7
nych91c <- left_join(cb7a, nych91c, by = "X_7a")
nych93c <- left_join(cb7a, nych93c, by = "X_7a")
nych96c <- left_join(cb7a, nych96c, by = "X_7a")
nych99c <- left_join(cb7a, nych99c, by = "X_7a")
nych02c <- left_join(cb7a, nych02c, by = "X_7a")
nych05c <- left_join(cb7a, nych05c, by = "X_7a")
nych08c <- left_join(cb7a, nych08c, by = "X_7a")
nych11c <- left_join(cb7a, nych11c, by = "X_7a")
nych14c <- left_join(cb7a, nych14c, by = "X_7a")
nych17c <- left_join(cb7a, nych17c, by = "X_7a")

nych91c <- left_join(cb7b, nych91c, by = "X_7b")
nych93c <- left_join(cb7b, nych93c, by = "X_7b")
nych96c <- left_join(cb7b, nych96c, by = "X_7b")
nych99c <- left_join(cb7b, nych99c, by = "X_7b")
nych02c <- left_join(cb7b, nych02c, by = "X_7b")
nych05c <- left_join(cb7b, nych05c, by = "X_7b")
nych08c <- left_join(cb7b, nych08c, by = "X_7b")
nych11c <- left_join(cb7b, nych11c, by = "X_7b")
nych14c <- left_join(cb7b, nych14c, by = "X_7b")
nych17c <- left_join(cb7b, nych17c, by = "X_7b")

nych91c <- left_join(cb7c, nych91c, by = "X_7c")
nych93c <- left_join(cb7c, nych93c, by = "X_7c")
nych96c <- left_join(cb7c, nych96c, by = "X_7c")
nych99c <- left_join(cb7c, nych99c, by = "X_7c")
nych02c <- left_join(cb7c, nych02c, by = "X_7c")
nych05c <- left_join(cb7c, nych05c, by = "X_7c")
nych08c <- left_join(cb7c, nych08c, by = "X_7c")
nych11c <- left_join(cb7c, nych11c, by = "X_7c")
nych14c <- left_join(cb7c, nych14c, by = "X_7c")
nych17c <- left_join(cb7c, nych17c, by = "X_7c")


###X_8
nych91c <- left_join(cb8, nych91c, by = "X_8")
nych93c <- left_join(cb8, nych93c, by = "X_8")
nych96c <- left_join(cb8, nych96c, by = "X_8")
nych99c <- left_join(cb8, nych99c, by = "X_8")
nych02c <- left_join(cb8, nych02c, by = "X_8")
nych05c <- left_join(cb8, nych05c, by = "X_8")
nych08c <- left_join(cb8, nych08c, by = "X_8")
nych11c <- left_join(cb8, nych11c, by = "X_8")
nych14c <- left_join(cb8, nych14c, by = "X_8")
nych17c <- left_join(cb8, nych17c, by = "X_8")


###X_9
nych91c <- left_join(cb9a, nych91c, by = "X_9a")
nych93c <- left_join(cb9a, nych93c, by = "X_9a")
nych96c <- left_join(cb9a, nych96c, by = "X_9a")
nych99c <- left_join(cb9a, nych99c, by = "X_9a")
nych02c <- left_join(cb9a, nych02c, by = "X_9a")
nych05c <- left_join(cb9a, nych05c, by = "X_9a")
nych08c <- left_join(cb9a, nych08c, by = "X_9a")
nych11c <- left_join(cb9a, nych11c, by = "X_9a")
nych14c <- left_join(cb9a, nych14c, by = "X_9a")
nych17c <- left_join(cb9a, nych17c, by = "X_9a")

nych91c <- left_join(cb9c, nych91c, by = "X_9c")
nych93c <- left_join(cb9c, nych93c, by = "X_9c")
nych96c <- left_join(cb9c, nych96c, by = "X_9c")
nych99c <- left_join(cb9c, nych99c, by = "X_9c")
nych02c <- left_join(cb9c, nych02c, by = "X_9c")
nych05c <- left_join(cb9c, nych05c, by = "X_9c")
nych08c <- left_join(cb9c, nych08c, by = "X_9c")
nych11c <- left_join(cb9c, nych11c, by = "X_9c")
nych14c <- left_join(cb9c, nych14c, by = "X_9c")
nych17c <- left_join(cb9c, nych17c, by = "X_9c")


###X_12
nych91c <- left_join(cb12b2, nych91c, by = "X_12b2")
nych93c <- left_join(cb12b2, nych93c, by = "X_12b2")
nych96c <- left_join(cb12b2, nych96c, by = "X_12b2")
nych99c <- left_join(cb12b2, nych99c, by = "X_12b2")
nych02c <- left_join(cb12b2, nych02c, by = "X_12b2")
nych05c <- left_join(cb12b2, nych05c, by = "X_12b2")
nych08c <- left_join(cb12b2, nych08c, by = "X_12b2")
nych11c <- left_join(cb12b2, nych11c, by = "X_12b2")
nych14c <- left_join(cb12b2, nych14c, by = "X_12b2")
nych17c <- left_join(cb12b2, nych17c, by = "X_12b2")


###X_13 - no crosswalk needed


###X_14
nych91c <- left_join(cb14, nych91c, by = "X_14")
nych93c <- left_join(cb14, nych93c, by = "X_14")
nych96c <- left_join(cb14, nych96c, by = "X_14")
nych99c <- left_join(cb14, nych99c, by = "X_14")
nych02c <- left_join(cb14, nych02c, by = "X_14")
nych05c <- left_join(cb14, nych05c, by = "X_14")
nych08c <- left_join(cb14, nych08c, by = "X_14")
nych11c <- left_join(cb14, nych11c, by = "X_14")
nych14c <- left_join(cb14, nych14c, by = "X_14")
nych17c <- left_join(cb14, nych17c, by = "X_14")




###X_20
nych91c <- left_join(cb20, nych91c, by = "X_20")
nych93c <- left_join(cb20, nych93c, by = "X_20")
nych96c <- left_join(cb20, nych96c, by = "X_20")
nych99c <- left_join(cb20, nych99c, by = "X_20")
nych02c <- left_join(cb20, nych02c, by = "X_20")
nych05c <- left_join(cb20, nych05c, by = "X_20")
nych08c <- left_join(cb20, nych08c, by = "X_20")
nych11c <- left_join(cb20, nych11c, by = "X_20")
nych14c <- left_join(cb20, nych14c, by = "X_20")
nych17c <- left_join(cb20, nych17c, by = "X_20")


###X_21
nych91c <- left_join(cb21, nych91c, by = "X_21")
nych93c <- left_join(cb21, nych93c, by = "X_21")
nych96c <- left_join(cb21, nych96c, by = "X_21")
nych99c <- left_join(cb21, nych99c, by = "X_21")
nych02c <- left_join(cb21, nych02c, by = "X_21")
nych05c <- left_join(cb21, nych05c, by = "X_21")
nych08c <- left_join(cb21, nych08c, by = "X_21")
nych11c <- left_join(cb21, nych11c, by = "X_21")
nych14c <- left_join(cb21, nych14c, by = "X_21")
nych17c <- left_join(cb21, nych17c, by = "X_21")


###X_22
nych91c <- left_join(cb22a, nych91c, by = "X_22a")
nych93c <- left_join(cb22a, nych93c, by = "X_22a")
nych96c <- left_join(cb22a, nych96c, by = "X_22a")
nych99c <- left_join(cb22a, nych99c, by = "X_22a")
nych02c <- left_join(cb22a, nych02c, by = "X_22a")
nych05c <- left_join(cb22a, nych05c, by = "X_22a")
nych08c <- left_join(cb22a, nych08c, by = "X_22a")
nych11c <- left_join(cb22a, nych11c, by = "X_22a")
nych14c <- left_join(cb22a, nych14c, by = "X_22a")
nych17c <- left_join(cb22a, nych17c, by = "X_22a")


###X_23
nych91c <- left_join(cb23a, nych91c, by = "X_23a")
nych93c <- left_join(cb23a, nych93c, by = "X_23a")
nych96c <- left_join(cb23a, nych96c, by = "X_23a")
nych99c <- left_join(cb23a, nych99c, by = "X_23a")
nych02c <- left_join(cb23a, nych02c, by = "X_23a")
nych05c <- left_join(cb23a, nych05c, by = "X_23a")
nych08c <- left_join(cb23a, nych08c, by = "X_23a")
nych11c <- left_join(cb23a, nych11c, by = "X_23a")
nych14c <- left_join(cb23a, nych14c, by = "X_23a")
nych17c <- left_join(cb23a, nych17c, by = "X_23a")


###X_24
nych91c <- left_join(cb24a, nych91c, by = "X_24a")
nych93c <- left_join(cb24a, nych93c, by = "X_24a")
nych96c <- left_join(cb24a, nych96c, by = "X_24a")
nych99c <- left_join(cb24a, nych99c, by = "X_24a")
nych02c <- left_join(cb24a, nych02c, by = "X_24a")
nych05c <- left_join(cb24a, nych05c, by = "X_24a")
nych08c <- left_join(cb24a, nych08c, by = "X_24a")
nych11c <- left_join(cb24a, nych11c, by = "X_24a")
nych14c <- left_join(cb24a, nych14c, by = "X_24a")
nych17c <- left_join(cb24a, nych17c, by = "X_24a")

nych91c <- left_join(cb24b, nych91c, by = "X_24b")
nych93c <- left_join(cb24b, nych93c, by = "X_24b")
nych96c <- left_join(cb24b, nych96c, by = "X_24b")
nych99c <- left_join(cb24b, nych99c, by = "X_24b")
nych02c <- left_join(cb24b, nych02c, by = "X_24b")
nych05c <- left_join(cb24b, nych05c, by = "X_24b")
nych08c <- left_join(cb24b, nych08c, by = "X_24b")
nych11c <- left_join(cb24b, nych11c, by = "X_24b")
nych14c <- left_join(cb24b, nych14c, by = "X_24b")
nych17c <- left_join(cb24b, nych17c, by = "X_24b")

###X_25
nych91c <- left_join(cb25a, nych91c, by = "X_25a")
nych93c <- left_join(cb25a, nych93c, by = "X_25a")
nych96c <- left_join(cb25a, nych96c, by = "X_25a")
nych99c <- left_join(cb25a, nych99c, by = "X_25a")
nych02c <- left_join(cb25a, nych02c, by = "X_25a")
nych05c <- left_join(cb25a, nych05c, by = "X_25a")
nych08c <- left_join(cb25a, nych08c, by = "X_25a")
nych11c <- left_join(cb25a, nych11c, by = "X_25a")
nych14c <- left_join(cb25a, nych14c, by = "X_25a")
nych17c <- left_join(cb25a, nych17c, by = "X_25a")

nych91c <- left_join(cb25c, nych91c, by = "X_25c")
nych93c <- left_join(cb25c, nych93c, by = "X_25c")
nych96c <- left_join(cb25c, nych96c, by = "X_25c")
nych99c <- left_join(cb25c, nych99c, by = "X_25c")
nych02c <- left_join(cb25c, nych02c, by = "X_25c")
nych05c <- left_join(cb25c, nych05c, by = "X_25c")
nych08c <- left_join(cb25c, nych08c, by = "X_25c")
nych11c <- left_join(cb25c, nych11c, by = "X_25c")
nych14c <- left_join(cb25c, nych14c, by = "X_25c")
nych17c <- left_join(cb25c, nych17c, by = "X_25c")


###X_26
nych91c <- left_join(cb26a, nych91c, by = "X_26a")
nych93c <- left_join(cb26a, nych93c, by = "X_26a")
nych96c <- left_join(cb26a, nych96c, by = "X_26a")
nych99c <- left_join(cb26a, nych99c, by = "X_26a")
nych02c <- left_join(cb26a, nych02c, by = "X_26a")
nych05c <- left_join(cb26a, nych05c, by = "X_26a")
nych08c <- left_join(cb26a, nych08c, by = "X_26a")
nych11c <- left_join(cb26a, nych11c, by = "X_26a")
nych14c <- left_join(cb26a, nych14c, by = "X_26a")
nych17c <- left_join(cb26a, nych17c, by = "X_26a")

nych91c <- left_join(cb26c, nych91c, by = "X_26c")
nych93c <- left_join(cb26c, nych93c, by = "X_26c")
nych96c <- left_join(cb26c, nych96c, by = "X_26c")
nych99c <- left_join(cb26c, nych99c, by = "X_26c")
nych02c <- left_join(cb26c, nych02c, by = "X_26c")
nych05c <- left_join(cb26c, nych05c, by = "X_26c")
nych08c <- left_join(cb26c, nych08c, by = "X_26c")
nych11c <- left_join(cb26c, nych11c, by = "X_26c")
nych14c <- left_join(cb26c, nych14c, by = "X_26c")
nych17c <- left_join(cb26c, nych17c, by = "X_26c")


###X_27
nych91c <- left_join(cb27, nych91c, by = "X_27")
nych93c <- left_join(cb27, nych93c, by = "X_27")
nych96c <- left_join(cb27, nych96c, by = "X_27")
nych99c <- left_join(cb27, nych99c, by = "X_27")
nych02c <- left_join(cb27, nych02c, by = "X_27")
nych05c <- left_join(cb27, nych05c, by = "X_27")
nych08c <- left_join(cb27, nych08c, by = "X_27")
nych11c <- left_join(cb27, nych11c, by = "X_27")
nych14c <- left_join(cb27, nych14c, by = "X_27")
nych17c <- left_join(cb27, nych17c, by = "X_27")


###X_28
nych91c <- left_join(cb28a1, nych91c, by = "X_28a1")
nych93c <- left_join(cb28a1, nych93c, by = "X_28a1")
nych96c <- left_join(cb28a1, nych96c, by = "X_28a1")
nych99c <- left_join(cb28a1, nych99c, by = "X_28a1")
nych02c <- left_join(cb28a1, nych02c, by = "X_28a1")
nych05c <- left_join(cb28a1, nych05c, by = "X_28a1")
nych08c <- left_join(cb28a1, nych08c, by = "X_28a1")
nych11c <- left_join(cb28a1, nych11c, by = "X_28a1")
nych14c <- left_join(cb28a1, nych14c, by = "X_28a1")
nych17c <- left_join(cb28a1, nych17c, by = "X_28a1")

nych91c <- left_join(cb28b1, nych91c, by = "X_28b1")
nych93c <- left_join(cb28b1, nych93c, by = "X_28b1")
nych96c <- left_join(cb28b1, nych96c, by = "X_28b1")
nych99c <- left_join(cb28b1, nych99c, by = "X_28b1")
nych02c <- left_join(cb28b1, nych02c, by = "X_28b1")
nych05c <- left_join(cb28b1, nych05c, by = "X_28b1")
nych08c <- left_join(cb28b1, nych08c, by = "X_28b1")
nych11c <- left_join(cb28b1, nych11c, by = "X_28b1")
nych14c <- left_join(cb28b1, nych14c, by = "X_28b1")
nych17c <- left_join(cb28b1, nych17c, by = "X_28b1")

###X_28c - no crosswalk needed

nych91c <- left_join(cb28d1, nych91c, by = "X_28d1")
nych93c <- left_join(cb28d1, nych93c, by = "X_28d1")
nych96c <- left_join(cb28d1, nych96c, by = "X_28d1")
nych99c <- left_join(cb28d1, nych99c, by = "X_28d1")
nych02c <- left_join(cb28d1, nych02c, by = "X_28d1")
nych05c <- left_join(cb28d1, nych05c, by = "X_28d1")
nych08c <- left_join(cb28d1, nych08c, by = "X_28d1")
nych11c <- left_join(cb28d1, nych11c, by = "X_28d1")
nych14c <- left_join(cb28d1, nych14c, by = "X_28d1")
nych17c <- left_join(cb28d1, nych17c, by = "X_28d1")

nych91c <- left_join(cb28e1, nych91c, by = "X_28e1")
nych93c <- left_join(cb28e1, nych93c, by = "X_28e1")
nych96c <- left_join(cb28e1, nych96c, by = "X_28e1")
nych99c <- left_join(cb28e1, nych99c, by = "X_28e1")
nych02c <- left_join(cb28e1, nych02c, by = "X_28e1")
nych05c <- left_join(cb28e1, nych05c, by = "X_28e1")
nych08c <- left_join(cb28e1, nych08c, by = "X_28e1")
nych11c <- left_join(cb28e1, nych11c, by = "X_28e1")
nych14c <- left_join(cb28e1, nych14c, by = "X_28e1")
nych17c <- left_join(cb28e1, nych17c, by = "X_28e1")


###X_29
nych91c <- left_join(cb29, nych91c, by = "X_29")
nych93c <- left_join(cb29, nych93c, by = "X_29")
nych96c <- left_join(cb29, nych96c, by = "X_29")
nych99c <- left_join(cb29, nych99c, by = "X_29")
nych02c <- left_join(cb29, nych02c, by = "X_29")
nych05c <- left_join(cb29, nych05c, by = "X_29")
nych08c <- left_join(cb29, nych08c, by = "X_29")
nych11c <- left_join(cb29, nych11c, by = "X_29")
nych14c <- left_join(cb29, nych14c, by = "X_29")
nych17c <- left_join(cb29, nych17c, by = "X_29")

###X_32
nych91c <- left_join(cb32a, nych91c, by = "X_32a")
nych93c <- left_join(cb32a, nych93c, by = "X_32a")
nych96c <- left_join(cb32a, nych96c, by = "X_32a")
nych99c <- left_join(cb32a, nych99c, by = "X_32a")
nych02c <- left_join(cb32a, nych02c, by = "X_32a")
nych05c <- left_join(cb32a, nych05c, by = "X_32a")
nych08c <- left_join(cb32a, nych08c, by = "X_32a")
nych11c <- left_join(cb32a, nych11c, by = "X_32a")
nych14c <- left_join(cb32a, nych14c, by = "X_32a")
nych17c <- left_join(cb32a, nych17c, by = "X_32a")

nych91c <- left_join(cb32b, nych91c, by = "X_32b")
nych93c <- left_join(cb32b, nych93c, by = "X_32b")
nych96c <- left_join(cb32b, nych96c, by = "X_32b")
nych99c <- left_join(cb32b, nych99c, by = "X_32b")
nych02c <- left_join(cb32b, nych02c, by = "X_32b")
nych05c <- left_join(cb32b, nych05c, by = "X_32b")
nych08c <- left_join(cb32b, nych08c, by = "X_32b")
nych11c <- left_join(cb32b, nych11c, by = "X_32b")
nych14c <- left_join(cb32b, nych14c, by = "X_32b")
nych17c <- left_join(cb32b, nych17c, by = "X_32b")


###X_33
nych91c <- left_join(cb33, nych91c, by = "X_33")
nych93c <- left_join(cb33, nych93c, by = "X_33")
nych96c <- left_join(cb33, nych96c, by = "X_33")
nych99c <- left_join(cb33, nych99c, by = "X_33")
nych02c <- left_join(cb33, nych02c, by = "X_33")
nych05c <- left_join(cb33, nych05c, by = "X_33")
nych08c <- left_join(cb33, nych08c, by = "X_33")
nych11c <- left_join(cb33, nych11c, by = "X_33")
nych14c <- left_join(cb33, nych14c, by = "X_33")
nych17c <- left_join(cb33, nych17c, by = "X_33")


###X_35
nych91c <- left_join(cb35a, nych91c, by = "X_35a")
nych93c <- left_join(cb35a, nych93c, by = "X_35a")
nych96c <- left_join(cb35a, nych96c, by = "X_35a")
nych99c <- left_join(cb35a, nych99c, by = "X_35a")
nych02c <- left_join(cb35a, nych02c, by = "X_35a")
nych05c <- left_join(cb35a, nych05c, by = "X_35a")
nych08c <- left_join(cb35a, nych08c, by = "X_35a")
nych11c <- left_join(cb35a, nych11c, by = "X_35a")
nych14c <- left_join(cb35a, nych14c, by = "X_35a")
nych17c <- left_join(cb35a, nych17c, by = "X_35a")

nych91c <- left_join(cb35c, nych91c, by = "X_35c")
nych93c <- left_join(cb35c, nych93c, by = "X_35c")
nych96c <- left_join(cb35c, nych96c, by = "X_35c")
nych99c <- left_join(cb35c, nych99c, by = "X_35c")
nych02c <- left_join(cb35c, nych02c, by = "X_35c")
nych05c <- left_join(cb35c, nych05c, by = "X_35c")
nych08c <- left_join(cb35c, nych08c, by = "X_35c")
nych11c <- left_join(cb35c, nych11c, by = "X_35c")
nych14c <- left_join(cb35c, nych14c, by = "X_35c")
nych17c <- left_join(cb35c, nych17c, by = "X_35c")


###X_36
nych91c <- left_join(cb36a, nych91c, by = "X_36a")
nych93c <- left_join(cb36a, nych93c, by = "X_36a")
nych96c <- left_join(cb36a, nych96c, by = "X_36a")
nych99c <- left_join(cb36a, nych99c, by = "X_36a")
nych02c <- left_join(cb36a, nych02c, by = "X_36a")
nych05c <- left_join(cb36a, nych05c, by = "X_36a")
nych08c <- left_join(cb36a, nych08c, by = "X_36a")
nych11c <- left_join(cb36a, nych11c, by = "X_36a")
nych14c <- left_join(cb36a, nych14c, by = "X_36a")
nych17c <- left_join(cb36a, nych17c, by = "X_36a")

nych91c <- left_join(cb36b, nych91c, by = "X_36b")
nych93c <- left_join(cb36b, nych93c, by = "X_36b")
nych96c <- left_join(cb36b, nych96c, by = "X_36b")
nych99c <- left_join(cb36b, nych99c, by = "X_36b")
nych02c <- left_join(cb36b, nych02c, by = "X_36b")
nych05c <- left_join(cb36b, nych05c, by = "X_36b")
nych08c <- left_join(cb36b, nych08c, by = "X_36b")
nych11c <- left_join(cb36b, nych11c, by = "X_36b")
nych14c <- left_join(cb36b, nych14c, by = "X_36b")
nych17c <- left_join(cb36b, nych17c, by = "X_36b")


###X_38
nych91c <- left_join(cb38a, nych91c, by = "X_38a")
nych93c <- left_join(cb38a, nych93c, by = "X_38a")
nych96c <- left_join(cb38a, nych96c, by = "X_38a")
nych99c <- left_join(cb38a, nych99c, by = "X_38a")
nych02c <- left_join(cb38a, nych02c, by = "X_38a")
nych05c <- left_join(cb38a, nych05c, by = "X_38a")
nych08c <- left_join(cb38a, nych08c, by = "X_38a")
nych11c <- left_join(cb38a, nych11c, by = "X_38a")
nych14c <- left_join(cb38a, nych14c, by = "X_38a")
nych17c <- left_join(cb38a, nych17c, by = "X_38a")


###X_39
nych91c <- left_join(cb39, nych91c, by = "X_39")
nych93c <- left_join(cb39, nych93c, by = "X_39")
nych96c <- left_join(cb39, nych96c, by = "X_39")
nych99c <- left_join(cb39, nych99c, by = "X_39")
nych02c <- left_join(cb39, nych02c, by = "X_39")
nych05c <- left_join(cb39, nych05c, by = "X_39")
nych08c <- left_join(cb39, nych08c, by = "X_39")
nych11c <- left_join(cb39, nych11c, by = "X_39")
nych14c <- left_join(cb39, nych14c, by = "X_39")
nych17c <- left_join(cb39, nych17c, by = "X_39")


###scr
nych91c <- left_join(cbscr, nych91c, by = "scr")
nych93c <- left_join(cbscr, nych93c, by = "scr")
nych96c <- left_join(cbscr, nych96c, by = "scr")
nych99c <- left_join(cbscr, nych99c, by = "scr")
nych02c <- left_join(cbscr, nych02c, by = "scr")
nych05c <- left_join(cbscr, nych05c, by = "scr")
nych08c <- left_join(cbscr, nych08c, by = "scr")
nych11c <- left_join(cbscr, nych11c, by = "scr")
nych14c <- left_join(cbscr, nych14c, by = "scr")
nych17c <- left_join(cbscr, nych17c, by = "scr")


###tsc
nych91c <- left_join(cbtsc, nych91c, by = "tsc")
nych93c <- left_join(cbtsc, nych93c, by = "tsc")
nych96c <- left_join(cbtsc, nych96c, by = "tsc")
nych99c <- left_join(cbtsc, nych99c, by = "tsc")
nych02c <- left_join(cbtsc, nych02c, by = "tsc")
nych05c <- left_join(cbtsc, nych05c, by = "tsc")
nych08c <- left_join(cbtsc, nych08c, by = "tsc")
nych11c <- left_join(cbtsc, nych11c, by = "tsc")
nych14c <- left_join(cbtsc, nych14c, by = "tsc")
nych17c <- left_join(cbtsc, nych17c, by = "tsc")


###ybr
nych91c <- left_join(cbybrto2005, nych91c, by = "ybr")
nych93c <- left_join(cbybrto2005, nych93c, by = "ybr")
nych96c <- left_join(cbybrto2005, nych96c, by = "ybr")
nych99c <- left_join(cbybrto2005, nych99c, by = "ybr")
nych02c <- left_join(cbybrto2005, nych02c, by = "ybr")
nych05c <- left_join(cbybrto2005, nych05c, by = "ybr")
nych08c <- left_join(cbybrafter2005, nych08c, by = "ybr")
nych11c <- left_join(cbybrafter2005, nych11c, by = "ybr")
nych14c <- left_join(cbybrafter2005, nych14c, by = "ybr")
nych17c <- left_join(cbybrafter2005, nych17c, by = "ybr")


###hcr
nych91c <- left_join(cbhcr, nych91c, by = "hcr")
nych93c <- left_join(cbhcr, nych93c, by = "hcr")
nych96c <- left_join(cbhcr, nych96c, by = "hcr")
nych99c <- left_join(cbhcr, nych99c, by = "hcr")
nych02c <- left_join(cbhcr, nych02c, by = "hcr")
nych05c <- left_join(cbhcr, nych05c, by = "hcr")
nych08c <- left_join(cbhcr, nych08c, by = "hcr")
nych11c <- left_join(cbhcr, nych11c, by = "hcr")
nych14c <- left_join(cbhcr, nych14c, by = "hcr")
nych17c <- left_join(cbhcr, nych17c, by = "hcr")


###npr - no crosswalk needed


###mgrent - no crosswalk needed


##hhcats - no crosswalk needed



nychtotal <- rbind(nych91c, nych93c, nych96c, nych99c, nych02c, nych05c, nych08c, nych11c, nych14c, nych17c)
nrow(nychtotal)