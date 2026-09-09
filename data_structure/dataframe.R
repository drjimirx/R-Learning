patients <- data.frame(
  age = c(20, 25, 30),
  sex = c("M", "F", "M")
)
 #adding more variable
patients <- data.frame(
  id = c(1, 2, 3, 4),
  age = c(20, 25, 30, 45),
  sex = c("M", "F", "M", "F"),
  diagnosis = c(
    "Appendicitis",
    "Cholecystitis",
    "Hernia",
    "Appendicitis"
  )
)
#Accessing a column or all observation in single variable
patients$age

#assessing all observation in all variable of single entity
patients[1,]


#Accessing a specific cell
patients[1,2]
patients[1, "age"]


#Selecting multiple rows
patients[1:3,] #Selects rows 1 through 3.


patients[, c("age", "sex")] #selecting multiple column

patients[patients$age > 25, ] #filtering data

patients$adult <- patients$age >= 18 #adds new filter which add new column named adult and fills data of true or false based on logic

patients$height <- c(1.70, 1.60, 1.75, 1.65)
patients$weight <- c(65, 55, 80, 72)
patients$BMI <- patients$weight/patients$height^2


str(patients)

summary(patients)
