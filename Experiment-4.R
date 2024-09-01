#Dhruv Singh (70022300518) D-029
#BTech CE sec-"A" 

#1. Read Monthly sales data file. Get total profit of all months, and generate
#scatter plot must include following Style properties: –
#o Dots color should be red.
#o Show legend at the lower right location.
#o X label name = Month Number
#o Y label name = Sold units number
setwd('C:/Users/hp/Documents/SEM3/P&S')
print(getwd())
gr<-read.csv("C:/Users/hp/Documents/SEM3/P&S/company_sales_data - company_sales_data.csv")
print(gr)
x<-gr$month_number
y<-gr$total_profit
plot(x,y)
box()
plot(x, y,main='my graph', xlab="Month number", ylab="Sold unit number",col="red",cex=0.9,pch=1,type = 'b')

#2.Load the built-in iris dataset. Create a scatter plot of "Sepal.Length"
#against "Sepal.Width". Customize the plot by using parameters xlab,ylab, col, pch, title,type etc.[Hint: data(iris)]
df=data.frame(iris)
print(df)
x<-df$Sepal.Length
y<-df$Sepal.Width
plot(x,y)
box()
plot(x, y,main='iris dataset', xlab="Sepal length", ylab="Sepal Width",col="green",cex=0.9,pch=20)

#3.Load the built-in mtcars dataset. Create a scatter plot of "mpg "(miles per gallon) against" hp" (horsepower). Customize the appearance by using parameters xlab, ylab, col, pch, title,type etc.
df2<-data.frame(mtcars)
print(df2)
x<-df2$mpg
y<-df2$hp
plot(x,y)
box()
plot(x, y,main='mt cars', xlab="mgp", ylab="hp",col="coral",cex=0.9,pch=24,type = 'b')