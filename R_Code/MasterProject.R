# Contributers: Lance Barto, Rachel Rosebrook, Travis Rebhan
# Version 1.0
# March 26, 2019
#
# platform       x86_64-apple-darwin13.4.0   
# arch           x86_64                      
# os             darwin13.4.0                
# system         x86_64, darwin13.4.0        
# status                                     
# major          3                           
# minor          5.1                         
# year           2018                        
# month          07                          
# day            02                          
# svn rev        74947                       
# language       R                           
# version.string R version 3.5.1 (2018-07-02)
# nickname       Feather Spray  


##### Data Wrangling ###################################################
##### Part 1 ###########################################################

# Imports
library(dplyr)
library(tidyr)
library(ggplot2)


# Create a list of the years for which we have data
years <- c(1991, seq(1993, 2017, 3))

# Declare a list to store our dataframes in
df_list <- list()

# Make a list of the file names we're going to read in 
for (i in 1:length(years)) {
  
  # Data-only data frame (with no headers):
  data <- read.csv(paste('../nycHousing', years[i], '.csv', sep = ''), 
                   skip = 2, header = FALSE)
  
  # Temporary data frame from which to extract the 
  # first row of headers, nrows = 2 so we don't waste time reading
  # the whole csv again.
  tmp <- read.csv(paste('../nycHousing', years[i], '.csv', sep = ''), 
                  header = TRUE, nrows = 2)
  
  # Use headers from tmp for nych17:
  names(data) <- names(tmp)
  
  # Remove the temporary data frame:
  rm(tmp)
  
  # Append the dataframe to a list of dataframes
  df_list[[i]] <- data
  
} # End for loop

# Merge d1 and d2, into similar output like d12 in the 2017 data
for (i in 1:9) {
  df <- df_list[[i]] %>%
    select(X_d1, X_d2)
  
  X_d12 <- vector()
  
  for (j in 1:length(df$X_d1)) {
    
    if (df[j, 1] == 1 | df[j, 2] == 1) {
      x <- 1
      X_d12[j] <- x
    } else if (df[j, 1] == 8 | df[j, 2] == 8) {
      x <- 8
      X_d12[j] <- x
    } else {
      x <- 9
      X_d12[j] <- x
    } 
  }
  
  df_list[[i]] <- cbind(X_d12, df_list[[i]])
  df_list[[i]] <- select(df_list[[i]], -c(X_d1, X_d2)) 
}

# Refactor the answers from X_25a to match the answers from the 
# 2017 data
for (i in 1:9) {
  df <- df_list[[i]] %>%
    select(X_25a)
  
  X_25new <- vector()
  
  for (j in 1:length(df$X_25a)) {
    
    if (df[j, 1] == 0) {
      X_25new[j] <- 1
    } else {
      X_25new[j] <- 2
    } 
  }
  
  df_list[[i]] <- cbind(X_25new, df_list[[i]])
  df_list[[i]] <- select(df_list[[i]], -c(X_25a)) 
}

df_list[[10]] <- df_list[[10]] %>%
  rename(X_25new = X_25a)

# Refactor the answers from X_25c to match the answers from the 
# 2017 data
for (i in 1:9) {
  df <- df_list[[i]] %>%
    select(X_25c)
  
  X_25cnew <- vector()
  
  for (j in 1:length(df$X_25c)) {
    
    if (df[j, 1] == 2 | df[j, 1] == 3) {
      X_25cnew[j] <- 2
    } else if (df[j, 1] == 1) {
      X_25cnew[j] <- 1
    } else if (df[j, 1] == 8) {
      X_25cnew[j] <- 8
    } else {
      X_25cnew[j] <- 9
    } 
  }
  
  df_list[[i]] <- cbind(X_25cnew, df_list[[i]])
  df_list[[i]] <- select(df_list[[i]], -c(X_25c)) 
}

df_list[[10]] <- df_list[[10]] %>%
  rename(X_25cnew = X_25c)

# Refactor the answers from X_26a to match the answers from the 
# 2017 data
for (i in 1:9) {
  df <- df_list[[i]] %>%
    select(X_26a)
  
  X_26new <- vector()
  
  for (j in 1:length(df$X_26a)) {
    
    if (df[j, 1] == 0) {
      X_26new[j] <- 1
    } else {
      X_26new[j] <- 2
    } 
  }
  
  df_list[[i]] <- cbind(X_26new, df_list[[i]])
  df_list[[i]] <- select(df_list[[i]], -c(X_26a)) 
}

