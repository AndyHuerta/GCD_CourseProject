# Set working directory
setwd("UCI HAR Dataset")
# Load data           
activity_labels<-read.table("activity_labels.txt")
features<-read.table("features.txt")
setwd("test")
subject_test<-read.table("subject_test.txt")
xtest<-read.table("X_test.txt")
ytest<-read.table("y_test.txt")
setwd("..")
setwd("train")
subject_train<-read.table("subject_train.txt")
xtrain<-read.table("X_train.txt")
ytrain<-read.table("y_train.txt")
setwd("..")
setwd("..")
# Merges the training and the test sets to create one data set.
subject<-rbind(subject_test, subject_train)
x<-rbind(xtest,xtrain)
y<-rbind(ytest,ytrain)
     
colnames(subject)<-"Subject"
colnames(x)<-features[[2]]
colnames(y)<-"Activity"
data<-cbind(subject,y,x)

#Extracts only the measurements on the mean and standard deviation for each measurement. 

indexMean<-grep("mean", as.character(features$V2))
indexStd<-grep("std", as.character(features$V2))
index<-c(1,2,indexMean+2,indexStd+2)
data<-data[,index]

# Appropriately labels the data set with descriptive variable names.
columNames<-colnames(data)
columNames[3:7]
columNames<-sub("\\()","",columNames)
columNames[3:7]
colnames(data)<-columNames
# Uses descriptive activity names to name the activities in the data set
data$Activity<-sapply(data$Activity,name_activity)

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject.
newData<-aggregate(data[,3:81],list(data$Subject,data$Activity),mean)
colnames(newData)[1]<-"Subject"
colnames(newData)[2]<-"Activity"

