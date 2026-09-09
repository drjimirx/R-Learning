library(readxl)
patxl <- readxl::read_excel("Data importing/pt_data.xlsx")
#An Excel workbook can contain multiple sheets


#way to choose which excel sheet to import
patients <- readxl::read_excel(
  "patients.xlsx",
  sheet = 1
)

str(patients)
#very important to see this because excel can covert patient ID 0003 to 3, 03-01 to date etc.

#This could be usefull when i have to specifically import certain range of data if there is title, multiple table, notes etc
patients <- readxl::read_excel(
  "patients.xlsx",
  range = "A1:G501"
)



