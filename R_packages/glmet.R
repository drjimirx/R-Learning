# glmnet is used for regularized regression, including:
# Lasso
# Ridge
# Elastic net


library(glmnet)
#A simplified Lasso workflow might use:
  fit <- glmnet(
    x,
    y,
    alpha = 1
  )
#where:
  #alpha = 1 → Lasso
#alpha = 0 → Ridge

  
