library(dplyr)
library(tidyr)
library(ggplot2)

yearmean <- data %>%
  group_by(year) %>%
  summarize(indmean = mean(index))
yearmean$borough_name <- rep("New York (overall)", length(yearmean$year))

data %>%
  group_by(borough_name, year) %>%
  mutate(indmean = mean(index)) %>%
  ggplot(aes(x=year, y = indmean, color = borough_name)) + 
  geom_line(aes(group = borough_name)) + 
  geom_line(data = yearmean) +
  xlab("Year") +
  ylab("Average number of problems (weighted)") +
  ggtitle("Reported Problems by Borough and Year", subtitle =  "(with overall)") +
  labs(color = "Borough")

