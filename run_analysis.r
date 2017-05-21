## Getting and Cleaning Data
## Peer-reviewed assignment

require(data.table)
require(stringr)

## Get files
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile="./wearables.zip")
unzip("wearables.zip")
setwd("./UCI HAR Dataset")
## Read in files
varnames<-readLines("features.txt")
testsubj<-as.numeric(readLines("./test/subject_test.txt"))
testact<-as.factor(readLines("./test/y_test.txt"))
trainsubj<-as.numeric(readLines("./train/subject_train.txt"))
trainact<-as.factor(readLines("./train/y_train.txt"))
test<-fread("./test/X_test.txt", 
            select = which(c(1:length(varnames)*grepl("std\\(|mean\\(",
                                                       x=varnames)>0)))
train<-fread("./train/X_train.txt",
             select = which(c(1:length(varnames)*grepl("std\\(|mean\\(",
                                                       x=varnames)>0)))
# Combine, organize, and label data
test<-cbind(Subject=testsubj,Activity=testact,test)
train<-cbind(Subject=trainsubj,Activity=trainact,train)
full<-rbind(test,train)
varnames<-str_split_fixed(varnames," ",2)[,2][grepl("std\\(|mean\\(",
                                                    x=varnames)]
names(full)[3:68]<-varnames
levels(full$Activity)<-c("walking","walkingupstairs",
                "walkingdownstairs","sitting","standing","laying")
# Create tidy aggregate dataset
avgdat<-full[ ,lapply(.SD,mean),keyby="Subject,Activity",.SDcols=3:68]
avgdat