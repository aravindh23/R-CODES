install.packages("party")
library(party)
#IN-BULID IRIS DATASET
summary(iris)
plot(iris)
str(iris)
head(iris)
plot(iris, col=iris$Species) 
par(mfrow=c(1,2))
plot(iris$Petal.Length) 
boxplot(iris$Petal.Length~ iris$Species) > par(mfrow=c(2,2)) 
par(mfrow=c(1,1)) 
hist(iris$Petal.Length[1:50])
set.seed(1234) 
ind <- sample(2,nrow(iris), replace=TRUE, prob=c(0.7,0.3))
train <- iris[ind==1,]
test <- iris[ind==2,]
a <- Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width
iris_ctree <- ctree(a, data=train)
x_train<- predict(iris_ctree,train,type="response")
table(x_train,train$Species)  #ACCURACY
mean(x_train != train$Species) * 100
x_test<- predict(iris_ctree, newdata= test,type="response")
table(x_test, test$Species)
mean(x_test!= test$Species) * 100
print(iris_ctree)
plot(iris_ctree)
##################################
# R PART
install.packages("rpart")
library(rpart)
data(iris) #LOAD DATA
fit <- rpart(Species~., data=iris) #MODEL FITTING
summary(fit)
predictions <- predict(fit, iris[,1:4], type="class") #PREDICTION
predictions 
print(predictions)
plot(predictions)
table(predictions, iris$Species) #ACCURACY
#########################################
#C 5.0
install.packages("C50")
library(C50)
fit1 <- C5.0(Species~., data=iris, trials=10) #C5.0 MODEL FITTING
print(fit)
predict2<-predict(fit, iris) #PREDICTION
predict2
table(predict2, iris$Species) #ACCURACY
print(predict2)
plot(predict2)
