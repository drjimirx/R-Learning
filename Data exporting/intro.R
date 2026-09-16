#Exporting data means saving an R data frame into an external file so that it can be:
#Shared with collaborators
#Opened in Excel
#Imported into SPSS, Stata, or SAS
#Used for further analysis
#Archived
#Submitted as supplementary research data
#Transferred to another statistical software

# For medical research, exporting data should be done carefully because datasets may contain patient identifiers, sensitive clinical information, derived variables, and confidential research data.

#suppose i have
patients <- data.frame(
  id = c(1, 2, 3, 4, 5),
  age = c(25, 45, 62, 34, 71),
  sex = c("M", "F", "M", "F", "M"),
  bmi = c(22.5, 28.4, 25.1, 24.8, 31.2),
  diabetes = c("No", "Yes", "No", "No", "Yes")
)