df_list[[10]] <- df_list[[10]] %>%
  rename(X_26new = X_26a)

# Rename the X_37b column (I think this code is extraneous
for (i in 1:10) {
  df_list[[i]] <- df_list[[i]] %>%
    rename(peeling_paint_plaster1 = X_37b)
  
  
  # Create dataframe codebooks for appropriate columns.
  cb1 <- data.frame(borough = c(1, 2, 3, 4, 5),
                    borough_name = c("Bronx", "Brooklyn", "Manhattan",
                                     "Queens", "Staten Island"))
  
  cb2 <- data.frame(X_d12 = c(1, 9, 8), 
                    ex_walls_missing_sloping = c("Yes", "No", NA))  
  
  cb4 <- data.frame(X_d3 = c(1, 9, 8),
                    ex_walls_cracks = c("Yes", "No", NA)) 
  
  cb5 <- data.frame(X_d4 = c(1, 9 ,8), 
                    ex_walls_looseMaterial = c("Yes", "No", NA)) 
  
  cb6 <- data.frame(X_e1 = c(1, 9, 8), 
                    ex_windows_missing = c("Yes", "No", NA))  
  
  cb7 <- data.frame(X_e2 = c(1, 9, 8), 
                    ex_windows_loose = c("Yes", "No ", NA)) 
  
  cb8 <- data.frame(X_e3 = c(1, 9, 8), 
                    ex_windows_boarded = c("Yes", "No", NA))
  
  # Yes means loose, broken, or missing 
  cb9 <- data.frame(X_f1 = c(1, 9, 8), 
                    handrail_problem = c("Yes", "No ", NA))  
  
  cb10 <- data.frame(X_f2 = c(1, 9, 8), 
                     stairway_problem = c("Yes", "No ", NA))
  
  cb12 <- data.frame(X_g3 = c(1, 9, 8), 
                     floors_deeply_worn = c("Yes", "No", NA)) 
  
  cb13 <- data.frame(X_g4 = c(1, 9, 8), 
                     floors_holes = c("Yes", "No", NA)) 
  
  cb14 <- data.frame(X_h = c(1, 2, 3, 8), 
                     building_condition = c("Dilapidated", "Sound", 
                                            "Deteriorating", NA))
  
  cb15 <- data.frame(X_8 = 1:4, 
                     condo_coop = c("No", "Condo", "Coop", NA))
  
  cb16 <- data.frame(X_9a = c(1,9), 
                     rent_or_own = c("Owned", "Rented"))
  
  cb17 <- data.frame(X_23a = c(1, 2), 
                     elevator = c("Yes", "No"))
  
  cb18 <- data.frame(X_25new = c(1, 2), 
                     complete_plumbing = c("Yes", "No"))
  
  cb20 <- data.frame(X_25cnew = c(1, 2, 8, 9), 
                     toilet_breakdowns = c("Yes", "No",  
                                           NA, "No toilet"))
  
  cb21 <- data.frame(X_26new = c(1, 2), 
                     complete_excl_kitchen = c("Yes", "No"))
  
  cb22 <- data.frame(X_26c = c(1, 2, 8, 9), 
                     kitchen_function = c("Yes", "No", NA, "No"))
  
  cb23 <- data.frame(X_27 = 1:4, 
                     type_heating_fuel = c("Fuel oil", "Utility gas", 
                                           "Electricity", "Other fuel"))
  
  cb24 <- data.frame(X_32a = c(0, 1, 8),
                     heating_breakdown = c('Yes', 'No', NA))
  
  cb25 <- data.frame(X_32b = c(2, 3, 4, 5, 8, 9),
                     num_heat_breakdowns = c("1", "2", "3",
                                             "4+", NA, "No Breakdowns"))
  
  cb26 <- data.frame(X_35a = c(1, 2, 8), 
                     mice_present = c("Yes", "No", NA))
  
  cb27 <- data.frame(X_35c = c(1, 2, 3, 4, 5, 8), 
                     exterminator_service = c("Regularly", "When needed", 
                                              "Irregularly", "No", NA, NA))
  cb28 <- data.frame(X_36a = c(1, 2, 8), 
                     wall_cracks_or_holes = c("Yes", "No", NA))
  
  cb29 <- data.frame(X_36b = c(1, 2, 8), 
                     holes_in_floors = c("Yes", "No", NA))
  
  cb30 <- data.frame(X_38a = c(1, 2, 8), 
                     water_leaks = c("Yes", "No", NA))
  
  cb31 <- data.frame(X_39 = c(1:4,8), 
                     neighborhood_rating = c("Excellent", "Good", 
                                             "Fair", "Poor", NA))
  
  cb32 <- data.frame(peeling_paint_plaster1 = c(2, 3, 8, 9), 
                     peeling_paint_plaster = c("Yes", "No", NA, "No"))
}

