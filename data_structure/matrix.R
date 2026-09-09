matrix(1:16, nrow = 4)

#fills data column by column in four row

#creating matrix manually
m <- matrix(
  c(1, 2, 3, 4, 5, 6),
  nrow = 2
)

m_row <- matrix(
  c(1, 2, 3, 4, 5, 6),
  nrow = 2,
  byrow = TRUE #fills by row which is default FALSE
)


#matrix[row, column]
m[2,1]
m[1, ] #ENTIRE row
m[1:2, 2:3] #specific sections
dim(m) # dimension 2,3 means two row and 3 column
nrow(m)
ncol(m)

matrix(c(1, 2, "Male", "Female"), nrow = 2) #in this situation numeric coercion to character.


m%*%m_row

