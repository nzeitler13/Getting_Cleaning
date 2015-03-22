# Codebook
Nathan Zeitler  
Sunday, March 22, 2015  

Objective, tidy and prepare acelerometer data collected from samsung phones durring a number of activities.  

The R code will check for the data being downloaded in the working directory, and download the data (only tested on windows 7 64 bit system).  The data may be obtained as a zip file from 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

THe script will then extract the data from the zip file if the zip is present but the extracted folder is absent.  THe script will then read data located in the X_test,y_test,X_train,y_train,activity_labels.txt and features_info.txt files.  The data is then gathered into a data frame stored as TTint.    The recorded observations means and standard deviations are then extracted to a tidy data set stored as TTfin.  A final tidy data set is generated for the means of each observation over each activity, and stored as fin.  Finnaly the script display the str summary of the TTfin dataset.


Any observation containing either mean() or std() were extracted and gathered into the TTfin object.

The following is a list of the chosen observation catagories.  A t before a catagory indicates the measurment is in the time domain.  A f before a title indicates the measurement has been transformed using Fast Fouirer transform into the frequency domain. Each recording is either taken from an onboard accelerometer or gyroscope in a stnadard three dimensional cartesion coordinate sytem (XYZ), represented by Acc or Gyro  respectivly. This data was processed as described in Feature_selection.txt.  All acclerometer data has a gravity and body components sperated out and labled as either Body or gravity.  Rate of change of acceleration (Jerk) is also recorded for both accelrometer and gyroscopci data. Obervation containing Mag are magnitudes of the three dimentional signal calculated using Euclidean norm.  Each row is labled with an activity name as well as a number representing that activity.

tBodyAcc-mean()-X

tBodyAcc-mean()-Y

tBodyAcc-mean()-Z

tBodyAcc-std()-X

tBodyAcc-std()-Y

tBodyAcc-std()-Z

tGravityAcc-mean()-X

tGravityAcc-mean()-Y

tGravityAcc-mean()-Z

tGravityAcc-std()-X

tGravityAcc-std()-Y

tGravityAcc-std()-Z

tBodyAccJerk-mean()-X

tBodyAccJerk-mean()-Y

tBodyAccJerk-mean()-Z

tBodyAccJerk-std()-X

tBodyAccJerk-std()-Y

tBodyAccJerk-std()-Z

tBodyGyro-mean()-X

tBodyGyro-mean()-Y

tBodyGyro-mean()-Z

tBodyGyro-std()-X

tBodyGyro-std()-Y

tBodyGyro-std()-Z

tBodyGyroJerk-mean()-X

tBodyGyroJerk-mean()-Y

tBodyGyroJerk-mean()-Z

tBodyGyroJerk-std()-X

tBodyGyroJerk-std()-Y

tBodyGyroJerk-std()-Z

tBodyAccMag-mean()

tBodyAccMag-std()

tGravityAccMag-mean()

tGravityAccMag-std()

tBodyAccJerkMag-mean()

tBodyAccJerkMag-std()

tBodyGyroMag-mean()

tBodyGyroMag-std()

tBodyGyroJerkMag-mean()

tBodyGyroJerkMag-std()

fBodyAcc-mean()-X

fBodyAcc-mean()-Y

fBodyAcc-mean()-Z

fBodyAcc-std()-X

fBodyAcc-std()-Y

fBodyAcc-std()-Z

fBodyAccJerk-mean()-X

fBodyAccJerk-mean()-Y

fBodyAccJerk-mean()-Z

fBodyAccJerk-std()-X

fBodyAccJerk-std()-Y

fBodyAccJerk-std()-Z

fBodyAccJerk-meanFreq()-X

fBodyAccJerk-meanFreq()-Y

fBodyAccJerk-meanFreq()-Z

fBodyGyro-mean()-X

fBodyGyro-mean()-Y

fBodyGyro-mean()-Z

fBodyGyro-std()-X

fBodyGyro-std()-Y

fBodyGyro-std()-Z

fBodyGyro-meanFreq()-X

fBodyGyro-meanFreq()-Y

fBodyGyro-meanFreq()-Z

fBodyAccMag-mean()

fBodyAccMag-std()

fBodyBodyAccJerkMag-mean()

fBodyBodyAccJerkMag-std()

fBodyBodyGyroMag-mean()

fBodyBodyGyroMag-std()

fBodyBodyGyroJerkMag-mean()

fBodyBodyGyroJerkMag-std()

angle(tBodyAccMean,gravity)

angle(tBodyAccJerkMean),gravityMean)

angle(tBodyGyroMean,gravityMean)

angle(tBodyGyroJerkMean,gravityMean)

angle(X,gravityMean)

angle(Y,gravityMean)

angle(Z,gravityMean)
