### Create a dataset for development level
set.seed(2017)
develop<-data.frame(gender=sample(0:1, 100, replace=T), age=sample(10:18, 100, replace=T))
develop$height<-100+develop$gender*10+(develop$age-9)*7+develop$age*develop$gender*2+rnorm(mean = 0, sd = 7, 100)
develop
summary(develop)
