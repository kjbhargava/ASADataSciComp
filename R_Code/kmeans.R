library(dplyr)
install.packages("factoextra")
library(factoextra)

lrtotal <- read.csv("C:\\Users\\maybe\\Downloads\\lr.csv")
head(lrtotal)

##Separate into owners and renters
lrown <- lrtotal %>% filter(Value != 9999999, Total.Household.Income.Recode!=9999999)
head(lrown)

par(mfrow = c(1, 5))

BronxOwn <- lrown %>% filter(Borough == 1)
BronxOwn2 <- BronxOwn[ , c(3, 7)]
kcBronxOwn <- kmeans(BronxOwn2, centers = 3)
fviz_cluster(kcBronxOwn, data = BronxOwn2, main = "Bronx")

Brooklynown <- lrown %>% filter(Borough == 2)
Brooklynown2 <- Brooklynown[ , c(1,3,7)]
kcBrooklynOwn <- kmeans(Brooklynown2, centers = 3)
fviz_cluster(kcBrooklynOwn, data = Brooklynown2[, 2:3], main = "Brooklyn")

ManhatOwn <- lrown %>% filter(Borough == 3)
ManhatOwn2 <- ManhatOwn[ , c(3, 7)]
kcManhatOwn <- kmeans(ManhatOwn2, centers = 3)
fviz_cluster(kcManhatOwn, data = ManhatOwn2, main = "Manhattan")

QueensOwn <- lrown %>% filter(Borough == 4)
QueensOwn2 <- QueensOwn[ , c(3, 7)]
kcQueensOwn2 <- kmeans(QueensOwn2, centers = 3)
fviz_cluster(kcQueensOwn2, data = QueensOwn2, main = "Queens")

SIOwn <- lrown %>% filter(Borough == 5)
SIOwn2 <- SIOwn[ , c(3, 7)]
kcSIOwn <- kmeans(SIOwn2, centers = 3)
fviz_cluster(kcSIOwn, data = SIOwn2, main = "Staten Island")
?fviz_cluster



lrown2 <- lrown[ , c(1:4,6:7)]






lrrent <- lrtotal %>% filter(Monthly.contract.rent != 99999)

kcown <- kmeans(lrown2, centers = 5)
head(lrown)
fviz_cluster(kcown, data = lrown2)
str(kcown)
head(kcown)
?kmeans