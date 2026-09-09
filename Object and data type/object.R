age <- 25
#age = object name
#<- = assignment operator
#25 = value stored in the object


#A single value, A vector, A matrix, A data frame, A list, A factor, A function, A model, Other complex structures

age <- 25 #numeric data
name <- "Jimi" #character or string
male <- TRUE #logical
class(age) #returns "numeric"
class(name)


typeof(age)
#returns "double" bcz R's numeric class normally uses double-precision floating-point storage.

#numeric, integer, character, logical, complex, raw

#An atomic vector contains elements that are all of one basic type.
age <- c(20, 25, 30) #all data are numeric
#c() means combine

sex <- factor(c("Male", "Female", "Male")) #factor means category
sex
class(sex)
levels(sex)
nlevels(sex)


#Ordered Factors
severity <- factor(
  c("Mild", "Severe", "Moderate", "Mild"),
  levels = c("Mild", "Moderate", "Severe"),
  ordered = TRUE
)
severity


#nominal vs ordinal category
#Factor Internally Uses Integer Codes
as.integer(sex) #R internally represents factor levels using integer codes plus labels.


#class conversion
age<-"25"
class(age)
age <-as.numeric(age)
class(age)