# The following is a function to change numerical values to appropriate
# categorical (named) values.
#
# This function replaces the old column with the new, and drops the old. 
#
# The inputs are as follows:
# orig_df - This is the unaltered dataframe from your .csv import (df object)
# codebook_df - This is dataframe that represents your 'dictionary' (df object)
# orig_name - the original name of the column (string)
# new_name - a new (meaningful) name you would like for the column
#
# Note that old_name and new_name, have to match the column names specified in your 
# codebook dataframe object

# This function doesn't append the year. It should be used for all 
# but the last column converted 
rf_func <- function(orig_df, 
                    codebook_df, 
                    orig_name,
                    new_name) {
  
  df <- full_join(x = codebook_df, y = orig_df, by = orig_name)
  df <- select(df, -c(orig_name))
  colnames(df)[colnames(df) == orig_name] <- new_name
  return(df)
}

# Declare a list to capture the cleaned dataframes
clean_df_list <- list()

# Counter
i <- 1

# Iterate through the uncleaned dataframes, clean, rename, and factor them
for (dataframe in df_list) {
  
  # Use the appropriate function with parameters to rename your answers
  # and drop the unnecessary columns
  df <- rf_func(dataframe, cb1, 'borough', 'borough_name')
  df <- rf_func(df, cb2, 'X_d12', 'ex_walls_missing_sloping')
  df <- rf_func(df, cb4, 'X_d3', 'ex_walls_cracks')
  df <- rf_func(df, cb5, 'X_d4', 'ex_walls_looseMaterial')
  df <- rf_func(df, cb6, 'X_e1', 'ex_windows_missing')  
  df <- rf_func(df, cb7, 'X_e2', 'ex_windows_loose')
  df <- rf_func(df, cb8, 'X_e3', 'ex_windows_boarded')
  df <- rf_func(df, cb9, 'X_f1', 'handrail_problem')
  df <- rf_func(df, cb10, 'X_f2', 'stairway_problem')
  df <- rf_func(df, cb12, 'X_g3', 'floors_deeply_worn')
  df <- rf_func(df, cb13, 'X_g4', 'floors_holes')
  df <- rf_func(df, cb14, 'X_h', 'building_condition')
  df <- rf_func(df, cb15, 'X_8', 'condo_coop')
  df <- rf_func(df, cb16, 'X_9a', 'rent_or_own')
  df <- rf_func(df, cb17, 'X_23a', 'elevator')    
  df <- rf_func(df, cb18, 'X_25new', 'complete_plumbing')
  df <- rf_func(df, cb20, 'X_25cnew', 'toilet_breakdowns')
  df <- rf_func(df, cb21, 'X_26new', 'complete_excl_kitchen') 
  df <- rf_func(df, cb22, 'X_26c', 'kitchen_function')
  df <- rf_func(df, cb23, 'X_27', 'type_heating_fuel')
  df <- rf_func(df, cb24, 'X_32a', 'heating_breakdown')
  df <- rf_func(df, cb25, 'X_32b', 'num_heat_breakdowns')
  df <- rf_func(df, cb26, 'X_35a', 'mice_present')
  df <- rf_func(df, cb27, 'X_35c', 'exterminator_service')
  df <- rf_func(df, cb28, 'X_36a', 'wall_cracks_or_holes')
  df <- rf_func(df, cb29, 'X_36b', 'holes_in_floors')
  df <- rf_func(df, cb30, 'X_38a', 'water_leaks')
  df <- rf_func(df, cb31, 'X_39', 'neighborhood_rating')
  df <- rf_func(df, cb32, 'peeling_paint_plaster1', 'peeling_paint_plaster')
  
  # Append the clean dataframe to the list
  clean_df_list[[i]] <- df
  
  # Increase the counter
  i <- i + 1
}

