##CODE BOOK

This code book contains the information of the tidy data set obtained with run_analysis.R following the requiments of the  project.

### General information

tidydataset.txt contains 180 observables (rows) of 68 variables (columns).Each row provides the average of each variable for each activity and each subject (66 variables for each activity and each subject).

### Information about Labels and variables

* Subject_Code (integer) identifies the subject under test (between 1 and 30 volunteers).

* ACTIVITY (factor) shows the type of activity carried out (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

* There are 66 variables that indicate only the values of mean and standard desviation of the measurements of accelerometers and gyroscopes.

1.tBodyAcc-mean()-X

2.tBodyAcc-mean()-Y

3.tBodyAcc-mean()-Z

4.tBodyAcc-std()-X

5.tBodyAcc-std()-Y

6.tBodyAcc-std()-Z

7.tGravityAcc-mean()-X

8.tGravityAcc-mean()-Y

9.tGravityAcc-mean()-Z

10.tGravityAcc-std()-X

11.tGravityAcc-std()-Y

12.tGravityAcc-std()-Z

13.tBodyAccJerk-mean()-X

14.tBodyAccJerk-mean()-Y

15.tBodyAccJerk-mean()-Z

16.tBodyAccJerk-std()-X

17.tBodyAccJerk-std()-Y

18.tBodyAccJerk-std()-Z

19.tBodyGyro-mean()-X

20.tBodyGyro-mean()-Y

21.tBodyGyro-mean()-Z

22.tBodyGyro-std()-X

23.tBodyGyro-std()-Y

24.tBodyGyro-std()-Z

25.tBodyGyroJerk-mean()-X

26.tBodyGyroJerk-mean()-Y

27.tBodyGyroJerk-mean()-Z

28.tBodyGyroJerk-std()-X

29.tBodyGyroJerk-std()-Y

30.tBodyGyroJerk-std()-Z

31.tBodyAccMag-mean()

32.tBodyAccMag-std()

33.tGravityAccMag-mean()

34.tGravityAccMag-std()

35.tBodyAccJerkMag-mean()

36.tBodyAccJerkMag-std()

37.tBodyGyroMag-mean()

38.tBodyGyroMag-std()

39.tBodyGyroJerkMag-mean()

40.tBodyGyroJerkMag-std()

41.fBodyAcc-mean()-X

42.fBodyAcc-mean()-Y

43.fBodyAcc-mean()-Z

44.fBodyAcc-std()-X

45.fBodyAcc-std()-Y

46.fBodyAcc-std()-Z

47.fBodyAccJerk-mean()-X

48.fBodyAccJerk-mean()-Y

49.fBodyAccJerk-mean()-Z

50.fBodyAccJerk-std()-X

51.fBodyAccJerk-std()-Y

52.fBodyAccJerk-std()-Z

53.fBodyGyro-mean()-X

54.fBodyGyro-mean()-Y

55.fBodyGyro-mean()-Z

56.fBodyGyro-std()-X

57.fBodyGyro-std()-Y

58.fBodyGyro-std()-Z

59.fBodyAccMag-mean()

60.fBodyAccMag-std()

61.fBodyBodyAccJerkMag-mean()

62.fBodyBodyAccJerkMag-std()

63.fBodyBodyGyroMag-mean()

64.fBodyBodyGyroMag-std()

65.fBodyBodyGyroJerkMag-mean()

66.fBodyBodyGyroJerkMag-std()

Note: I decided not to change the names of the measurements because I prefer maintaining the nomenclature indicated in the file features_info.txt.


