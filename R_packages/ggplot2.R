install.packages("ggplot2")
library(ggplot2)


patients <- data.frame(
  id = 1:6,
  age = c(25, 45, 62, 34, 71, 50),
  sex = c("M", "F", "M", "F", "M", "F"),
  bmi = c(22.5, 28.4, 25.1, 24.8, 31.2, 27.3),
  sbp = c(124, 156, 140, 130, 160, 150),
  diabetes = c(
    "No", "Yes", "No",
    "No", "Yes", "Yes"
  )
)

ggplot(
  patients,
  aes(
    x = age,
    y = bmi
  )
) +
  geom_point()


ggplot(
  patients,
  aes(
    x = bmi,
    y = sbp
  )
) +
  geom_point()


ggplot(
  patients,
  aes(
    x = bmi,
    y = sbp
  )
) +
  geom_point() +
  geom_smooth(
    method = "lm"
  )

