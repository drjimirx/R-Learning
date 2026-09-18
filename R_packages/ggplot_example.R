# ============================================================
# GGPLOT2 PRACTICE WITH PATIENT DATA
# ============================================================

# Install ggplot2 if not already installed
# install.packages("ggplot2")

# Load ggplot2
library(ggplot2)


# ============================================================
# 1. CREATE THE DATAFRAME
# ============================================================

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


# ============================================================
# 2. SCATTER PLOT
# ============================================================

# Age vs BMI
ggplot(patients, aes(x = age, y = bmi)) +
  geom_point()


# Age vs BMI, colored according to sex
ggplot(patients, aes(x = age, y = bmi, color = sex)) +
  geom_point(size = 3)


# Age vs BMI, colored according to diabetes
ggplot(patients, aes(x = age, y = bmi, color = diabetes)) +
  geom_point(size = 3)


# Age vs SBP
ggplot(patients, aes(x = age, y = sbp)) +
  geom_point(size = 3)


# BMI vs SBP
ggplot(patients, aes(x = bmi, y = sbp)) +
  geom_point(size = 3)


# ============================================================
# 3. SCATTER PLOT WITH REGRESSION LINE
# ============================================================

# Add linear regression line
ggplot(patients, aes(x = age, y = sbp)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm")


# Regression line without confidence interval
ggplot(patients, aes(x = age, y = sbp)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE)


# BMI vs SBP with regression line
ggplot(patients, aes(x = bmi, y = sbp)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm")


# ============================================================
# 4. SCATTER PLOT USING MULTIPLE VARIABLES
# ============================================================

# Color = diabetes
# Shape = sex
ggplot(
  patients,
  aes(
    x = age,
    y = sbp,
    color = diabetes,
    shape = sex
  )
) +
  geom_point(size = 4)


# Color = diabetes
# Shape = sex
# Size = BMI
ggplot(
  patients,
  aes(
    x = age,
    y = sbp,
    color = diabetes,
    shape = sex,
    size = bmi
  )
) +
  geom_point()


# ============================================================
# 5. BAR GRAPH
# ============================================================

# SBP of each patient
ggplot(patients, aes(x = factor(id), y = sbp)) +
  geom_col()


# Age of each patient
ggplot(patients, aes(x = factor(id), y = age)) +
  geom_col()


# BMI of each patient
ggplot(patients, aes(x = factor(id), y = bmi)) +
  geom_col()


# ============================================================
# 6. BAR GRAPH FOR CATEGORICAL VARIABLES
# ============================================================

# Number of patients by sex
ggplot(patients, aes(x = sex)) +
  geom_bar()


# Number of diabetic and non-diabetic patients
ggplot(patients, aes(x = diabetes)) +
  geom_bar()


# ============================================================
# 7. DIABETES BY SEX
# ============================================================

# Stacked bar chart
ggplot(patients, aes(x = sex, fill = diabetes)) +
  geom_bar()


# Side-by-side bar chart
ggplot(patients, aes(x = sex, fill = diabetes)) +
  geom_bar(position = "dodge")


# Proportion of diabetes within each sex
ggplot(patients, aes(x = sex, fill = diabetes)) +
  geom_bar(position = "fill")


# ============================================================
# 8. HISTOGRAM
# ============================================================

# Distribution of age
ggplot(patients, aes(x = age)) +
  geom_histogram()


# Age histogram with bin width = 10
ggplot(patients, aes(x = age)) +
  geom_histogram(binwidth = 10)


# BMI histogram
ggplot(patients, aes(x = bmi)) +
  geom_histogram(binwidth = 2)


# SBP histogram
ggplot(patients, aes(x = sbp)) +
  geom_histogram(binwidth = 10)


# ============================================================
# 9. DENSITY PLOT
# ============================================================

# Distribution of BMI
ggplot(patients, aes(x = bmi)) +
  geom_density()


# BMI density according to diabetes
ggplot(patients, aes(x = bmi, fill = diabetes)) +
  geom_density(alpha = 0.5)


# ============================================================
# 10. BOXPLOT
# ============================================================

# Overall BMI distribution
ggplot(patients, aes(y = bmi)) +
  geom_boxplot()


# BMI according to sex
ggplot(patients, aes(x = sex, y = bmi)) +
  geom_boxplot()


# BMI according to diabetes
ggplot(patients, aes(x = diabetes, y = bmi)) +
  geom_boxplot()


# SBP according to diabetes
ggplot(patients, aes(x = diabetes, y = sbp)) +
  geom_boxplot()


# SBP according to sex
ggplot(patients, aes(x = sex, y = sbp)) +
  geom_boxplot()


# ============================================================
# 11. BOXPLOT + INDIVIDUAL POINTS
# ============================================================

# Boxplot with individual observations
ggplot(patients, aes(x = diabetes, y = sbp)) +
  geom_boxplot() +
  geom_jitter(width = 0.1)


# ============================================================
# 12. VIOLIN PLOT
# ============================================================

# Distribution of SBP according to diabetes
ggplot(patients, aes(x = diabetes, y = sbp)) +
  geom_violin()


# Violin plot + individual points
ggplot(patients, aes(x = diabetes, y = sbp)) +
  geom_violin() +
  geom_jitter(width = 0.1)


# ============================================================
# 13. FACETING
# ============================================================

# Separate Age vs SBP graph for males and females
ggplot(patients, aes(x = age, y = sbp)) +
  geom_point() +
  facet_wrap(~sex)


# Separate Age vs SBP graph for diabetic and non-diabetic patients
ggplot(patients, aes(x = age, y = sbp)) +
  geom_point() +
  facet_wrap(~diabetes)


# ============================================================
# 14. LABEL INDIVIDUAL PATIENTS
# ============================================================

# Show patient ID beside each point
ggplot(patients, aes(x = age, y = sbp)) +
  geom_point(size = 3) +
  geom_text(
    aes(label = id),
    vjust = -1
  )


# BMI vs SBP with patient IDs
ggplot(patients, aes(x = bmi, y = sbp)) +
  geom_point(size = 3) +
  geom_text(
    aes(label = id),
    vjust = -1
  )


# ============================================================
# 15. TITLES AND AXIS LABELS
# ============================================================

ggplot(patients, aes(x = age, y = sbp)) +
  geom_point(size = 3) +
  labs(
    title = "Age and Systolic Blood Pressure",
    x = "Age (years)",
    y = "Systolic Blood Pressure (mmHg)"
  )


# ============================================================
# 16. COLOR
# ============================================================

# Color according to diabetes
ggplot(patients, aes(x = age, y = sbp, color = diabetes)) +
  geom_point(size = 4)


# Manually choose colors
ggplot(patients, aes(x = age, y = sbp, color = diabetes)) +
  geom_point(size = 4) +
  scale_color_manual(
    values = c(
      "No" = "blue",
      "Yes" = "red"
    )
  )


# ============================================================
# 17. SHAPE
# ============================================================

# Different shape for male and female
ggplot(patients, aes(x = age, y = sbp, shape = sex)) +
  geom_point(size = 4)


# ============================================================
# 18. SIZE
# ============================================================

# Make point size represent BMI
ggplot(patients, aes(x = age, y = sbp, size = bmi)) +
  geom_point()


# ============================================================
# 19. TRANSPARENCY (ALPHA)
# ============================================================

ggplot(patients, aes(x = age, y = sbp)) +
  geom_point(
    size = 4,
    alpha = 0.5
  )


# ============================================================
# 20. REFERENCE LINES
# ============================================================

# Horizontal line at SBP = 140
ggplot(patients, aes(x = age, y = sbp)) +
  geom_point(size = 3) +
  geom_hline(yintercept = 140)


# Vertical line at age = 60
ggplot(patients, aes(x = age, y = sbp)) +
  geom_point(size = 3) +
  geom_vline(xintercept = 60)


# Both horizontal and vertical reference lines
ggplot(patients, aes(x = age, y = sbp)) +
  geom_point(size = 3) +
  geom_hline(yintercept = 140) +
  geom_vline(xintercept = 60)


# ============================================================
# 21. HISTOGRAM + DENSITY
# ============================================================

ggplot(
  patients,
  aes(x = age)
) +
  geom_histogram(
    aes(y = after_stat(density))
  ) +
  geom_density()


# ============================================================
# 22. A COMPLETE MEDICAL-STYLE GRAPH
# ============================================================

ggplot(
  patients,
  aes(
    x = age,
    y = sbp,
    color = diabetes,
    shape = sex
  )
) +
  geom_point(size = 4) +
  geom_smooth(
    method = "lm",
    se = FALSE
  ) +
  labs(
    title = "Relationship Between Age and Systolic Blood Pressure",
    x = "Age (years)",
    y = "Systolic Blood Pressure (mmHg)",
    color = "Diabetes",
    shape = "Sex"
  )


# ============================================================
# 23. BASIC GGPLOT2 STRUCTURE TO REMEMBER
# ============================================================

# ggplot(data, aes(x = variable, y = variable)) +
#     geom_xxx()


# ============================================================
# 24. IMPORTANT GEOMS TO REMEMBER
# ============================================================

# geom_point()       -> Scatter plot
# geom_line()        -> Line graph
# geom_bar()         -> Bar chart / counts
# geom_col()         -> Bar chart using existing values
# geom_histogram()   -> Histogram
# geom_boxplot()     -> Boxplot
# geom_violin()      -> Violin plot
# geom_density()     -> Density plot
# geom_smooth()      -> Regression/smoothing line
# geom_text()        -> Add text labels
# geom_jitter()      -> Spread overlapping points
# geom_hline()       -> Horizontal reference line
# geom_vline()       -> Vertical reference line


# ============================================================
# 25. IMPORTANT AES() OPTIONS
# ============================================================

# aes(x = age)              -> x-axis
# aes(y = sbp)              -> y-axis
# aes(color = diabetes)     -> color represents diabetes
# aes(fill = diabetes)      -> fill represents diabetes
# aes(shape = sex)          -> shape represents sex
# aes(size = bmi)           -> size represents BMI
# aes(label = id)           -> label represents patient ID


# ============================================================
# END
# ============================================================

