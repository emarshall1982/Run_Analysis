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

1.  Subject  
	Integer values used to identify test volunteer.

	Levels: 1 to 30.


2.  Activity  
	Character values denoting the type of activity.

	Levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.

3.  Measurements

 3.  tBodyAcc.mean...X   
 4.  tBodyAcc.mean...Y              
 5.  tBodyAcc.mean...Z              
 6.  tBodyAcc.std...X               
 7.  tBodyAcc.std...Y               
 8.  tBodyAcc.std...Z               
 9.  tGravityAcc.mean...X           
 10.  tGravityAcc.mean...Y           
 11.  tGravityAcc.mean...Z           
 12.  tGravityAcc.std...X            
 13.  tGravityAcc.std...Y            
 14.  tGravityAcc.std...Z            
 15.  tBodyAccJerk.mean...X          
 16.  tBodyAccJerk.mean...Y          
 17.  tBodyAccJerk.mean...Z          
 18.  tBodyAccJerk.std...X           
 19.  tBodyAccJerk.std...Y           
 20.  tBodyAccJerk.std...Z           
 21.  tBodyGyro.mean...X             
 22.  tBodyGyro.mean...Y             
 23.  tBodyGyro.mean...Z             
 24.  tBodyGyro.std...X              
 25.  tBodyGyro.std...Y              
 26.  tBodyGyro.std...Z              
 27.  tBodyGyroJerk.mean...X         
 28.  tBodyGyroJerk.mean...Y         
 29.  tBodyGyroJerk.mean...Z         
 30.  tBodyGyroJerk.std...X          
 31.  tBodyGyroJerk.std...Y          
 32.  tBodyGyroJerk.std...Z          
 33.  tBodyAccMag.mean..             
 34.  tBodyAccMag.std..              
 35.  tGravityAccMag.mean..          
 36.  tGravityAccMag.std..           
 37.  tBodyAccJerkMag.mean..         
 38.  tBodyAccJerkMag.std..          
 39.  tBodyGyroMag.mean..            
 40.  tBodyGyroMag.std..             
 41.  tBodyGyroJerkMag.mean..        
 42.  tBodyGyroJerkMag.std..         
 43.  fBodyAcc.mean...X              
 44.  fBodyAcc.mean...Y              
 45.  fBodyAcc.mean...Z              
 46.  fBodyAcc.std...X               
 47.  fBodyAcc.std...Y               
 48.  fBodyAcc.std...Z               
 49.  fBodyAcc.meanFreq...X          
 50.  fBodyAcc.meanFreq...Y          
 51.  fBodyAcc.meanFreq...Z          
 52.  fBodyAccJerk.mean...X          
 53.  fBodyAccJerk.mean...Y          
 54.  fBodyAccJerk.mean...Z          
 55.  fBodyAccJerk.std...X           
 56.  fBodyAccJerk.std...Y           
 57.  fBodyAccJerk.std...Z           
 58.  fBodyAccJerk.meanFreq...X      
 59.  fBodyAccJerk.meanFreq...Y      
 60.  fBodyAccJerk.meanFreq...Z      
 61.  fBodyGyro.mean...X             
 62.  fBodyGyro.mean...Y             
 63.  fBodyGyro.mean...Z             
 64.  fBodyGyro.std...X              
 65.  fBodyGyro.std...Y              
 66.  fBodyGyro.std...Z              
 67.  fBodyGyro.meanFreq...X          
 68.  fBodyGyro.meanFreq...Y         
 69.  fBodyGyro.meanFreq...Z         
 70.  fBodyAccMag.mean..             
 71.  fBodyAccMag.std..              
 72.  fBodyAccMag.meanFreq..         
 73.  fBodyBodyAccJerkMag.mean..     
 74.  fBodyBodyAccJerkMag.std..      
 75.  fBodyBodyAccJerkMag.meanFreq.. 
 76.  fBodyBodyGyroMag.mean..        
 77.  fBodyBodyGyroMag.std..         
 78.  fBodyBodyGyroMag.meanFreq..    
 79.  fBodyBodyGyroJerkMag.mean..    
 80.  fBodyBodyGyroJerkMag.std..     
 81.  fBodyBodyGyroJerkMag.meanFreq..


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) 
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. 
These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
         