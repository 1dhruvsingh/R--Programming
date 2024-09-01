#DHRUV SINGH BTECH CE SEC -A (70022300518)

#VECTORS
#1.
vector1=c(20,6,13,10)
vector2=c(2,3,4,5)
result1=vector1+vector2
result2=vector1-vector2
result1
result2

#2.
rk=c(20,6,100,13,24,65)
a=max(rk)
b=min(rk)
d=var(rk)
e=sd(rk)
a
b
d
e

#3.
re=c(20,13,6,2,90,10)
b=sort(re)
b

#4.
vector1= c(5, 9, 2, 7, 3)
value_exists= 7 %in% vector1
if (value_exists) {
  print("Value 7 exists in the vector")
} else {
  print("Value 7 does not exist in the vector")}

#5.
rt=c(20,6,13,30,45,23)
d=rev(sort(rt))
d

#LIST
#1
b=list("reet",20,42,TRUE,c(4,5,6))

#accessing first two elements
C=b[1:2]
C

#replacing second element
b[2]=89
b

#removing an element
b[!b=='20']
print(b)

#2.
rk=list(20,4,5,7,43)
a=length(rk)
print(a)


#DATAFRAMES
#1.
rdata=data.frame(emp_id =c(1:5),emp_name =c("A","B","C","D","E"),salary=
                      c(623.3,515.2,611.0,729.0,843.25))
rdata

#2.
d=summary(rdata)
d

#3.
data.frame(rdata$emp_name)

#4.
rdata[1:2,]

#5.
data.frame(rdata$emp_id$salary)

#6.
rdata$age=c(20,18,7,9,16)
rdata
#Add Row
emp.newdata= data.frame(emp_id= c (6:8), emp_name =c("Reet","Pra,"Tusar"),salary = c(578.0,722.5,632.8), 
age=c(20,23,45)stringsAsFactors = FALSE)
emp.finaldata=rbind(rdata,emp.newdata)
emp.finaldata


#7.



#8.
rdata[with(rdata,order(salary)),]

#9.
rdata[-2]
