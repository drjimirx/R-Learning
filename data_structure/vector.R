#A vector is the most basic and commonly used data structure in R.
#It is a one-dimensional collection of values.

age <- c(20, 25, 30, 35) # a object named age conatains four numeric value as vector data structure
#c() means combines or concatenate for crating vector
age[1]
age[3]
age[c(1, 3)]
age[-1] #give me everything except element 1
length(age)
class(age)
typeof(age)
x <- c(10, 20, "30")
 age + 50
age*3 
mean(age)
age>29 #comparision


