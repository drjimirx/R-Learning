#Control flow refers to the way R decides which code to execute, when to execute it, and how many times to execute it.
#if
#if / else
  #if / else if / else
   # for
#while
#repeat
 # break
#next


#Classify patients as adult or child., Identify patients with abnormal laboratory results, Assign disease severity categories.,Apply inclusion and exclusion criteria.,Perform an operation repeatedly.,Stop a calculation when a particular condition is reached.



age <- 25
if (age >= 18) {
  print("Adult")
}


#if executes code only when the condition is TRUE.
if (age >= 18) {
  print("Adult")
  print("Eligible for adult category")
}

temperature <- 39
if (temperature >= 38) {
  print("Fever")
}
age <- 25
sex <- "M"

if (age >= 18 & sex == "M") {
  print("Adult male")
}

if (age >= 65 | sex == "F") {
  print("Condition met")
}
if (condition) {
  code_if_true
} else {
  code_if_false
}

age <- 20

if (age >= 18) {
  print("Adult")
} else {
  print("Child")
}

heart_rate <- 110

if (heart_rate > 100) {
  print("Above the selected threshold")
} else {
  print("Within the selected threshold")
}




age <- 70

if (age < 18) {
  print("Child")
} else if (age < 65) {
  print("Adult")
} else {
  print("Older adult")
}


bmi <- 27

if (bmi < 18.5) {
  print("Underweight")
} else if (bmi < 25) {
  print("Normal")
} else if (bmi < 30) {
  print("Overweight")
} else {
  print("Obesity")
}

#creating new variable with if 
age <- 25

if (age >= 18) {
  age_group <- "Adult"
} else {
  age_group <- "Child"
}


#ifelse for vectarized conditional operations
age <- c(15, 20, 25, 12, 40)
ifelse(age >= 18, "Adult", "Child")


patients$age_group <- ifelse(
  patients$age >= 18,
  "Adult",
  "Child"
)
#add new column with separated adult and child








#for (variable in sequence) {code} -- if you know ending values i.e 1 to i-max 
for (i in 1:10) {
  print(i)
}

names <- c("Ram", "Sita", "Hari")

for (i in names) {
  print(i)
}
patient_id <- c(101, 102, 103, 104, 105)
for (id in patient_id) {
  print(id)
}


values <- c(2, 4, 6, 8)
for ( i in values){
  print(i*i)
}
#Know how loops work, but don't automatically use loops when R can perform the operation vectorially.


for (i in 1:nrow(patients)) {
  print(patients$age[i])
}

nrow(patients)


#use while loop for condition where u repeat loop untill statement is valid.
values <- c(2,4,6,8,10)

age <- 25
while (age < 30) {
  age <- age + 1
  print(age)
}
#make sure the condition can eventually become FALSE

#break immediately stops loop
for (i in 1:10) {
  
  if (i == 9) {
    break
  }
  print(i)
}


#next stop the current argument and continue with next one
for (i in 1:5) {
  
  if (i == 3) {
    next
  }
  
  print(i)
}

for (age in c(15, 20, 30, 12)) {
  
  if (age >= 18) {
    print("Adult")
  } else {
    print("Child")
  }
}

patients <- data.frame(
  id = c(101, 102, 103, 104),
  age = c(15, 25, 40, 12),
  sex = c("F", "M", "F", "M")
)
for (i in 1:nrow(patients)) {
  
  if (patients$age[i] >= 18) {
    print(paste(patients$id[i], "Adult"))
  } else {
    print(paste(patients$id[i], "Child"))
  }
}

patients$age_group <- ifelse(
  patients$age >= 18,
  "Adult",
  "Child"
)



#instead of 
for (x in age) {
  print(x + 1)
}
#use 
x+1
#vectorization is prefered in medical research insted of loop




