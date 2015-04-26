# GCD_CourseProject
Course project of Getting and Cleaning Data Course

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

A data set that merges the training and the test sets should be created with the following characteristics:
  * Only contains the measurements on the mean and standard deviation for each measurement. 
  * The activities have descriptive activity names
  * Variable names are descriptive
Finally from the data set created, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

For accomplish project goal, two scripts were created: 

* run_analysis.R
* name_activity.R


Steps to perform analysis:

1. The working directory should be set to the directory that contains the folder "UCI HAR Dataset" via setwd() function, this is the folder that contains all the files required for the analysis.
2. source file "name_activity.R"
3. source file "run_analysis.R"
4. The initial data set with all the requierements is stored in a variable *"data"* and the desired final tidy data set is in a variable called *newData*.

--------------------------------------------

The description of the files is the following:

## run_analysis.R

Description:

The R script called run_analysis.R does the following:

1.    Merges the training and the test sets to create one data set.
2.    Extracts only the measurements on the mean and standard deviation for each measurement. 
3.    Uses descriptive activity names to name the activities in the data set via _name\_activity_ function.
4.    Appropriately labels the data set with descriptive variable names. 
5.    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


Usage:

Source script.

The working directory prior to excecute "run_analysis" should be set to the directory that contains the folder "UCI HAR Dataset", this is the folder that contains all the files required for the analysis.



##name_activity.R

Description:

This R script contain a function called "name_activity" that asign descriptive activity names to the activities in the data set. 
This function is called from "run_analysis.R"

Usage:

name_activity(x)

  Input:
  x - is an integer in the range 1-6
  
  Output:
  
  An activity label according to x
  
  