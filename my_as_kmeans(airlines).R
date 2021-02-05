library(factoextra)
airline<-read.csv(file.choose()) #DATASET IMPORTING
fviz_nbclust(airline[,-1], kmeans, method = "wss") +
  labs(subtitle = "Elbow method")   #FINDING NO.OF.CLUSTER USING ELBOW METHOD.
kmean <- kmeans(airline[,-1],4)     #WITHOUT ID COLUMN
kmean$centers
kmean$cluster
cluster<-data.frame("airlines"=airline[,1],"cluster"=kmean$cluster) #CLUSTER CREEATION
install.packages("animation")
library(animation)
kmean <- kmeans.ani(airline[,-c(1)], 4)
c<-data.frame("airlines"= cluster)
View(c)
