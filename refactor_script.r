# This is a script to read in all the .csv data from the NYCHVS dataset,
# select, wrangle, and clean the columns we wish to use for creating a 
# housing quality index.
#
# Contributers: Lance Barto, Rachel Rosebrook
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

# Imports
library(dplyr)

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
                   neighborhood_rating = c("Excellent", "Good", "Fair", "Poor", NA))

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