# Row bind the list of cleaned dataframes, in order
aggregated_df <- bind_rows(clean_df_list)

# fix years
aggregated_df$year <- ifelse(aggregated_df$year < 2000, 
                             aggregated_df$year + 1900, 
                             aggregated_df$year)

# Factor the year column
aggregated_df$year <- as.factor(aggregated_df$year)

# Eliminate extraneous columns
aggregated_df <- aggregated_df %>%
  select(year, borough_name, ex_walls_missing_sloping, ex_walls_cracks,
         ex_walls_looseMaterial, ex_windows_missing, ex_windows_loose,
         ex_windows_boarded, handrail_problem, stairway_problem,
         floors_deeply_worn, floors_holes, building_condition, 
         condo_coop, rent_or_own, elevator, complete_plumbing,
         kitchen_function, complete_excl_kitchen, type_heating_fuel, 
         heating_breakdown, num_heat_breakdowns, mice_present,
         exterminator_service, wall_cracks_or_holes, holes_in_floors,
         water_leaks, neighborhood_rating, peeling_paint_plaster)


# Export to .csv
write.csv(aggregated_df, file = 'housingAggregation.csv')

###### Data Wrangling Part 2 ##################################################
###############################################################################

# Read in most recent data
data <- df_list[[10]]

# Select columns with only numerical data
data <- data %>%
            select('X_i', 'X_4a', 'X_12b', 'X_13', 'X_15b', 'X_15c', 'X_20',
                'X_22a', 'X_24a', 'X_24b', 'X_30a', 'X_31b', 'year', 
                'hhinc', 'under6', 'under18')

# Assign NA's to unreported or invalid responses
data$X_12b[data$X_12b == 9999999 | data$X_12b == 9999998] <- NA
data$X_13[data$X_13 == 9999998 | data$X_13 == 9999999] <- NA
data$X_15b[data$X_15b == 9998 | data$X_15b == 9999] <- NA
data$X_15c[data$X_15c == 9999 | data$X_15c == 9998] <- NA
data$X_30a[data$X_30a == 99999] <- NA
data$X_31b[data$X_31b == 99998 | data$X_31b == 99999] <- NA
data$hhinc[data$hhinc == 9999999] <- NA
data$X_i[data$X_i == 8] <- NA
data$X_i[data$X_i == 2] <- 0

# Select the columns which have a large proportion of non-NA answers
# for the properties that are owned
owned_data2017 <- data %>%
    select('X_i', 'X_13', 'X_20', 'X_22a', 'X_24a', 
           'X_24b', 'hhinc', 'under6', 'under18', 'year', )

# Select the columns which have a large proportion of non-NA answers
# for the properties that are rented
rented_data2017 <- data %>%
    select('X_i', 'X_20', 'X_22a', 'X_24a', 'X_24b', 'X_30a', 
           'X_31b', 'year', 'hhinc', 'under6', 'under18')

# Remove rows with NA's
owned_data2017 <-na.omit(owned_data2017)
rented_data2017 <- na.omit(rented_data2017)

# Read in 2014 data
data1 <- df_list[[9]]

# Select columns with only numerical data
data1 <- data1 %>%
            select('X_i', 'X_4a', 'X_12b', 'X_13', 'X_15b', 'X_15c', 'X_20',
                'X_22a', 'X_24a', 'X_24b', 'X_30a', 'X_31b', 'year', 
                'hhinc', 'under6', 'under18')

# Assign NA's to unreported or invalid responses
data1$X_12b[data1$X_12b == 9999999 | data1$X_12b == 9999998] <- NA
data1$X_13[data1$X_13 == 9999998 | data1$X_13 == 9999999] <- NA
data1$X_15b[data1$X_15b == 9998 | data1$X_15b == 9999] <- NA
data1$X_15c[data1$X_15c == 9999 | data1$X_15c == 9998] <- NA
data1$X_30a[data1$X_30a == 99999] <- NA
data1$X_31b[data1$X_31b == 99998 | data1$X_31b == 99999] <- NA
data1$hhinc[data1$hhinc == 9999999] <- NA
data1$X_i[data1$X_i == 8] <- NA
data1$X_i[data1$X_i == 2] <- 0

