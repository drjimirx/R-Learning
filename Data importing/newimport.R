patient <- read.csv("Data importing/pt_data.csv")
patient

 #first six rows
head(patient)
#last six rows
tail(patient)

#check dimension
dim(patient) #[1] 10000    10 means 10000 rows and 10 colmn
#rows is observation and column is variable in most of the case
nrow(patient)
ncol(patient)

#variable name
names(patient)

#inspect the structure
str(patient)

#summary
summary(patient)


#modern csv importing with readr
#load package first 
library(readr)
mod_pat <- readr::read_csv("Data importing/pt_data.csv")
#readr is part of the tidyverse ecosystem
is.na(mod_pat)
sum(is.na(mod_pat))

#msiing value 
#some medical dataset represnt missing value as 999 in that case we need to tell r to mark it as NA insted of 999  AS FOLLOWS
patients <- readr::read_csv(
  "patients.csv",
  na = c("", "NA", "999")
)




