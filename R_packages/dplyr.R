library(dplyr)

filter()
select()
mutate()
arrange()
summarise()
group_by()
left_join()
inner_join()


patients <- data.frame(
  id = 1:6,
  age = c(25, 45, 62, 34, 71, 50),
  sex = c("M", "F", "M", "F", "M", "F"),
  bmi = c(22.5, 28.4, 25.1, 24.8, 31.2, 27.3),
  diabetes = c(
    "No", "Yes", "No",
    "No", "Yes", "Yes"
  )
)

#filter functions
patients %>%
  filter(age < 18)
#multiple filters
patients %>%
  filter(
    age > 18,
    diabetes == "Yes"
  )

#select functions
patients %>%
  select(
    id,
    age,
    sex,
    bmi
  )


#mutate functions
#Create a new variable:
patients %>%
  mutate(
    obese = bmi >= 30
  )


#group_by() + summarise()
patients %>%
  group_by(sex) %>%
  summarise(
    mean_bmi = mean(bmi)
  )
#it make two group by sex and calculate different mean of two groups