# Select the columns which have a large proportion of non-NA answers
# for the properties that are owned
owned_data2014 <- data1 %>%
    select('X_i', 'X_13', 'X_20', 'X_22a', 'X_24a', 
           'X_24b', 'hhinc', 'under6', 'under18', 'year')

# Select the columns which have a large proportion of non-NA answers
# for the properties that are rented
rented_data2014 <- data1 %>%
    select('X_i', 'X_20', 'X_22a', 'X_24a', 'X_24b', 'X_30a', 
           'X_31b', 'year', 'hhinc', 'under6', 'under18')

# Remove rows with NA's
owned_data2014 <-na.omit(owned_data2014)
rented_data2014 <-na.omit(rented_data2014)

# Read in 2011 data
data2 <- df_list[[8]]

# Assign NA's to unreported or invalid responses
data2$X_12b[data2$X_12b == 9999999 | data2$X_12b == 9999998] <- NA
data2$X_13[data2$X_13 == 9999998 | data2$X_13 == 9999999] <- NA
data2$X_15b[data2$X_15b == 9998 | data2$X_15b == 9999] <- NA
data2$X_15c[data2$X_15c == 9999 | data2$X_15c == 9998] <- NA
data2$X_30a[data2$X_30a == 99999] <- NA
data2$X_31b[data2$X_31b == 99998 | data2$X_31b == 99999] <- NA
data2$hhinc[data2$hhinc == 9999999] <- NA
data2$X_i[data2$X_i == 8] <- NA
data2$X_i[data2$X_i == 2] <- 0

# Select the columns which have a large proportion of non-NA answers
# for the properties that are owned
owned_data2011 <- data2 %>%
    select('X_i', 'X_13', 'X_20', 'X_22a', 'X_24a', 
           'X_24b', 'hhinc', 'under6', 'under18', 'year')

# Select the columns which have a large proportion of non-NA answers
# for the properties that are rented
rented_data2011 <- data2 %>%
    select('X_i', 'X_20', 'X_22a', 'X_24a', 'X_24b', 'X_30a', 
           'X_31b', 'year', 'hhinc', 'under6', 'under18')

# Remove rows with NA's
owned_data2011 <- na.omit(owned_data2011)
rented_data2011 <- na.omit(rented_data2011)

# Aggregate the df's
owned_data <- rbind(owned_data2011, owned_data2014, owned_data2017)
rented_data <- rbind(rented_data2011, rented_data2014, rented_data2017)

# Write .csv's
write.csv(owned_data, file = 'ownedNYCHVS_midterm2.csv', row.names = FALSE)
write.csv(rented_data, file = 'rentedNYCHVS_midterm3.csv', row.names = FALSE)

###### The following code block creates a weighted index which indicates the number ######
###### of problems that a home reported ##################################################

data <- aggregated_df

# Isolate the columns to be used in the index
conditionslist <- c("ex_walls_missing_sloping" , "ex_walls_cracks", 
                    "ex_walls_looseMaterial", "ex_windows_missing", 
                    "ex_windows_loose", "ex_windows_boarded", 
                    "handrail_problem", "stairway_problem", 
                    "floors_deeply_worn", "floors_holes", 
                    "building_condition", "heating_breakdown", 
                    "mice_present", "wall_cracks_or_holes",
                    "holes_in_floors", "water_leaks", 
                    "peeling_paint_plaster")

ex_struc_issues <- c("ex_walls_missing_sloping" , "ex_walls_cracks", 
                     "ex_walls_looseMaterial", "ex_windows_missing", 
                     "ex_windows_loose", "ex_windows_boarded")

other_bin_issues <- c("handrail_problem", "stairway_problem", 
                      "floors_deeply_worn", "floors_holes", 
                      "heating_breakdown", "mice_present", 
                      "wall_cracks_or_holes", "holes_in_floors", 
                      "water_leaks", "peeling_paint_plaster")

# A function to convert 'yes' and 'no' to 0 and 1
yesnoindexer <- function(column, yes = 1, no = 0){
  return(ifelse(column == "Yes", yes, no))
}

