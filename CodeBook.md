---
title: "CodeBook"
author: "DRWatkins"
date: "May 21, 2017"
---

#Script name: 
run_analysis.r

#Dependencies:
data.table
stringr

#Inputs: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Output:
avgdat (a data table)

#Variable/description:
varnames/a vector of variable names
testsubj, trainsubj/vectors of subject IDS
testact, trainact/vectors of activity codes
test/data table holding test data
train/data table holding training data
full/aggregate data from test and train

#Given variables used for this assignment:
#The variables are already sufficiently descriptive, but an explanation
t=time
f=frequency
acc=acceleration
mag=magnitude
gyro=gyroscope
x=the x axis
y=the y axis
z=the z axis

"tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
"tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
"tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
"tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
"tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
"tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
"tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"       
"tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
"tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"         
"tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
"tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
"tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
"tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"      
"tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
"tBodyAccMag-mean()"          "tBodyAccMag-std()"          
"tGravityAccMag-mean()"       "tGravityAccMag-std()"       
"tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
"tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
"tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"     
"fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
"fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"           
"fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
"fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
"fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
"fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"       
"fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
"fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"          
"fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
"fBodyAccMag-mean()"          "fBodyAccMag-std()"          
"fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
"fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"     
"fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()"