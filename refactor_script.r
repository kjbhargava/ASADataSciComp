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




# Create dataframe codebooks for appropriate columns.
codebook1 <- data.frame(borough = c(1, 2, 3, 4, 5),
                       boroughName = c("Bronx", "Brooklyn", "Manhattan",
                                       "Queens", "Staten Island"))

codebook2 <- data.frame(X_32a = c(0, 1, 8),
                       heating_breakdown = c('Yes', 'No', 'Not Reported'))

codebook3 <- data.frame(X_32b = c(2, 3, 4, 5, 8, 9),
                       num_heat_breakdowns = c("1", "2", "3",
                                        "4+", "Not Reported",
                                        "No Breakdowns"))

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

# This function appends the year column, it only needs to be used on one
# of the columns to maintain a year column in the compiled dataframe
rf_func_year <- function(orig_df, 
                         codebook_df, 
                         orig_name,
                         new_name) {
    
    df <- left_join(x = codebook_df, y = orig_df, by = orig_name)
    df <- select(df, -c(orig_name))
    colnames(df)[colnames(df) == orig_name] <- new_name
    df <- select(df, new_name, year)
    return(df)
}

# This function doesn't append the year. It should be used for all 
# but the last column converted 
rf_func <- function(orig_df, 
                    codebook_df, 
                    orig_name,
                    new_name) {
    
    df <- left_join(x = codebook_df, y = orig_df, by = orig_name)
    df <- select(df, -c(orig_name))
    colnames(df)[colnames(df) == orig_name] <- new_name
    df <- select(df, new_name)
    return(df)
}

# Declare a list to capture the cleaned dataframes
clean_df_list <- list()

# Counter
i <- 1

# Iterate through the uncleaned dataframes, clean and factor them
for (dataframe in df_list) {
    
    # Use the appropriate function with parameters to rename your answers
    # and drop the unnecessary columns
    df1 <- rf_func(dataframe, codebook1, 'borough', 'boroughName')
    df2 <- rf_func(dataframe, codebook2, 'X_32a', 'heating_breakdown')
    df3 <- rf_func_year(dataframe, codebook3, 'X_32b', 'num_heat_breakdowns')
    
    # Bind up the cleaned data frames
    df <- cbind(df1, df2, df3)
    
    # Append the clean dataframe to the list
    clean_df_list[[i]] <- df
    
    # Increase the counter
    i <- i + 1
}

# Row bind the list of cleaned dataframes, in order
aggregated_df <- bind_rows(clean_df_list)

# Factor the year column
aggregated_df$year <- as.factor(aggregated_df$year)

# Show some proof that this works
print(c('total samples: ', length(aggregated_df$borough)))
head(aggregated_df)
str(aggregated_df)
