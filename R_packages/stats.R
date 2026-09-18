# stats is part of base R, so you normally don't need to install it separately.
# It contains many fundamental statistical functions, including:
t.test()
wilcox.test()
chisq.test()
fisher.test()
cor.test()
lm()
glm()

t.test(
  bmi ~ sex,
  data = patients
)