index.condition <- data %>%
  select(conditionslist)

index.condition[ex_struc_issues] <- lapply(index.condition[ex_struc_issues], 
                                           function(x) yesnoindexer(x, yes=5))

index.condition[other_bin_issues] <- lapply(index.condition[other_bin_issues], 
                                            function(x) yesnoindexer(x, yes=2))

con <- index.condition$building_condition
con <- ifelse(con == "Sound", 0, ifelse(con == "Deteriorating", 1, 2))
index.condition$building_condition <- con
rm(con, yesnoindexer)

data <- select(data, "year", "borough_name")
data$index <- rowSums(index.condition)
data <- drop_na(data)

yearmean <- data %>%
  group_by(year) %>%
  summarize(indmean = mean(index))
yearmean$borough_name <- rep("New York (overall)", length(yearmean$year))

                                            
####### The following code creates a visualization of the weighted index  #########
###################################################################################                                            
                                            
data %>%
  group_by(borough_name, year) %>%
  mutate(indmean = mean(index)) %>%
  
  ggplot(aes(x=year, y = indmean, color = borough_name, shape = borough_name)) + 
      geom_point(aes(group = borough_name)) + 
      geom_line(aes(group = borough_name)) + 
      geom_point(data = yearmean) +
      geom_line(data = yearmean) +
      labs(title = "Reported Problems by Borough and Year", 
           subtitle =  "(with overall)",
           color = "Borough", shape = 'Borough',
           x = 'Year', y = 'Average number of problems (weighted)')

# The following code snippet creates a visualization of the unweighted means
# Be sure to use housingAggCondensed .csv 
housing <- read.csv('../housingAggCondensed.csv', header = TRUE, 
                    stringsAsFactors = FALSE)

housing_stats <- housing %>%
                    group_by(year, borough_name) %>%
                    summarize(mean = mean(total_issues))

yearmean <- housing %>%
                group_by(year) %>%
                summarize(mean = mean(total_issues))
 
yearmean$borough_name <- rep("New York (overall)", length(yearmean$year))

ggplot(housing_stats, mapping = aes(x = year, 
                                    y = mean, 
                                    color = borough_name, 
                                    shape = borough_name)) +
  geom_point() + 
  geom_line() +
  geom_point(data = yearmean) + 
  geom_line(data = yearmean) +
  labs(x = "Year", 
       y = "Mean of Issues (unweighted)", 
       title = "Mean of Issues per Year by Borough", 
       shape = "Borough",
       color = "Borough")
                                                                              
# The following code creates an dataframe of some standard 
# statistical analysis of the weighted index column
stat_summary <- function(y) {

    x <- data %>%
        group_by(year) %>%
        select(year, index) %>%
        filter(year == y)

    x <- x[['index']]

    index_mean <- mean(x)
    index_median <- median(x)
    index_sd <- sd(x)
    
    return(cbind(y, index_mean, index_median, index_sd))
}

years <- c(1991, seq(1993, 2017, 3))

stats_table <- data.frame()

for (i in years) {
    stats_table <- rbind(stats_table, stat_summary(i))
}

colnames(stats_table) <- c('Year', 
                           'Mean', 
                           'Median', 
                           'Standard Deviation')

## Machine Learning Model Code ############################################
###########################################################################                                            

# Import random forest package
library(randomForest)

# Assign the appropriate dataframe, and drop the rows with NA's                                            
forest_data <- aggregated_df
forest_data <- drop_na(forest_data)

# Split into training and testing sets:
set.seed(42)

# Create random index values to partition the data into training and testing 
# at a 70/30 split                                           
train <- sample(nrow(forest_data), .7*nrow(forest_data), replace = FALSE)

# Partition the data                                           
trainset <- forest_data[train,]
testset <- forest_data[-train,]

# Default Random Forest
model1 <- randomForest(borough_name ~ ., data = trainset, importance = TRUE)
                                            
########## Multiple Linear Regression Model ##############################
##########################################################################
                                            
# Read in input files
owned <- read.csv("../ownedNYCHVS_midterm2.csv", header = T)
rented <- read.csv("../rentedNYCHVS_midterm3.csv", header = T)

