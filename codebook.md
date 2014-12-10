Codebook for tidy_data.txt
============

The original data set used to create tidy_data.txt was obtained from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The new data set tidy_data.txt is created by running the Run_Analysis.R script.


### Data Transformations

Run_Analysis.R script performs the following steps to generate tidy_data.txt:

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation. 
3.  Uses the activity labels data set to assign descriptive activity names in the data set
4.  Labels the data set with descriptive variable names obtained from the features data set. 
5.  Creates a tidy data set with the average of each variable for each activity and each subject.

### Variables

Subject
	Integer values used to identify test volunteer.
	Levels: 1 to 30.

Activity
	Character values denoting the type of activity.
	Levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.
         