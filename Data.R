install.packages("survival") 
install.packages("dplyr")
library(survival)
library(dplyr)
data <- read.csv("C:/Users/DeleeuwH/Documents/Seer_updated.csv")
head(data)
# Delete rows where 'status' equals "Alive"
df <- subset(data, COD.to.site.recode != "Alive")

df2 <- df %>%
  rename(
    Age = Age.recode.with.single.ages.and.85.,
    Race = Race.ethnicity,
    Origin = Origin.recode.NHIA..Hispanic..Non.Hisp.,
    Site = Site.recode.ICD.O.3.WHO.2008,
    Median_Household_Income = Median.household.income.inflation.adj.to.2019,
    COD_Site = COD.to.site.recode
  )

print(df)
