library(dplyr)

data91 <- read.csv("../nycHousing1991.csv", header = T)
View(data91)

#separate the data relating to household income, # of people
#living in the household, borough, etc so we can look at 
#poverty levels

table91 <- select(data91, borough, hhinc, X_1b, X_1c, X_1f, X_4a, X_6, X_7a,
                  X_12a, X_12a2, X_13, X_14, X_20, X_35a, X_35c, X_51, X_52,
                  npr, mgrent, hhiwages, hhiint, hhissi, hhincva)
View(table91)

#change all the data values in the table to numeric instead of factor

table91 <- table91 %>%
          mutate(borough = as.numeric(borough),
                 X_1b = as.numeric(X_1b),
                 X_1c = as.numeric(X_1c),
                 X_1f = as.numeric(X_1f),
                 X_4a = as.numeric(X_4a),
                 X_6 = as.numeric(X_6),
                 X_7a = as.numeric(X_7a),
                 X_12a = as.numeric(X_12a),
                 X_12a2 = as.numeric(X_12a2),
                 X_13 = as.numeric(X_13),
                 X_14 = as.numeric(X_14),
                 X_20 = as.numeric(X_20),
                 X_35a = as.numeric(X_35a),
                 X_35c = as.numeric(X_35c),
                 X_51 = as.numeric(X_51),
                 X_52 = as.numeric(X_52),
                 npr = as.numeric(npr),
                 mgrent = as.numeric(mgrent),
                 hhiwages = as.numeric(hhiwages),
                 hhinc = as.numeric(hhinc),
                 hhiint = as.numeric(hhiint),
                 hhissi = as.numeric(hhissi),
                 hhincva = as.numeric(hhincva))

rename(dataTable91, Borough = borough, 
                    sex = X_1b, 
                    HouseholdIncome = hhinc,
                    Age = X_1c,
                    Race= X_1f,
                    YearMovedInto= X_4a,
                    Reason4Move= X_6,
                    BirthPlace= X_7a,
                    PurchasePrice= X_12a,
                    PurchasePrice2=X_12a2,
                    Value=X_13,
                    MortgageStatus=X_14,
                    NumOfUnits = X_20,
                    Mice_or_Rats = X_35a,
                    Exterminator = X_35c,
                    PublicAssOrWelf=X_51,
                    RentSubsidy = X_52,
                    NumOfRes = npr,
                    GrossRentMonthly = mgrent,
                    WagesIncome = hhiwages,
                    IncomeFromOther = hhiint,
                    IncomeFromPubAssist = hhissi,
                    IncomeFromMisc = hhincva)

codeBook91 <-data.frame(borough = c(1,2,3,4,5),
                        boroughName = c("Bronx", "Brooklyn",
                                        "Manhattan", "Queens",
                                        "Staten Island"))
codeBookSex <-data.frame(X_1b = c(1,2),
                         sex = c("Male", "Female"))

codeBookhhinc<-data.frame(hhinc = c)
codeBookSex
dataTable91 <- left_join( x = codeBookSex, y = dataTable91, by="X_1b")


dataTable91 <- left_join(x = codeBook91, y = table91, by="borough")
View(dataTable91)
