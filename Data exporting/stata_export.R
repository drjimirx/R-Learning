
patients <- data.frame(
  id = c(1, 2, 3, 4, 5),
  age = c(25, 45, 62, 34, 71),
  sex = c("M", "F", "M", "F", "M"),
  bmi = c(22.5, 28.4, 25.1, 24.8, 31.2),
  diabetes = c("No", "Yes", "No", "No", "Yes")
)

haven::write_dta(
  patients,
  "patients.dta"
)
