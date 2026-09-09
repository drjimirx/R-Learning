install.packages("haven")
library(haven)
patients <- haven::read_sav("patients.sav")


#One important advantage is that it can preserve information such as variable labels and value labels.