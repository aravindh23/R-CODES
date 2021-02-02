Faltoons<-read.csv(file.choose())
View(Faltoons)
attach(Faltoons)
df<- table(Weekdays,Weekend)
df
prop.test(x=c(66,47),n=c(233,167),conf.level = 0.95,correct = FALSE,alternative = "two.sided")
