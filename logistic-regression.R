#This code will explore the spambase dataset then create a logistic regression model

#Set working directory to location of file
#Import spambase file as the dataset and view
spam <- read.csv("spambase.csv", as.is = FALSE)
head(spam,10)

#Dependent variable is spam
#Independent variables are the rest

#View variable structures
summary(spam)
str(spam)

#Check for missing variables
nrow(spam[!complete.cases(spam),])
apply(spam, 2, function (spam) sum(is.na(spam)))

#Remove variables
spam$word_freq_000<-NULL
spam$word_freq_1999<-NULL
spam$word_freq_415<-NULL
spam$word_freq_650<-NULL
spam$word_freq_85<-NULL
spam$word_freq_857<-NULL

#Divide the data into training and test data
set.seed(1234)
ind <- sample(2, nrow(spam), replace = TRUE, prob = c(0.7, 0.3))
train.data <- spam [ind == 1, ]
test.data <- spam [ind == 2, ]

#Use training set to build model
model<-glm(spam~., family=binomial, data=train.data)
print(model)
summary(model)
exp(coef(model))

#Evaluate model on training data
model$fitted.values[1:10]
table(round(predict(model, train.data, type="response")), train.data$spam)

#Evaluate model on test data
predict (model, test.data)[1:10]
mypredictions<-round(predict (model, test.data, type="response"))
table (mypredictions, test.data$spam)

#Residual plot
plot(predict(model),residuals(model), col=c("blue"))
lines(lowess(predict(model),residuals(model)), col=c("black"), lwd=2)
abline(h=0, col="grey")

#Minimum adequate model
summary(step(model))

#End of script
