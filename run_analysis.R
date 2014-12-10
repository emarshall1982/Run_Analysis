## This R script, called run_analysis.R, does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Assumptions:
## 1. The required dataset has been downloaded from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
##    and has been unzip to your local working directory.
## 2. The R packages data.table & dplyr have been installed on your local R enviroment.



## Load Required R Packages
library(data.table)
library(dplyr)

## Read data
## Read Test Files
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header=FALSE)
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header=FALSE)
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header=FALSE)

## Read Train Files
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header=FALSE)
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header=FALSE)
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header=FALSE)

## Read Features File & extract measurements on mean & std
features <- read.table("./data/UCI HAR Dataset/features.txt", header=FALSE)
extract_features <- as.character(features[grepl("mean|std", features$V2), 2])

## Read Activity Labels file
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header=FALSE)

## Combind files for each set 
test_data <- cbind(x_test, y_test, subject_test)
train_data <- cbind(x_train, y_train, subject_train)

## Combine train & test data
all_data <- rbind(train_data, test_data)

## Assign descriptive variable names 
colnames(all_data) <- c(as.character(features$V2), c("Activity", "Subject"))

## Extract the required data set, i.e. limit to required vaiables 
res_data <- all_data[ ,c("Subject", "Activity", extract_features)]

## Merge with activity list to incorporate Activity labels
res_data <- merge(res_data, activities, by.x="Activity",by.y="V1",all=TRUE)

## Convert to data frame tbl to use dplyr functions
tidy_df <- tbl_df(res_data)

## Update Activity variable with Activity Labels
tidy_df <- mutate(tidy_df, Activity = V2)

## Remove unwanted column
tidy_df <- select(tidy_df, -V2)

## Group data frame by Subject & Activity
group_df <- group_by(tidy_df, Subject, Activity)

## Calculate mean for each variable
result <- summarise_each(group_df, funs(mean))

## Output result to file
write.table(result, file = "./tidy_data.txt", row.names=FALSE)

## Clean up
rm(x_test)
rm(y_test)
rm(x_train)
rm(y_train)
rm(features)
rm(extract_features)
rm(activities)
rm(test_data)
rm(train_data)
rm(all_data)
rm(res_data)
rm(tidy_df)
rm(group_df)
rm(result)




