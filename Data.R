data <- read.csv("C:/Users/DeleeuwH/Documents/Seer_updated.csv")
head(data)
# Delete rows where 'status' equals "Alive"
df <- subset(data, COD.to.site.recode != "Alive")
