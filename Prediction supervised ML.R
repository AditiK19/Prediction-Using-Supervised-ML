
#The Sparks Foundation #GRIPMAY2021
#Task 1: Prediction using supervised ML
#Name: Aditi Kothawade

# importing data for the task from the given link.
Mydata=read.csv("http://bit.ly/w-data")
head(Mydata)

# plotting the distribution of scores.
plot(Mydata$Hours,Mydata$Scores,main="Scatter Plot",xlab = "Hours Studied",ylab = "Percentage Scored")
cor(Mydata$Hours,Mydata$Scores)

# to build the regression model
model = lm(Scores~Hours,data=Mydata)
model

# detailed output using summary function
summary(model)

# plotting the regression line
abline(model, col="red")

# to compare actual vs predicted values
Mydata$predicted = fitted(model)
Mydata$Residual = residuals(model)

Mydata
head(Mydata)

# to predict output for a given value.
p = data.frame(Hours=9.25)
predict(model,p)

#Therefore if a student 9.25 hours, according to the
#prediction he will score 92.90985 percentage. 