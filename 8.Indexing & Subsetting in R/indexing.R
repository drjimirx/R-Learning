age <- c(20, 25, 30, 35)
age[1]
age[2]

age[c(2, 4)] #subsetting
#[1] 25 35

age[1:3]
#[1] 20 25 30

age[-1]
#[1] 25 30 35

age[-c(2, 4)]
#[1] 20 30

patients <- data.frame(
  id = c(101, 102, 103, 104, 105),
  age = c(17, 25, 40, 65, 30),
  sex = c("F", "M", "F", "M", "M"),
  diagnosis = c( "Asthma",
    "Diabetes",
    "Hypertension",
    "Diabetes",
    "Asthma"
  )

)

# R uses data[row, column]
patients[1, 2] #Select row 1, column 2.

patients[1, 2]
#→ specific row and column

patients[1, ]
#→ entire row

patients[, 2]
#→ entire column

patients[, ]
#→ entire data frame


patients[1, ] #1 101  17   F Asthma
patients[c(1, 3), ] #select row 1 and 3 
#1  15 Female       Asthma
#3  40 Female Hypertension

patients[1:3, 2:4]
patients[, "age"]
patients$age  
patients[patients$age > 18, ]
patients[patients$sex == "M", ]
patients[patients$diagnosis == "Diabetes", ]

patients[patients$age > 40, ]
#Age greater than or equal to 40
patients[patients$age >= 40, ]
#Age less than 30
patients[patients$age < 30, ]
#Age less than or equal to 30
patients[patients$age <= 30, ]

patients[
  patients$age > 18 & patients$sex == "M",
]
patients[
  (patients$age > 60 & patients$sex == "M") |
    patients$diagnosis == "Asthma",
]


#%in% use
patients[
  patients$diagnosis == "Asthma" |
    patients$diagnosis == "Diabetes",
]
#or

patients[
  patients$diagnosis %in% c("Asthma", "Diabetes"),
]


patients[patients$id == 104, ]
patients[patients$id == 104, "age"] #Selecting Only the Age of Patient ID 104
patients[
  patients$id == 104,
  c("age", "sex", "diagnosis")
]
patients[
  patients$age >= 20 & patients$age <= 40,
]

#is.na() find missing value
is.na(age)

#using subset
patients[patients$age > 18 & patients$sex == "M", ] #or
subset(
  patients,
  age > 18 & sex == "M"
)

