---
title: "README"
author: "DRWatkins"
date: "May 21, 2017"
---

The purpose of this script is to gather, organize, and summarize
data from the UCI HAR Dataset. It makes use of the data.table and
stringr packages. The final output is a summary of the original 
variables, sorted by aggregated by subject and activity.

This script downloads the data from the source, unzips the zip file,
then pulls information from 6 files:
subject_test.txt
subject_train.txt
y_test.txt
y_train.txt
X_test.txt
X_train.txt

After using grepl to filter out non-mean/std data, I combine 
the data into an aggregate dataset (full). I use data table 
functionality to easily aggregate into a table of averages (avgdat).
This is the final output of the script.

