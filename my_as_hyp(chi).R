cust<-read.csv(file.choose())
View(cust)
df<-stack(cust)
attach(df) //stocked value
View(df)
table(df$ind,df$values)
chisq.test(table(df$ind,df$values))