# Linear Models for the 'owned' dataset
# A model with a meaningful prediction, but low R value
myRegOwnedinc <- lm(hhinc ~ value + num_rooms + num_bedrooms + 
                    num_under18, data = owned)

# A meaningless prediction, but bst R value that could be found
myRegOwnedbed <- lm(num_bedrooms ~  num_rooms + num_stories + 
                    num_under18, data = owned)

# Linear models for the 'rented' dataset

# A meaningful prediction, but low R value
myRegRentedval <- lm(value ~ num_under18 + hhinc, data = rented)

# A meaningless prediction, but best R value that could be found
myRegRentedbed <- lm(num_bedrooms ~ num_rooms + num_under18 + 
                     value + num_under6, data = rented)

# Residuals for the linear models
myRegOwnedincRes <- resid(myRegOwnedinc)
myRegOwnedbedRes <- resid(myRegOwnedbed)
myRegRentedvalRes <- resid(myRegRentedval)
myRegRentedbedRes <- resid(myRegRentedbed)

# Plots came out ugly and had too many datapoints just scattered 
# about for meaningful representation.
                                            
# Summary calls might be the best way to summarize things
summary(myRegOwnedinc)
summary(myRegOwnedbed)
summary(myRegRentedval)
summary(myRegREntedbed)
                                            
###### Logistic Regression Models ##############################  
################################################################                                            
                                            
# Read in file
lrtotal <- read.csv("../lr.csv", headers = T)

# Separate into owners and renters
lrown <- lrtotal %>% filter(Value != 9999999)
lrrent <- lrtotal %>% filter(Monthly.contract.rent != 99999)

# Include only rows where toilet breakdowns and presence of mice were answered
lrrent <- lrrent[lrrent$Toilet.breakdowns %in% c(1,2), ]
lrrent <- lrrent[lrrent$Presence.of.mice.or.rats %in% c(1,2), ]
lrown <- lrown[lrown$Toilet.breakdowns %in% c(1,2), ]
lrown <- lrown[lrown$Presence.of.mice.or.rats %in% c(1,2), ]

# Change no values from 2 to 0
lrrent$Toilet.breakdowns[lrrent$Toilet.breakdowns == 2] <- 0
lrrent$Presence.of.mice.or.rats[lrrent$Presence.of.mice.or.rats == 2] <- 0
lrown$Toilet.breakdowns[lrown$Toilet.breakdowns == 2] <- 0
lrown$Presence.of.mice.or.rats[lrown$Presence.of.mice.or.rats == 2] <- 0

# Plots
ggplot(data = lrrent, mapping = aes(y = Toilet.breakdowns, 
                                    x = Monthly.contract.rent)) +
  geom_point() +
  labs(title = "Toilet Breakdowns vs Monthly Rent") +
  geom_smooth(method = "glm", 
              method.args = list(family = binomial), 
              se = FALSE)

ggplot(data = lrrent, mapping = aes(y = Presence.of.mice.or.rats, 
                                    x = Monthly.contract.rent)) +
  geom_point() +
  labs(title = "Presence of Mice or Rats vs Monthly Rent") +
  geom_smooth(method = "glm", 
              method.args = list(family = binomial), 
              se = FALSE)

ggplot(data = lrown, mapping = aes(y = Toilet.breakdowns, x = Value)) +
  geom_point() +
  labs(title = "Toilet Breakdowns vs Value of Home") +
  geom_smooth(method = "glm", 
              method.args = list(family = binomial), 
              se = FALSE)

ggplot(data = lrown, mapping = aes(y = Presence.of.mice.or.rats, x = Value)) +
  geom_point() +
  labs(title = "Presence of Mice or Rats vs Value of Home") +
  geom_smooth(method = "glm", 
              method.args = list(family = binomial), 
              se = FALSE)
                                            
####### Gini Index Values ##################################
############################################################   
                                            
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
# Owned homes Gini Index

gini.index(data.frame1$broken_windows)
gini.index(data.frame1$value)
gini.index(data.frame1$num_units)
gini.index(data.frame1$num_stories)
gini.index(data.frame1$num_rooms)
gini.index(data.frame1$hhinc)
gini.index(data.frame1$num_under6)
gini.index(data.frame1$num_under18)

#################################################

