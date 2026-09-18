#Regression models often produce complicated R objects.
#broom converts many model results into tidy data frames.

install.packages("broom")

model <- lm(
  sbp ~ age + bmi,
  data = patients
)
broom::tidy(model)

# This produces a table containing information such as:
#   term
# estimate
# std.error
# statistic
# p.value

#broom with logistic regression
model <- glm(
  complication ~ age + bmi + diabetes,
  data = patients,
  family = binomial
)
broom::tidy(model)


#For odds ratios, you can exponentiate coefficients:
broom::tidy(
    model,
    exponentiate = TRUE,
    conf.int = TRUE
  )
