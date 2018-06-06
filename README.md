## Getting and Cleaning Data Course Project


The goal of this project is to collect, work and tidy up a data set. In this assignment, we will use and work with a dataset following the next steps:

1) Obtain the data set from the links (download the files), 

2) read and work with the data,

3) select and extract the specific data, and 

4) finally, tidy up data set in function of requirements. 



###Data Set Information: Human Activity Recognition Using Smartphones Data Set

Human Activity Recognition database built from the recordings of 30 subjects within an age bracket of 19-48 years performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The dataset can be downloaded from this link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


###Repository Information:

This repository contains three files:

run_analysis.R - This script allows working with the sample data sets according to the specifications in order to obtain a file with the tidy data set.

tidydataset.txt - This is the output file generated from the run_analysis.R script with the tidy data set in function of the requirements (See CodeBook Information). 

CodeBook.md - This file contains the explanations and steps followed until to obtain the required result.


### Codebook information:

run_analysis.R is a script written following these steps:

* To merge the training and the test sets to create one data set.

* To extract only the measurements on the mean and standard deviation for each measurement.

* To use descriptive activity names to name the activities in the data set.

* To label appropriately the data set with descriptive variable names.

* From the data set in step 4, to create a second, independent tidy data set with the average of each variable for each activity and each subject.