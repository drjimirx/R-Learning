patients <- data.frame(
  id = c(1, 2, 3, 4, 5),
  age = c(25, 45, 62, 34, 71),
  sex = c("M", "F", "M", "F", "M"),
  bmi = c(22.5, 28.4, 25.1, 24.8, 31.2),
  diabetes = c("No", "Yes", "No", "No", "Yes")
)


writexl::write_xlsx(
  patients,
  "patient_data_excel.xlsx"
)


#exporting multiple object as sheet in single excel file
patientsdata <- data.frame(
  id = 1:3,
  age = c(25, 40, 65)
)

labs <- data.frame(
  id = 1:3,
  hemoglobin = c(14.2, 12.8, 10.5)
)

outcomes <- data.frame(
  id = 1:3,
  outcome = c("Good", "Good", "Poor")
)

#now we have to create three different sheet
writexl::write_xlsx(
  list(
    Patients = patientsdata,
    Laboratory = labs,
    Outcomes = outcomes
  ),
  "multiple_sheet_export.xlsx"
)

