library(dplyr)
library(ggplot2)


##Read in file
lrtotal <- read.csv("C:\\Users\\maybe\\Downloads\\lr.csv", headers = T)

##Separate into owners and renters
lrown <- lrtotal %>% filter(Value != 9999999)
lrrent <- lrtotal %>% filter(Monthly.contract.rent != 99999)

##Include only rows where toilet breakdowns and presence of mice were answered
lrrent <- lrrent[lrrent$Toilet.breakdowns %in% c(1,2), ]
lrrent <- lrrent[lrrent$Presence.of.mice.or.rats %in% c(1,2), ]
lrown <- lrown[lrown$Toilet.breakdowns %in% c(1,2), ]
lrown <- lrown[lrown$Presence.of.mice.or.rats %in% c(1,2), ]

##Change no values from 2 to 0
lrrent$Toilet.breakdowns[lrrent$Toilet.breakdowns == 2] <- 0
lrrent$Presence.of.mice.or.rats[lrrent$Presence.of.mice.or.rats == 2] <- 0
lrown$Toilet.breakdowns[lrown$Toilet.breakdowns == 2] <- 0
lrown$Presence.of.mice.or.rats[lrown$Presence.of.mice.or.rats == 2] <- 0

##Plots
ggplot(data = lrrent, mapping = aes(y = Toilet.breakdowns, x = Monthly.contract.rent)) +
  geom_point() +
  labs(title = "Toilet Breakdowns vs Monthly Rent") +
  geom_smooth(method = "glm", 
              method.args = list(family = binomial), 
              se = FALSE)

ggplot(data = lrrent, mapping = aes(y = Presence.of.mice.or.rats, x = Monthly.contract.rent)) +
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


