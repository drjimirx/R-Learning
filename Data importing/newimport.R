patient <- read.csv("Data importing/pt_data.csv")
patient

 #first six rows
head(patient)
#last six rows
tail(patient)

#check dimesnion
dim(patient) #[1] 10000    10 means 10000 rows and 10 colmn
#rows is observation and column is variable in most of the case
nrow(patient)
ncol(patient)

#variable name
names(patient)
