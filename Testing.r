Diamond.file = read.csv("diamonds_dataset.csv",header=T,na.string="?")
fix(Diamond.file)
names(Diamond.file)
dim(Diamond.file)
Diamond.file=na.omit(Diamond.file)
dim(Diamond.file) #Nothing was removed so no missing observations 
attach(Diamond.file)
plot(price, carat)
Diamond.file$url <- NULL  #removed url column
Diamond.file$date_fetched <- NULL
Diamond.file$id <- NULL

summary(Diamond.file)

#Simple linear regression model
lm.fit=lm(price~carat)
lm.fit
summary(lm.fit)
names(lm.fit)

install.packages("GGally")
library(ggplot2)
install.packages("ggplot2")
library(ggplot2)
ggpairs(diamonds)
library(tidyr)
library(GGally)
ggpairs(diamonds)
ggpairs(Diamond.file)

Diamond.file %>%
  ggplot(aes(y = carat, x = cut)) +
  geom_boxplot()

Diamond.file[,1]=as.factor(factor(Diamond.file[,1]))
summary(Diamond.file)
Diamond.file[,4,5,6,7,8]=as.factor(factor(Diamond.file[,4,5,6,7,8]))
summary(Diamond.file)

fadfasdfagdfasdf
