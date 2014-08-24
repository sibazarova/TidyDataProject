## Getting and Cleaning Data Course Project

## The following script follows the general steps described in the assignment
## to complete the course project.

## Removes objects in the working environment.

rm(list=ls())

## Checks if the directory "DataProject" exists. 
## Creates the directory if doesn't exist.

if(!file.exists("DataProject")){dir.create("DataProject")}

## 0. Downloads the project zip file and unzips the file.

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./DataProject/projectdata.zip")
unzip("./DataProject/projectdata.zip", exdir="DataProject")

## STEP 1. Merges the training and the test sets to create one data set.

## 1a. Reads "X_train.txt" and "X_test.txt" files with measurement data.

trainSet <- read.table("./DataProject/UCI HAR Dataset/train/X_train.txt")
testSet <- read.table("./DataProject/UCI HAR Dataset/test/X_test.txt")

## 1b. Reads "features.txt" file and renames test and train data variable names
## using information from "features.txt" file. Please note that the "features.txt"
## file contains two columns: column one lists the order of the variable name
## and column two lists the names of each feature vector. So, the variable names
## come from the second column of the "features.txt" file.

features <- read.table("./DataProject/UCI HAR Dataset/features.txt")
colnames(trainSet) <- as.character(t(features$V2))
colnames(testSet) <- as.character(t(features$V2)) 

## 1c. Reads "subject_train.txt" and "subject_test.txt" files.
## Assigns "subjectid" as their column names.

subjectTrain <- read.table("./DataProject/UCI HAR Dataset/train/subject_train.txt")
subjectTest <- read.table("./DataProject/UCI HAR Dataset/test/subject_test.txt")
colnames(subjectTrain) <- "subjectid"
colnames(subjectTest) <- "subjectid"

## 1d. Reads "y_train.txt" and "y_train.txt" files with activity label data.
## Assigns "activity" as their column names.

trainLabels <- read.table("./DataProject/UCI HAR Dataset/train/y_train.txt")
testLabels <- read.table("./DataProject/UCI HAR Dataset/test/y_test.txt")
colnames(trainLabels) <- "activity"
colnames(testLabels) <- "activity"

## 1e. Merges train data with its corresponding subject ID and activity labels.
## Also merges test data with its corresponding subject ID and activity labels.

allTrain <- cbind(subjectTrain, trainLabels, trainSet)
allTest <- cbind(subjectTest, testLabels, testSet)

## 1f. Stacks all of the test data below all of the train data and 
## creates one large dataset.

alldata <- rbind(allTrain, allTest)

## STEP 2.	Extracts only the measurements on the mean and standard deviation for 
## each measurement. 

## 2a. Extracts "subjectid", "activity" variables along with the matches for the
## "mean" and "std" in the column names.

trimData <- alldata[,grep("subjectid|activity|mean|std", colnames(alldata))]

## 2b. Drops columns with names matching "meanFreq" as this was not the requested 
## data for extraction.

trimData <- trimData[, -grep("meanFreq", colnames(trimData))]

## STEP 3.	Uses descriptive activity names to name the activities in the data set.

## 3a. Reads "activity_labels.txt" file and print to see which numbers correspond 
## to which activity labels.

activityLabels <- read.table("./DataProject/UCI HAR Dataset/activity_labels.txt")
activityLabels

## 3b. Create separate character variables for each activity using information from
## "Readme.txt" and "activity_lables.txt" files.

walk <- "walking"
walkup <- "walking upstairs"
walkdown <- "walking downstairs"
sit <- "sitting"
stand <- "standing"
lay <- "laying"

## 3c. Replace activity numbers with activity labels.

trimData$activity <- gsub(1, walk, trimData$activity)
trimData$activity <- gsub(2, walkup, trimData$activity)
trimData$activity <- gsub(3, walkdown, trimData$activity)
trimData$activity <- gsub(4, sit, trimData$activity)
trimData$activity <- gsub(5, stand, trimData$activity)
trimData$activity <- gsub(6, lay, trimData$activity)

## STEP 4.	Appropriately labels the data set with descriptive variable names. 
## If we aggregate the variables in step 5, the current labels will no longer
## describe the variables correctly. To avoid misinterpretation, the following
## commands will add the word "averageOf_" before each original variable name.

colnames(trimData) <- paste("averageOf", colnames(trimData), sep = "_")

## STEP 5.	Creates a second, independent tidy data set with the average of 
## each variable for each activity and each subject. 

## 5a. Aggregrates the trimmed data set.

tidyData <- aggregate(trimData, by=list(trimData$averageOf_activity,trimData$averageOf_subjectid), FUN=mean)

## 5b. Drops "averageOf_subjectid" and "averageOf_activity" variables 
## in the tidy data set. The information for these two variables are meaningless.
## Therefore, the variables "averageOf_subjectid" and "averageOf_activity"
## are dropped from the tidy data set.

tidyData <- tidyData[, -grep("subjectid|activity", colnames(tidyData))]

## 5c. Renames grouping variables accordingly: "Group.1" to "activity" and 
## "Group.2" to "subjectid".

names(tidyData)[1] <- "activity"
names(tidyData)[2] <- "subjectid"

## 5d. Write the tidy data set into a file with .csv extention.

write.csv(tidyData, file="./DataProject/TidyDataSet.csv", row.names=FALSE)
