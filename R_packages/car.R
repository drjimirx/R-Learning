# Companion to Applied Regression
# It provides useful tools for regression diagnostics and statistical testing.

install.packages("car")
car::vif()

#Example:
model <- lm(
    sbp ~ age + bmi + diabetes,
    data = patients
  )

car::vif(model)

