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

Functions used (see documentation for explanations)
require()
download.file()
unzip()
setwd()
readLines()
as.numeric()
as.factor()
fread()
which()
length()
grepl()
cbind()
rbind()
str_split_fixed()
names()
levels()
c()
lapply()