# Rented Homes Gini Index
gini.index(data.frame2$num_units)
gini.index(data.frame2$num_stories)
gini.index(data.frame2$num_rooms)
gini.index(data.frame2$num_bedrooms)
gini.index(data.frame2$monthly_rent)
gini.index(data.frame2$outofpocket_rent)
gini.index(data.frame2$hhinc)
gini.index(data.frame2$num_under6)
gini.index(data.frame2$num_under18)
                                            
# Clustering Models ############################################
################################################################


# Grouping of about 1% of the data with number of under 6 year olds in 
# Rented home (4 child leafs/groupings)

length(data.frame2$num_under6)
arr_dist <- dist(data.frame2$num_under6, method = "euclidean")
arr_clust <-hclust(arr_dist)
arr_tree <-as.phylo(arr_clust)
plot(arr_tree,cex = .5)

# Grouping of about 1% of the data with number of under 6 year olds in 
# owned home (3 child leafs/groupings)

arr_dist2 <- dist(data.frame1$num_under6, method = "euclidean")
arr_clust2 <- hclust(arr_dist2)
arr_tree2 <-as.phylo(arr_clust2)
plot(arr_tree2,cex = .5)

# Cluster with the highest gini index scores
# Broken windows for owned homes
# Out of pocket rent for rented homes
# Too many branches to be useful
arr_dist3 <- dist(data.frame2$outofpocket_rent, method = "euclidean")
arr_clust3 <- hclust(arr_dist3)
arr_tree3 <-as.phylo(arr_clust3)
plot(arr_tree3,cex = .5)

# Broken windows for owned homes
# 2 branches (not insightful, we knew there would be a group with broken, 
# and a group without broken
arr_dist4 <- dist(data.frame1$ï..broken_windows, method = "euclidean")
arr_clust4 <- hclust(arr_dist4)
arr_tree4 <-as.phylo(arr_clust4)
plot(arr_tree4,cex = .5)


                                            
# Middle value gini indices
# Number of stories for owned homes
# 7 branches
arr_dist5 <- dist(data.frame1$num_stories, method = "euclidean")
arr_clust5 <- hclust(arr_dist5)
arr_tree5 <-as.phylo(arr_clust5)
plot(arr_tree5,cex = .5)


# Middle value gini indices
# Number of stories for rented homes
# 7 branches
arr_dist6 <- dist(data.frame2$num_stories, method = "euclidean")
arr_clust6 <- hclust(arr_dist6)
arr_tree6 <-as.phylo(arr_clust6)
plot(arr_tree6,cex = .5)

# k-Means clustering with k = 3 ###############################################

# A simple k-means clustering based on num_units, num_stories, num_rooms
# The most common grouping was (6, 7, 6), 
# with (12, 3, 4) popping up occasionally
library(cluster)
library(HSAUR)
fit <- kmeans(data.frame2[, 2:5], 3)
dissE <- daisy(data.frame2[, 2:5]) 
dE2 <- dissE^2
sk2 <- silhouette(fit$cl, dE2)
plot(sk2, main = "Cluster Plot Summary #1")

# This looks at all columns beside the original row number
# This model ended up with the same results regardless of which
# random seed was chosen: (3, 4, 4, 12)
fit <- kmeans(data.frame2[, -1], 3)
dissE <- daisy(data.frame2[, -1]) 
dE2 <- dissE^2
sk2 <- silhouette(fit$cl, dE2)
plot(sk2, main = "Cluster Plot Summary #2")

# k-Means clustering with k = 5 ###############################################

# A simple k-means clustering based on num_units, num_stories, num_rooms
# The most common grouping was (1, 3, 3, 6, 6)
fit <- kmeans(data.frame2[, 2:5], 5)
dissE <- daisy(data.frame2[, 2:5]) 
dE2 <- dissE^2
sk2 <- silhouette(fit$cl, dE2)
plot(sk2, main = "Cluster Plot Summary #3")


# This looks at all columns beside the original row number
# The most common result here was (2, 3, 3, 5, 6)
fit <- kmeans(data.frame2[, 2:5], 5)
dissE <- daisy(data.frame2[, -1]) 
dE2 <- dissE^2
sk2 <- silhouette(fit$cl, dE2)
plot(sk2, main = "Cluster Plot Summary #4")
