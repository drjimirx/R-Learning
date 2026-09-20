install.packages("dplyr")
library(dplyr)
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


#Its major functions include:
filter()
select()
mutate()
arrange()
summarise()
group_by()
rename()
distinct()
count()
slice()


#filter() — Select Rows
#Suppose you want patients older than 60:
patients %>%
  filter(age > 60)

#Patients older than 50 and diabetic:
patients %>%
  filter(
    age > 50,
    diabetes == "Yes"
  )
#using &
patients %>%
  filter(
    age > 50 & diabetes == "Yes"
  )


#Patients who are either male or diabetic:
patients %>%
  filter(
    sex == "M" | diabetes == "Yes"
  )

#Patients who are either male and diabetic:
patients %>%
  filter(
    sex == "M" & diabetes == "Yes"
  )



#...........
#%in%
#Suppose you want patients aged 30, 40, or 50:

patients %>%
  filter(
    age %in% c(30, 40, 50)
  )
patients %>%
  filter(
    sex %in% c("M", "F")
  )



#.....................select() column
# select only age sex and bmi
patients %>%
  select(
    age,
    sex,
    bmi
  )

#select everything except bmi
patients %>%
  select(
    -bmi
  )

#select a range of column 
patients %>%
  select(
    age:bmi
  )




#rename sbp to systolic_bp
#new_name = old_name
patients %>%
  rename(
    systolic_bp = sbp
  )


# mutate() — Create or Modify Variables
# This is one of the most important functions in medical data analysis.
# For example, create an obesity variable:
patients %>%
  mutate(
    hypertensive = sbp>=140
  )
  
#create bmi if height and weight variable are present
patients %>%
  mutate(
    bmi = weight_kg / height_m^2
  )


#Create Age Groups
patients %>%
  mutate(
    age_group = case_when(
      age<18 ~ "child",
      age < 40 ~ "Young adult",
      age < 60 ~ "Middle age",
      TRUE ~ "Older adult"
    )
  )


#create bp level using case_when()
patients %>%
  mutate(
    bp_category = case_when(
      sbp < 120 ~ "Normal",
      sbp < 140 ~ "Elevated",
      sbp < 160 ~ "High",
      TRUE ~ "Very high"
    )
  )


#arrange() — Sort Rows
#Oldest first:
  patients %>%
  arrange(desc(age))
  
#Sort by multiple variables:
  patients %>%
  arrange(
    sex,
    desc(age)
  )

  
#summarize()
  patients %>%
    summarise(
      mean_age = mean(age),
      median_age = median(age),
      sd_age = sd(age),
      min_age = min(age),
      max_age = max(age)
    )

  
#group_by() + summarise()
  # This combination is extremely important.
  # Calculate mean BMI by sex:
patients %>%
group_by(sex) %>%
summarise(
mean_bmi = mean(bmi)
)

patients %>%
  group_by(diabetes) %>%
  summarise(
    mean_sbp = mean(sbp)
  )


#count()
patients %>%
  count(sex)

patients %>%
  count(diabetes)

patients %>%
  count(
    sex,
    diabetes
  )


#distinct()
#This is useful for checking categorical variables and detecting unexpected categories.
patients %>%
  distinct(sex)
patients %>%
  distinct(
    sex,
    diabetes
  )



