#tidyr is used primarily for reshaping and tidying data.
library(tidyr)

#Important functions include:
pivot_longer()
pivot_wider()
drop_na()
replace_na()
separate()
unite()


#pivot_longer()
#Convert wide → long:
data_long <- data_wide %>%
  pivot_longer(
    cols = c(
      baseline,
      month1,
      month3
    ),
    names_to = "visit",
    values_to = "sbp"
  )


#Convert long → wide:
data_wide <- data_long %>%
  pivot_wider(
    names_from = visit,
    values_from = sbp
  )


