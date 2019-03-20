# The following is a function to change numerical values to appropriate
# categorical (named) values.
#
# There is also a .ipynb file that you can look at an implementation of these tools
#
# The inputs are as follows:
# orig_df - This is the unaltered dataframe from your .csv import (df object)
# codebook_df - This is dataframe that represents your 'dictionary' (df object)
# orig_name - the original name of the column (string)
# new_name - a new (meaningful) name you would like for the column
# 
# Note that old_name and new_name, have to match the column names specified in your 
# codebook dataframe object


# This function appends the year column, is it only for the last 
# dataframe you will append to your df
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

# This function doesn't append the year and it should be used for most
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
