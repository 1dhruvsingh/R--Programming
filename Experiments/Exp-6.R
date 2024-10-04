#Paravi Bhatia
#SAP ID:  70022300169
#ROLL_NO.:D061
#Load the &quot;mtcars&quot; dataset. Calculate the Pearson correlation coefficients between various pairs of variables, such as &quot;mpg,&quot; &quot;hp,&quot; &quot;disp,&quot; etc. Interpret
#the correlation coefficients. Are there strong positive or negative correlations
#between any variables?
# Load the built-in 'mtcars' dataset
data("mtcars")

# Display the first few rows of the dataset
head(mtcars)

# Calculate the Pearson correlation matrix for selected variables
# Select specific variables: 'mpg', 'hp', 'disp', 'wt', 'qsec'
cor_matrix <- cor(mtcars[, c("mpg", "hp", "disp", "wt", "qsec")], method = "pearson")

# Print the correlation matrix
print("Correlation Matrix for Selected Variables:")
print(cor_matrix)

# Visualize the correlation matrix using a heatmap
install.packages("corrplot")  # Uncomment if the package is not installed
library(corrplot)

# Create a correlation plot with color-coded cells
corrplot(cor_matrix, method = "color", addCoef.col = "black", main = "Correlation Plot for Selected mtcars Variables")

#Load the mtcars dataset using data(mtcars). Explore the dataset with
#summary(), head(), and str(). Perform simple linear regression to predict
#MPG (miles per gallon) based on a predictor variable, such as horsepower.
#Interpret the regression coefficients and assess model fit using lm() and
#summary().Plot the regression line along with a scatterplot

# Explore the dataset
print("Summary of the mtcars dataset:")
summary(mtcars)

print("First few rows of the dataset:")
head(mtcars)

print("Structure of the dataset:")
str(mtcars)

# Step 2: Perform simple linear regression with 'mpg' as the response and 'hp' as the predictor
model <- lm(mpg ~ hp, data = mtcars)

# Step 3: Print the model coefficients and summary statistics
print("Linear Regression Model Summary:")
summary(model)

# Step 4: Interpret the regression coefficients
coefficients <- coef(model)
print(paste("Intercept (beta_0):", coefficients[1]))
print(paste("Slope (beta_1) for 'hp':", coefficients[2]))

# Step 5: Create a scatterplot of 'mpg' vs. 'hp'
plot(mtcars$hp, mtcars$mpg, 
     main = "MPG vs. Horsepower (Simple Linear Regression)", 
     xlab = "Horsepower (hp)", 
     ylab = "Miles Per Gallon (mpg)", 
     pch = 19, col = "blue")

# Add the regression line
abline(model, col = "red", lwd = 2)

# Step 6: Predict mpg for a new value of horsepower
new_hp <- data.frame(hp = 150)
predicted_mpg <- predict(model, new_hp)
print(paste("Predicted MPG for a car with 150 horsepower:", round(predicted_mpg, 2)))
