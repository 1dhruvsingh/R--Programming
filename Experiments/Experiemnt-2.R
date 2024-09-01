#Dhruv Singh 
#(70022300518)
#BTech-CE Sec-"A" Batch-2

#Matrix 
#Ques -1 

num_rows = 3
num_cols = 3
elements = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
m1 = matrix(elements, nrow = num_rows, ncol = num_cols, byrow = FALSE)

row_names = c("Row1", "Row2", "Row3")
col_names = c("Col1", "Col2", "Col3")

dimnames(m1) = list(row_names, col_names)

print(m1)


#Ques -2

M1 = matrix(1:12, nrow = 3, byrow = TRUE)


element = M1[2, 3]

third_row = M1[3, ]

fourth_column = M1[, 4]

print ("element at 3rd column and 2nd row:")
print(element)
print("Entire 3rd row:")
print(third_row)
print("Entire 4th column:")
print(fourth_column)

#Ques-3
m1 = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, byrow = TRUE)

m2 = matrix(c(6, 5, 4, 3, 2, 1), nrow = 2, byrow = TRUE)


add = m1 + m2

subtract = m1 - m2

multiply = m1*m2

divide = m1/m2

print(add)
print(subtract)
print(multiply)
print(divide)


#Ques -4 

A <- matrix(c(1:25) , nrow = 5 , ncol = 5 , byrow = TRUE )
print(A)           
det(A) 
t(A)


#Ques-5.

A <- matrix(c(1:45) , nrow = 9 , ncol = 5 , byrow = TRUE )
print(A)
print(A[5,5])


#Ques-6 

A <- matrix(c(1:25) , nrow = 5 , ncol = 5 , byrow = TRUE )
print(A)
print(A*9)

#Ques -7
A <- matrix(c(1:55) , nrow = 11 , ncol = 5 , byrow = TRUE )
print(A)
mean(A[2,])
var(A[,3])
sd(A[,4])

#Ques- 8
A <- matrix(c(1:56) , nrow = 7 , ncol = 8 , byrow = TRUE )
print(A)
rowSums(A)
colSums(A)
rowMeans(A)
colMeans(A)

#Ques-9
A <- matrix(c(1:99) , nrow = 11 , ncol = 9 , byrow = TRUE )
print(A)
A[-2,-4]

#Ques-10
A <- matrix(c(1:45) , nrow = 9 , ncol = 5 , byrow = TRUE )
print(A)
A<-rbind(A,c(1,2,3))
A
A<-cbind(A,c(1,2,3,4))
A

