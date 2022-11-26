Airbnb_Data=read.csv("Airbnb_Open_Data.csv")
library(tidyverse)

Airbnb_Data$NAME<-NULL
Airbnb_Data$house_rules<-NULL
Airbnb_Data$license<-NULL
Airbnb_Data$host.name<-NULL
Airbnb_Data$country<-NULL
Airbnb_Data$last.review<-NULL

#check duplicates
sum(duplicated(Airbnb_Data))

#remove duplicates
Airbnb_Data<-Airbnb_Data[!duplicated(Airbnb_Data),]

#check blank cells
colSums(Airbnb_Data=="")

#countrycode = US
Airbnb_Data$country.code[Airbnb_Data$country.code==""]<-"US"

Airbnb_Data$host_identity_verified[Airbnb_Data$host_identity_verified==""]<-"unknown"

Airbnb_Data$price[Airbnb_Data$price==""]<-NA
Airbnb_Data$service.fee[Airbnb_Data$service.fee==""]<-NA
Airbnb_Data$cancellation_policy[Airbnb_Data$cancellation_policy==""]<-NA

Airbnb_Data<-drop_na(Airbnb_Data)

count<-0
for (val in Airbnb_Data$neighbourhood) {
  if(val=="Harlem" || val=="Chinatown" || val=="Upper West Side"){
    count<-which(Airbnb_Data$neighbourhood==val) #gives numerical output
    Airbnb_Data$neighbourhood.group[count]<-"Manhattan"
  } else if(val=="Williamsburg" || val=="Bedford-Stuyvesant") {
    count<-which(Airbnb_Data$neighbourhood==val) #gives numerical output
    Airbnb_Data$neighbourhood.group[count]<-"Brooklyn"
  } else if (val=="Queens Village") {
    count<-which(Airbnb_Data$neighbourhood==val) #gives numerical output
    Airbnb_Data$neighbourhood.group[count]<-"Queens"
  } 
}

Airbnb_Data$neighbourhood[Airbnb_Data$neighbourhood==""]<-"unknown"

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

write.csv(Airbnb_Data, file="Clean_Airbnb_Data.csv", row.names=TRUE)
