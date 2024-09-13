#Dhruv Singh
#70022300518
#BTech CE section A

#Load the built-in mtcars dataset. Create a horizontal bar plot of the
#average miles per gallon "mpg" for each number of cylinders "cyl".
#Customize the appearance: Use green bars. Add labels to the bars
#displaying the average mpg.
d<- data.frame(mtcars)
print(d)
avg <- aggregate(mpg ~ cyl, data = mtcars, FUN = mean)
barplot(
  avg$mpg, 
  names.arg = avg$cyl, 
  horiz = TRUE, 
  col = "green", 
  xlab = "Average Miles Per Gallon (mpg)",
  main = "Average MPG by Number of Cylinders",
  las = 1
)
text(avg$mpg, 
     seq_along(avg$mpg), 
     labels = round(avg$mpg, 2), 
     pos = 4)

#Load the built-in ToothGrowth dataset. Create a grouped bar plot
#showing the average "len" by" supp" and "dose". Customize the
#appearance: Different colors for each supp category. Legend to
#identify "dose "levels.

data(ToothGrowth)

avg_len <- aggregate(len ~ supp + dose, data = ToothGrowth, FUN = mean)
avg_len$dose <- as.factor(avg_len$dose)
len_matrix <- tapply(avg_len$len, list(avg_len$dose, avg_len$supp), mean)
barplot(
  len_matrix,
  beside = TRUE,
  col = c("orange", "blue"),
  legend.text = TRUE,
  args.legend = list(title = "Supplement", x = "topright"),
  ylim = c(0, max(len_matrix) + 5),
  xlab = "Dose (mg)",
  ylab = "Average Length",
  main = "Average Tooth Length by Supplement and Dose"
)

#Create a stacked bar plot using a small sample size dataframe. The
#dataframe contains information about the number of books read by
#different individuals (name) in two genres (fiction and nonfiction).
#Display the data using a stacked bar plot with customize appearance.
# Create a sample dataframe
df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "David"),
  fiction = c(5, 3, 2, 4),
  nonfiction = c(2, 4, 3, 1)
)
bar_matrix <- cbind(df$fiction, df$nonfiction)
barplot(bar_matrix, main = "Number of Books by Genre",
        xlab = "Name", ylab = "Number of Books",
        col = c("skyblue", "firebrick"), legend.text = c("Fiction", "Nonfiction"),
        args.legend = list(x = "topright", bty = "n"))
axis(1, at = 1:nrow(df), labels = df$name, las = 2)

#Generate a data set of 100 random numbers between 0 and 50. Create a histogram with 10 bins and label the plot appropriately.

set.seed(123) 
data<-runif(100, min = 0, max = 50)
hist(data, 
     main = "Histogram of Random Numbers", 
     xlab = "Value", 
     ylab = "Frequency", 
     breaks = 10, 
     col = "blue", 
     border = "black")

# Set the seed for reproducibility
set.seed(123)

# Generate a dataset of exam scores for 50 students
exam_scores <- runif(50, 0, 100)

# Create a histogram with appropriate bins and labels
hist(exam_scores, 
     breaks = seq(0, 100, by = 10), 
     main = "Exam Scores Distribution", 
     xlab = "Score (out of 100)", 
     ylab = "Frequency", 
     col = ifelse(exam_scores >= 60, "green", "gray"), 
     border = "black", 
     xlim = c(0, 100), 
     ylim = c(0, 15))

# Add a legend to highlight the passing range
legend("topright", 
       legend = c("Failing (< 60)", "Passing (>= 60)"), 
       fill = c("gray", "green"), 
       bty = "n")
