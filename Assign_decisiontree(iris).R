install.packages("party")
library(party)
#IN-BULID IRIS DATASET
str(iris)
head(iris)
set.seed(1234) 
ind <- sample(2,nrow(iris), replace=TRUE, prob=c(0.7,0.3))
train <- iris[ind==1,]
test <- iris[ind==2,]
a <- Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width
iris_ctree <- ctree(a, data=train)
x_train<- predict(iris_ctree,train,type="response")
table(x_train,train$Species)
mean(x_train != train$Species) * 100
x_test<- predict(iris_ctree, newdata= test,type="response")
table(x_test, test$Species)
mean(x_test!= test$Species) * 100
print(iris_ctree)
plot(iris_ctree)
