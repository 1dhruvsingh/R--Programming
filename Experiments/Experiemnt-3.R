#DHRUV SINGH (70022300518) Sec-"A" Batch -2 (D029)

#Ques-1 
#Answer 
setwd('/Users/dhruv/Downloads/R-prog')
data<-read.csv("student_marks.csv")
print(data)

#Ques-2 
#Answer 
class(data)
str(data)
dim(data)

#Ques-3
#Answer 
head(data,6)

#Ques-4
#Answer 
cols1<-data[,c(2,3,4)]
missing_values<-colSums(is.na(data))
print(missing_values)

#Ques-5 
#Answer 
data$col2[is.na(data$col2)] <- mean(data$col2, na.rm = TRUE)
data$col3[is.na(data$col3)] <- mean(data$col3, na.rm = TRUE)
data$col4[is.na(data$col4)] <- mean(data$col4, na.rm = TRUE)

#Ques-6 
#Answer 
max(data$Mathematics)
max(data$English)

#Ques-7
#Answer 
data[data$Chemistry == max(data$Chemistry), c("Chemistry", "StudentDetails")]
data[data$Economics == max(data$Economics), c("Economics", "StudentDetails")]

#Ques-8
#Answer
female_chemistry_students <- data[data$Gender == "Female" & data$Subject == "Chemistry", ]

#Ques-9
#Answer 
data[data$English > 70, ]

#Ques-10
#Answer
data[data$Maths > 70 & data$Biology < 80, ]

#Ques-11
#Answer
data[data$Chemistry > 70 | data$English < 80, ]

#Ques-12
#Answer
mean(data$Mathematics)
range(data$Mathematics)
sd(data$Mathematics)

mean(data$Economics)
range(data$Economics)
sd(data$Economics)