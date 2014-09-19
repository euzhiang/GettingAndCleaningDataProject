# Step 1: Merges the training and test sets to create one data set

## Read the training data
subject_train<-read.table("Dataset/train/subject_train.txt")
X_train<-read.table("Dataset/train/X_train.txt")
y_train<-read.table("Dataset/train/y_train.txt")

## Read the test data
subject_test<-read.table("Dataset/test/subject_test.txt")
X_test<-read.table("Dataset/test/X_test.txt")
y_test<-read.table("Dataset/test/y_test.txt")

## Set the column names
colnames(subject_train)<-c("SubjectNo")
colnames(subject_test)<-c("SubjectNo")
featuresNames<-read.table("Dataset/features.txt")
colnames(X_train)<-featuresNames$V2
colnames(X_test)<-featuresNames$V2
colnames(y_train)<-c("TrainingLabel")
colnames(y_test)<-c("TrainingLabel")
dataTraining<-cbind(subject_train, y_train, X_train)
dataTest<-cbind(subject_test, y_test, X_test)

completeData<-rbind(dataTraining,dataTest)

# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement
completeData<-completeData[,c(1,2, grep("mean",names(completeData)),grep("std",names(completeData)))]

# Step 3: Uses descriptive activity names to name the activities in the data set
activityNames<-read.table("Dataset/activity_labels.txt", col.names=c("TrainingLabel","ActivityName"))
completeData$TrainingLabel=factor(completeData$TrainingLabel,c(1,2,3,4,5,6),labels=activityNames$ActivityName)
write.table(completeData,"completeData.txt",row.names=FALSE)
write.csv(completeData,"completeData.csv",row.names=FALSE)

# Step 4: Appropriately labels the data set with descriptive variable names
## This step is already done in step 1 when the column names are set


# Step 5: Create a second independent tidy data set with the average of each variable for each activity and each subject
aggData<-aggregate(completeData[,3:ncol(completeData)],list(completeData$SubjectNo, completeData$TrainingLabel), FUN=mean, na.rm=TRUE)
write.table(aggData,"aggData.txt",row.names=FALSE)
write.csv(aggData,"aggData.csv",row.names=FALSE)
