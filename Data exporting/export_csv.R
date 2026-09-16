patients <- data.frame(
  id = c(1, 2, 3, 4, 5),
  age = c(25, 45, 62, 34, 71),
  sex = c("M", "F", "M", "F", "M"),
  bmi = c(22.5, 28.4, 25.1, 24.8, 31.2),
  diabetes = c("No", "Yes", "No", "No", "Yes")
)

write.csv(
  patients,
  "patients.csv"
)

#patients is data frame and below is the name which is created as csv file in current working directory

# Before exporting, check:
  getwd()
#it is where the file will be created and saved.
 
  
write.csv(
    patients,
    "patients1.csv",
    row.names = FALSE
  )
#R data frames have row names.
#like first variable is created id which conatins 1,2,3.... for every row. but it is not actual varible. so 


#creating subset where entire data set is not needed
subset_patient <- patients[ , c("age", "sex", "bmi")]
write.csv(
  subset_patient,
  "subset_patients.csv",
  row.names = FALSE
)

#Exporting Filtered DATA
adults <- patients[
  patients$age > 18,
]

write.csv(
  adults,
  "adult_patients.csv",
  row.names = FALSE
)


#modern tidyverse workflows often use: 
readr::write_csv()
readr::write_csv(
  patients,
  "patients.csv"
)
# write_csv() does not write row names as an extra column.









 