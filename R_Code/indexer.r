library(dplyr)
library(tidyr)
library(ggplot2)
data <- read.csv("housingAggregation.csv")

conditionslist <- c("ex_walls_missing_sloping" , "ex_walls_cracks", "ex_walls_looseMaterial", 
                    "ex_windows_missing", "ex_windows_loose", "ex_windows_boarded", 
                    "handrail_problem", "stairway_problem", "floors_deeply_worn", 
                    "floors_holes", "building_condition", "heating_breakdown", 
                    "mice_present", "wall_cracks_or_holes", "holes_in_floors", 
                    "water_leaks", "peeling_paint_plaster")

ex_struc_issues <- c("ex_walls_missing_sloping" , "ex_walls_cracks", "ex_walls_looseMaterial", 
                     "ex_windows_missing", "ex_windows_loose", "ex_windows_boarded")

other_bin_issues <- c("handrail_problem", "stairway_problem", "floors_deeply_worn", 
                     "floors_holes", "heating_breakdown", 
                     "mice_present", "wall_cracks_or_holes", "holes_in_floors", 
                     "water_leaks", "peeling_paint_plaster")

yesnoindexer <- function(column, yes = 1, no = 0){
    return(ifelse(column == "Yes", yes, no))
}

index.condition <- data %>%
  select(conditionslist)


for(condition in ex_struc_issues){
  index.condition[,condition] <- yesnoindexer(index.condition[,condition], yes = 5)
}
for(condition in other_bin_issues){
  index.condition[,condition] <- yesnoindexer(index.condition[,condition], yes = 2)
}

con <- index.condition$building_condition
con <- ifelse(con == "Sound", 0, ifelse(con == "Deteriorating", 1, 2))
index.condition$building_condition <- con
rm(con, condition)

data <- select(data, "year", "borough_name")
data$index <- rowSums(index.condition)
data <- drop_na(data)
data %>%
  ggplot() + geom_bar(aes(x=index))
