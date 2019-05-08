
# Read in input files
owned <- read.csv("../ownedNYCHVS_midterm2.csv", header = T)
rented <- read.csv("../rentedNYCHVS_midterm3.csv", header = T)

# Linear Models for the 'owned' dataset
# A model with a meaningful prediction, but low R value
myRegOwnedinc <- lm(hhinc ~ value + num_rooms + num_bedrooms + num_under18, data = owned)

# A meaningless prediction, but bst R value that could be found
myRegOwnedbed <- lm(num_bedrooms ~  num_rooms + num_stories + num_under18, data = owned)

# Linear models for the 'rented' dataset

# A meaningful prediction, but low R value
myRegRentedval <- lm(value ~ num_under18 + hhinc, data = rented)

# A meaningless prediction, but best R value that could be found
myRegRentedbed <- lm(num_bedrooms ~ num_rooms + num_under18 + value + num_under6, data = rented)

# Residuals for the linear models
myRegOwnedincRes <- resid(myRegOwnedinc)
myRegOwnedbedRes <- resid(myRegOwnedbed)
myRegRentedvalRes <- resid(myRegRentedval)
myRegRentedbedRes <- resid(myRegRentedbed)

# Plots came out ugly and had too many datapoints just scattered about for meaningful representation.  
# Summary calls might be the best way to summarize things
summary(myRegOwnedinc)
summary(myRegOwnedbed)
summary(myRegRentedval)
summary(myRegREntedbed)

# Having chosen to clean up a number of fields of data relating to the overall size, shape and 
# structure of rented and owned domiciles, we discovered that vast qualtities of highly variable 
# data isn't particularly well suited for linear model predictions.  Perhaps if we had chosen to look at 
# each subborough indidually we would have been able to come up with better predictive models. 
# As it is, the best R value we could find was barely .76/.77.  This vlaue was seen when predicting the number 
# of bedrooms in both owned and rented units.  Apparently the number of rooms in a home is overall an excellent 
# indicator of how many bedrooms the residence had.  And frankly, while these models use multiple inputs, the 
# number of rooms in the unit was overwhelmingly the predictive factor.  Unfortunately we were unable to come up 
# with any meaningful or useful linear models (e.g. preidtcing the home value or household income based on other 
# qualifying factors), as everything else had an R value well below .01 
