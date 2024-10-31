#read data
library(here)
data <- read.csv(here("train.csv"))

# 缩尾

#Check NA
any(is.na(data))

#standardize the variables
numeric_columns <- sapply(data, is.numeric) & names(data) != "Diagnosis"
data[numeric_columns] <- scale(data[numeric_columns])
summary(data)






