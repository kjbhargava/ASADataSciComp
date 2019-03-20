# The following is a function to change numerical values to appropriate
# categorical (named) values.
#
# All you need to do is create the codebook, and read in the .csv
#
# The inputs are as follows:
# orig_df - This is the unaltered dataframe from your .csv import (df object)
# codebook_df - This is dataframe that represents your 'dictionary' (df object)
# orig_name - the original name of the column (string)
# new_name - a new (meaningful) name you would like for the column

refactorFunction <- function(orig_df, 
                                codebook_df, 
                                orig_name,
                                new_name) {
    
    df <- left_join(x = codebook_df, y = orig_df, by = orig_name)
    df <- select(df, -c(orig_name))
    colnames(df)[colnames(df) == orig_name] <- new_name
    df <- select(df, new_name, year)
    return(df)
}

