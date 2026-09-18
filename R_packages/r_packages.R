# For medical research, packages are essential for:
# Cleaning clinical datasets
# Importing hospital/research data
# Statistical analysis
# Visualization
# Regression
# Survival analysis
# Epidemiology
# Missing-data handling
# Propensity-score analysis
# Meta-analysis
# Publication-quality tables and reports


#R has base packages
mean()
median()
sd()
summary()


#package vs functions
dplyr() #packages/library
filter() #functions
#PACKAGE → contains → FUNCTIONS

#TO install
install.packages("dplyr")

#install multiple packages
install.packages(
  c(
    "dplyr",
    "tidyr",
    "ggplot2",
    "readxl"
  )
)


#Loading means Make the package available in my current R session.
library(dplyr)

#Now functions from dplyr can generally be used directly:
filter()
select()
mutate()
summarise()

#Historically, 
require()
#has often been used inside functions or scripts when you want to check whether a package can be loaded.


if (require(dplyr)) {
  print("dplyr is available")
}

#You can call a specific function using:
#package::function()
dplyr::filter()
ggplot2::ggplot()
readxl::read_excel()
haven::read_sav()

#Suppose several packages have functions with similar names.
stats::filter()
dplyr::filter()


"ggplot2" %in% rownames(installed.packages())
#Returns true if packages is installed successfully.

#checking package version
packageVersion("dplyr")

#update packages
update.packages("dplyr")


#Many R packages are distributed through CRAN: Comprehensive R Archive Network

# Medical Research in R
# │
# ├── Data manipulation
# │   ├── dplyr
# │   ├── tidyr
# │   └── data.table
# │
# ├── Import
# │   ├── readr
# │   ├── readxl
# │   └── haven
# │
# ├── Visualization
# │   └── ggplot2
# │
# ├── Reporting
# │   ├── gtsummary
# │   ├── gt
# │   ├── flextable
# │   └── officer
# │
# ├── Statistics
# │   ├── stats
# │   ├── rstatix
# │   ├── car
# │   └── emmeans
# │
# ├── Regression
# │   ├── broom
# │   └── glmnet
# │
# ├── Survival
# │   ├── survival
# │   └── survminer
# │
# ├── Epidemiology
# │   ├── epiR
# │   └── epitools
# │
# ├── Missing data
# │   └── mice
# │
# ├── Propensity scores
# │   ├── MatchIt
# │   └── WeightIt
# │
# └── Meta-analysis
# ├── meta
# └── metafor


    


