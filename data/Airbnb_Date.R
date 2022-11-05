setwd("~/LocalDocuments/Monash/FIT3179/Assignment 2")
Airbnb_Data=read.csv("Airbnb_Open_Data.csv")
library(tidyverse)

Airbnb_Data$house_rules=NULL
Airbnb_Data$license=NULL

Airbnb_Data=Airbnb_Data[!duplicated(Airbnb_Data),]
Airbnb_Data[Airbnb_Data==""]<-NA
Airbnb_Data<-drop_na(Airbnb_Data)

summary(Airbnb_Data)

Airbnb_Data$price<-
  gsub("[^[:alnum:].]", "", Airbnb_Data$price)
#turn total raise to int
Airbnb_Data$price<-as.integer(Airbnb_Data$price)

Airbnb_Data$service.fee<-
  gsub("[^[:alnum:].]", "", Airbnb_Data$service.fee)
#turn total raise to int
Airbnb_Data$service.fee<-as.integer(Airbnb_Data$service.fee)

summary(as.factor(Airbnb_Data$neighbourhood.group))

Airbnb_Data$neighbourhood.group[Airbnb_Data$neighbourhood.group=="brookln"]<-"Brooklyn"

Airbnb_Data$last.review=NULL

write.csv(Airbnb_Data, file="Airbnb Data.csv", row.names=TRUE)
