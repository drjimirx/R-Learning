#Estimated Marginal Means
#It is especially useful after regression or ANOVA models when you want adjusted group comparisons.


install.packages("emmeans")

model <- lm(
  sbp ~ diabetes + age + sex,
  data = patients
)

emmeans::emmeans(
  model,
  ~ diabetes
)
#This estimates the expected SBP for diabetes groups while accounting for variables included in the model.