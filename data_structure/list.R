#unlike matrix and vector, list can contain different types of objects
 #for eg
patient <- list(
  age = 25,
  sex = "Male",
  diagnosis = "Appendicitis"
)
 #where age is numeric, sex is character and diagnosis is also character.
patient <- list(
  age = 25,
  sex = "Male",
  blood_pressure = c(120, 80),
  laboratory = c(Hb = 14, WBC = 8000),
  admitted = TRUE
)

patient$age #return value saved in age

#$ is called operator to get component age from list called patient

patient[["age"]] #same function as opertator do

#nested list
patient <- list(
  demographic = list(
    age = 25,
    sex = "Male"
  ),
  diagnosis = "Appendicitis"
)
 #in this example  patient has compoent demographics which has another nested list

patient$demographic$age

