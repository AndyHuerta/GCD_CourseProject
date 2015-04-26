---
title: "CodeBook"
output: html_document
---

1. The first step is to set the working directory via setwd() to the folder "UCI HAR Dataset" that contains the dataset used.

2. Next, the required data are loaded and stored. The files used and their corresponding variables are:

  - 'features.txt' -> features (contains the list of all features) 
  - 'activity\_labels.txt' -> activity\_labels (Links the class labels with their activity name)
  - 'test/subject\_test.txt'-> subject\_test (Each row identifies the subject who performed the activity for each window sample)
  - 'test/X_test.txt' -> xtest (test set)
  - 'test/y_test.txt' -> ytest (test labels)
  - 'train/subject\_train.txt' subject\_train (Each row identifies the subject who performed the activity for each window sample)
  - 'train/X_train.txt' -> xtrain (train set)
  - 'train/y_train.txt' -> ytrain (train labels)
  
  Detailed description of the experiment as well as the features could be found in Readme.txt and features_info.txt files
  

3. Merges train and test sets to create one data set:
  * Concatenates vertically subject\_test with subject_train in a variable called subject
  * Concatenates vertically ytest with ytrain in a variable called y
  * Concatenates vertically xtest with xtrain in a variable called x
  * Label column of variable subject as "Subject"
  * Label second column of variable y as "Activity"
  * Label each column of variable x with features variable
  * Create a single data frame stored in a variable _data_ with (subject, y, x) in which first column contains subject, second column contains y (activity label), and the following 561 columns contains x (set of all features).
  
4. Extracts only the measurements on the mean and standard deviation for each measurement. This is done dropping 
all the columns corresponding to features that doesn't content in their name "mean" or "std"

5. Appropriately labels the data set with descriptive variable names. Since in step 3 the column names were named before merge, after merging column names preserve their names. Only parenthesis were removed from all the names and "" were replaced with "." .

6. Uses descriptive activity names to name the activities in the data set. This is done via name_activity function that replace de label of the activity to its corresponding name.

7. Create independent tidy data set with the average of each variable for each activity and each subject, stored in a variable _newData_. Data were splited by subject and activity and the mean of each variable was calculated for each group via "aggreagate" function. Due to the nature of mean function units doesn't change.

8. Rename Subject and Activity columns because name was modified in previous step. Final names of the variables are

x
Subject
Activity
tBodyAcc.mean.X
tBodyAcc.mean.Y
tBodyAcc.mean.Z
tGravityAcc.mean.X
tGravityAcc.mean.Y
tGravityAcc.mean.Z
tBodyAccJerk.mean.X
tBodyAccJerk.mean.Y
tBodyAccJerk.mean.Z
tBodyGyro.mean.X
tBodyGyro.mean.Y
tBodyGyro.mean.Z
tBodyGyroJerk.mean.X
tBodyGyroJerk.mean.Y
tBodyGyroJerk.mean.Z
tBodyAccMag.mean
tGravityAccMag.mean
tBodyAccJerkMag.mean
tBodyGyroMag.mean
tBodyGyroJerkMag.mean
fBodyAcc.mean.X
fBodyAcc.mean.Y
fBodyAcc.mean.Z
fBodyAcc.meanFreq.X
fBodyAcc.meanFreq.Y
fBodyAcc.meanFreq.Z
fBodyAccJerk.mean.X
fBodyAccJerk.mean.Y
fBodyAccJerk.mean.Z
fBodyAccJerk.meanFreq.X
fBodyAccJerk.meanFreq.Y
fBodyAccJerk.meanFreq.Z
fBodyGyro.mean.X
fBodyGyro.mean.Y
fBodyGyro.mean.Z
fBodyGyro.meanFreq.X
fBodyGyro.meanFreq.Y
fBodyGyro.meanFreq.Z
fBodyAccMag.mean
fBodyAccMag.meanFreq
fBodyBodyAccJerkMag.mean
fBodyBodyAccJerkMag.meanFreq
fBodyBodyGyroMag.mean
fBodyBodyGyroMag.meanFreq
fBodyBodyGyroJerkMag.mean
fBodyBodyGyroJerkMag.meanFreq
tBodyAcc.std.X
tBodyAcc.std.Y
tBodyAcc.std.Z
tGravityAcc.std.X
tGravityAcc.std.Y
tGravityAcc.std.Z
tBodyAccJerk.std.X
tBodyAccJerk.std.Y
tBodyAccJerk.std.Z
tBodyGyro.std.X
tBodyGyro.std.Y
tBodyGyro.std.Z
tBodyGyroJerk.std.X
tBodyGyroJerk.std.Y
tBodyGyroJerk.std.Z
tBodyAccMag.std
tGravityAccMag.std
tBodyAccJerkMag.std
tBodyGyroMag.std
tBodyGyroJerkMag.std
fBodyAcc.std.X
fBodyAcc.std.Y
fBodyAcc.std.Z
fBodyAccJerk.std.X
fBodyAccJerk.std.Y
fBodyAccJerk.std.Z
fBodyGyro.std.X
fBodyGyro.std.Y
fBodyGyro.std.Z
fBodyAccMag.std
fBodyBodyAccJerkMag.std
fBodyBodyGyroMag.std
fBodyBodyGyroJerkMag.std
