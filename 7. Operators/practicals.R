patients <- data.frame(
  age = c(15, 25, 40, 70, 30),
  sex = c("Female", "Male", "Female", "Male", "Male"),
  diagnosis = c("Asthma", "Diabetes", "Hypertension", "Diabetes", "Asthma")
)

#Find patients older than 18
patients[patients$age > 18, ]


#Find male patients
patients[patients$sex == "Male", ]

#Find patients older than 18 AND male
patients[patients$age > 18 & patients$sex == "Male", ]

#Find patients older than 60 OR diagnosed with diabetes
patients[patients$age>60 | patients$diagnosis == "Diabetes", ]


