#logical value i,e, TRUE or FALSE
10>5 # Returns TRUE

10 > 5 #greater than
10 < 5 #lessser than
10 >= 10 #equal or greater  than
10 <= 5 #equal or less than
10 == 10 #equal to
10 != 5 #not equal to #case sensitive male and Male are different

age <- c(15, 20, 25, 30, 35)
age > 18
#[1] FALSE TRUE TRUE TRUE TRUE


age[age > 18]
#[1] 20 25 30 35


#and = &
age <- 25
sex <- "Male"
age > 18 & sex == "Male" #true

#or = |
age <- 35
sex <- "female"
age >40 | sex == "female" # true

#NOT-!
!TRUE #FALSE 
age <- 25
!(age > 18) #FALSE




age <- 45
sex <- "Male"
diagnosis <- "Diabetes"

age > 18 & sex == "Male" & diagnosis == "Diabetes"



