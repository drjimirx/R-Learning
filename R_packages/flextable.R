# flextable is useful for producing tables for documents such as:
# Word
# PowerPoint
# HTML
# Other Office-oriented workflows

install.packages("flextable")
library(flextable)

patients %>%
  head() %>%
  flextable()


