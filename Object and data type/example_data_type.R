patient_id <- c("P001", "P002", "P003", "P004")

age <- c(25, 42, 36, 58)

sex <- factor(
  c("Male", "Female", "Male", "Female")
)

weight <- c(65.5, 72.3, 80.1, 68.7)

diabetes <- c(FALSE, TRUE, FALSE, TRUE)

treatment <- factor(
  c("Surgery", "Medical", "Surgery", "Medical")
)

severity <- factor(
  c("Mild", "Severe", "Moderate", "Mild"),
  levels = c("Mild", "Moderate", "Severe"),
  ordered = TRUE
)
class(patient_id)
class(age)
class(sex)
class(weight)
class(diabetes)
class(treatment)
class(severity)
