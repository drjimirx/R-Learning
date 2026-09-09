#Functions in R
#function_name(argument1, argument2)

mean(c(10, 20, 30))
#mean()              → function
#c(10, 20, 30)       → argument supplied to the function

round(3.14159, 3) #some fuctions accept multiple arguments
round(x = 3.14159, digits = 2) #named arguments
 

#mean with missing value
age <- c(20, 25, NA, 35, 40)
mean(age, na.rm = TRUE)
median(age, na.rm = TRUE)

ages <- c(20, 25, 30, 40) #median with even number
median(ages) #(a+b)/2

#median and interquartile range are commonly used when data are skewed.
#mean affected largely if a number in vector or list is very large where as it doesnot affect much for median and interquartile ranges

weight <- c(60, 62, 64, 66, 68)
sd(weight)


#example
sbp <- c(118, 120, 122, 125, 130)

mean(sbp)
sd(sbp)
#report as mean+-sd
#sample sd n-1 and population sd n
min(sbp)
max(sbp)
#for ranges
summary(sbp) #for all value


#summary of data frames
patients <- data.frame(
  age = c(20, 25, 30, 35, 40),
  weight = c(55, 60, 65, 70, 75),
  sex = c("F", "M", "F", "M", "M")
)
summary(patients)
patients$sex <- as.factor(patients$sex) #changes character of sex to category
str(patients$sex)
summary(patients)


#some has default value mean(x, trim = 0, na.rm = FALSE, ...)
?mean #for searching functions help


#own custom functions
bmi <- function(x,y){
  x/(y*y)
}
bmi(70,1.67)

calculate_bmi <- function(weight, height) {
  bmi <- weight / height^2
  bmi
}
calculate_bmi(45, 1.5)

#wow my own constom
calculate_bmi_category <- function(weight, height) {
  
  bmi <- weight / height^2
  print(bmi)
  
  if (bmi < 18.5) {
    category <- "Underweight"
  } else if (bmi < 25) {
    category <- "Normal"
  } else if (bmi < 30) {
    category <- "Overweight"
  } else {
    category <- "Obesity"
  }
  
  category
}
calculate_bmi_category(76, 1.67)


#Function with a Default Argument
calculate_bmi <- function(weight, height, digits = 2) {
  round(weight / height^2, digits)
}
calculate_bmi(70, 1.75, digits = 3)


patients <- data.frame(
  age = c(22, 25, 30, 45, 60),
  weight = c(55, 65, 70, 80, 75),
  height = c(1.60, 1.70, 1.75, 1.80, 1.65)
)

patients$bmi <- patients$weight / patients$height^2
