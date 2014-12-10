Run Analysis
============

### Introduction

This project forms part of the 'Getting and Cleaning Data' course.
The purpose of the project is to demonstrate how to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.

### The Data Set

The data is from a Human Activity Recognition Using Smartphones Data Set, which is obtained from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The data set consists of data collected from the accelerometers from a Samsung Galaxy S smartphone
during experiments carried out on a group of 30 volunteers performing 6 different activities.

 
### The Run Analysis Script

The script performs the following:

1.  Reads in the test and train sets, including their label files from the local working directory.
2.  Reads in the features and activities files and limits the features to only measurements on 
    mean and standard deviation.
3.  Merges the test and train sets to form one data set.
4.  Using the features data set, the script labels the data set with descriptive variable names.
5.  Using the activities data set, the script assigns descriptive activity names to the data set.
6.  The tidy data set is grouped on Subject and Activity and the mean of each variable is calculated.
7.  The resultant tidy data set is read out to a txt file on your local working directory.

The assumption is that the data set has been downloaded and unzipped to your local working directory.

This repo includes a code book that describes the variables.
