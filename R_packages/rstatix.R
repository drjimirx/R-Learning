#rstatix provides convenient functions for statistical testing, particularly in tidyverse-style workflows.
#Install:
install.packages("rstatix")
#Example:
  library(rstatix)

patients %>%
  t_test(
    bmi ~ sex
  )
