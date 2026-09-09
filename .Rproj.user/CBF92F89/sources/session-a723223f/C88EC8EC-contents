install.packages(c(
  "readxl",
  "dplyr",
  "tidyr",
  "ggplot2",
  "janitor",
  "skimr",
  "gtsummary",
  "naniar"
))

library(readxl)
library(dplyr)
library(tidyr)
library(ggplot2)

library(skimr)
library(gtsummary)
library(naniar)

data <- readr::read_csv("/Users/user/Desktop/Root/My Code Projects/R/learning/Data importing/pt_data.csv")
#CSV means comma separated value

head(data)
tail(data)
str(data)
names(data)
data <- data %>%
  clean_names()
names(data)
data <- data %>% 
  mutate(diagnosis = as.factor(diagnosis))
summary(data)
