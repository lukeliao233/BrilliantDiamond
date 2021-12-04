library(ISLR)
Diamond.file = read.csv("diamonds_dataset.csv",header=T,na.string="?")
fix(Diamond.file)
names(Diamond.file)
dim(Diamond.file)
Diamond.file=na.omit(Diamond.file)
dim(Diamond.file) #Nothing was removed so no missing observations 
attach(Diamond.file)
plot(price, carat)
Diamond.file$url <- NULL  #removed url column
summary(Diamond.file)

#Simple linear regression model
lm.fit=lm(price~carat)
lm.fit
summary(lm.fit)
names(lm.fit)
