# Tidyverse is a collection of R packages designed to make data manipulation, cleaning, visualization, importing, and programming easier and more consistent.
# For medical research, Tidyverse can become one of your most important R skills because clinical datasets often require extensive:
# Data cleaning
# Variable transformation
# Filtering
# Grouping
# Summarization
# Reshaping
# Visualization
# Text cleaning
# Factor management
# Repeated analysis
# The main Tidyverse packages you should learn are:
#   Tidyverse
# │
# ├── dplyr      → Data manipulation
# ├── tidyr      → Data reshaping and tidying
# ├── ggplot2    → Data visualization
# ├── readr      → Import/export rectangular data
# ├── purrr      → Functional programming
# ├── tibble     → Modern data frames
# ├── stringr    → String/text manipulation
# └── forcats    → Categorical/factor variables
# Install Tidyverse:
  install.packages("tidyverse")
# Load it:
library(tidyverse)
# Loading tidyverse makes the core Tidyverse packages available.

  
  
  
  # A dataset is generally considered tidy when:
  # Each variable is a column.
  # Each observation is a row.
  # Each value is a single cell.
  
  
  patients <- tibble(
    id = 1:10,
    age = c(23, 45, 67, 34, 52, 71, 29, 48, 60, 38),
    sex = c(
      "M", "F", "M", "F", "M",
      "M", "F", "F", "M", "F"
    ),
    bmi = c(
      21.5, 28.4, 31.2, 24.7, 29.8,
      32.1, 22.8, 27.4, 30.5, 25.9
    ),
    diabetes = c(
      "No", "Yes", "Yes", "No", "Yes",
      "Yes", "No", "No", "Yes", "No"
    ),
    sbp = c(
      118, 135, 152, 124, 142,
      160, 116, 130, 148, 128
    )
  )

  
  patients %>%
    filter(age > 50)
  # can be read as: Take patients, then filter patients whose age is greater than 50.
  #Tidyverse code historically and commonly uses: %>%
  # Modern R has the native pipe: |>
    
  