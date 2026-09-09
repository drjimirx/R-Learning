
number <- 235

if (number %% 2 == 0) {
  print("Even")
} else {
  print("Odd")
}


10+2
10-2
10*2
10/2
10%%2 #modulus/remainder
10%/%3 #integer division


#functions functions_name(argument)
sqrt(234)
abs(-10) #gives absolute values 

exp(23) #exponent functions
log(100, base = 10)
log10(100)
log2(32)

round(2.345667, digits=2)

#floor() rounds a number downward toward negative infinity.
floor(3.9)
floor(3.1)
floor(-3.1) #shocking to know this

#ceiling() rounds a number upward toward positive infinity.
ceiling(3.9) #opposite of floor 
ceiling(3.1)
ceiling(-3.9)

#trunc() removes the decimal portion and moves the number toward zero.
trunc(-3.9)
trunc(3.9)


#signif() rounds to a specified number of significant digits, rather than decimal places.
signif(123/4)
signif(123.456, 2) #return 120 d/t it return only two significant digits

min(10, 5, 20, 3)
max(10, 5, 20, 3)
sum(10, 5, 20, 3)

marks <- c(70, 80, 90, 60, 75)
result <- mean(marks)
median(marks)


#trigonometry - R uses radians for trigonometric functions.
pi
sin(pi/2)
sin(245)
sin(90)

factorial(7) #factorial 7!

1e3 #scrientific notation 1*10^3

sqrt((10^2) + (5^2)) #multiple functioning


#calculate percentage

male <- 234
female <- 345
total <- male +female
total
percent_male <- (male/total)*100
percent_male

#percent change
old <- 100
new <- 120
percentage_change <- (new - old) / old * 100
percentage_change


#handling missing values
x <- c(10, 20, NA, 40)
mean(x) #return NA
mean(x, na.rm = TRUE) #Remove NA values before performing the calculation.

#Vectarized calculations
xa <- c(10, 20, 30, 40)
xa*5 #return 1]  50 100  NA 200

#Mathematical Functions on Vectors
sqrt(xa)





#practical scenario
pt_age <- c(22, 25, 31, 45, 52, 38, 29, 41, 36, 27)

#number of patients
length(pt_age)

#total age
sum(pt_age)

#mean age
mean(pt_age)

#median age
median(pt_age)

min(pt_age)
max(pt_age)
sd(pt_age)

