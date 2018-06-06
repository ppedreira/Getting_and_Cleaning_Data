library(reshape2)

# 1. Merge the training and the test set to create one data set --> totalset


#Read data
setwd("C:/Users/ppedreira/Desktop/UCI HAR Dataset/test")
testset<-read.table("./X_test.txt")
subjtest<-read.table("./subject_test.txt")
acttest<- read.table("./y_test.txt")

setwd("C:/Users/ppedreira/Desktop/UCI HAR Dataset/train")
trainingset<-read.table("./X_train.txt")
subjtrain<-read.table("./subject_train.txt")
acttrain<- read.table("./y_train.txt")

##Binding by rows--> rbind
datasets = rbind(testset,trainingset)
subjsets = rbind(subjtest,subjtrain)
actsets = rbind(acttest,acttrain)


totalset =cbind(datasets,subjsets,actsets)

#2.- Extract only the measurements on the mean and std desv for each measurement


##Measurements of accelerometer and gyroscope
setwd("C:/Users/ppedreira/Desktop/UCI HAR Dataset")
measurements<-read.table("./features.txt")
##Extract only mean and std from measurements
mean_and_std <- measurements[grep("mean\\(\\)|std\\(\\)",measurements[,2]),]
meanstdmeas <- totalset[,mean_and_std[,1]]


#3.- Use the descriptive activity names to name the activities in the data set
#Relationship number of activity with its corresponding name
actlabels <- read.table("./activity_labels.txt")
#Put the name in the column
colnames(actsets) <- "activity_code"

actsets$actlabels <- factor(actsets$activity_code, labels = as.character(actlabels[,2]))
actlabels<- actsets$actlabels


# 4. Appropriately labels the data set with descriptive variable names.
# First, choose the names from measurements (2nd column) that match only with the 1st column of meam_and_std
colnames(meanstdmeas) <- measurements[mean_and_std[,1],2]

# 5.- From the data set in step 4, creates a second, independent tidy data set
#     with the average of each variable for each activity and each subject.

colnames(subjsets) <-"Subject_Code"

tidydata<-cbind(subjsets,actlabels,meanstdmeas)
colnames(tidydata)[2]<- c("ACTIVITY")
# Melt the data in function of the activity for each subject using library reshape2

tidydata <- melt(tidydata, id = c('Subject_Code', 'ACTIVITY'))

# Obtain the average of each variable for each activity and each subject
tidydataset <- dcast(tidydata, Subject_Code + ACTIVITY ~ variable, mean)

# Create the tidy data set as a file .txt
write.table(tidydataset, file=file.path("tidydataset.txt"), row.names = FALSE, quote = FALSE)

