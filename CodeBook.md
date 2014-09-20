The data is collected from the accelerometers from the Samsung Galaxy S smartphone. 

The first column has the variable "subjectID" which takes the values from 1 to 30. Each unique number represents one subject.

The second column has the variable "activityName" which can take the following values:   
* WALKING   
* WALKING_UPSTAIRS   
* WALKING_DOWNSTAIRS   
* SITTING  
* STANDING   
* LAYING   

The rest of the columns store the mean and standard deviation of the measurements. The range of values for these variables are from -1 to 1. The variables extracted are      
* tBodyAcc-mean()-X,Y,Z        
* tGravityAcc-mean()-X,Y,Z   	
* tBodyAccJerk-mean()-X,Y,Z   
* tBodyGyro-mean()-X,Y,Z		   
* tBodyGyroJerk-mean()-X,Y,Z	  
* tBodyAccMag-mean()    
* tGravityAccMag-mean()    
* tBodyAccJerkMag-mean()   
* tBodyGyroMag-mean()	    
* tBodyGyroJerkMag-mean()	   
* fBodyAcc-mean()-X,Y,Z	    
* fBodyAcc-meanFreq()-X,Y,Z   
* fBodyAccJerk-mean()-X,Y,Z	
* fBodyAccJerk-meanFreq()-X,Y,Z	  
* fBodyGyro-mean()-X,Y,Z    
* fBodyGyro-meanFreq()-X,Y,Z   
* fBodyAccMag-mean()	   
* fBodyAccMag-meanFreq()    	
* fBodyBodyAccJerkMag-mean()    	
* fBodyBodyAccJerkMag-meanFreq()    	
* fBodyBodyGyroMag-mean()	    
* fBodyBodyGyroMag-meanFreq()    
* fBodyBodyGyroJerkMag-mean()    
* fBodyBodyGyroJerkMag-meanFreq()   

The tidy data is obtained after performing the following steps:   
1. I read the test and training data.   
2. I assign column names to the table.   
3. I combine the test and training data into one data table.   
4. I extract the mean and standard deviation for each measurement.   
5. I use descriptive names for the activities.   
6. I aggregate the data values with the average of each variable for each activity and each subject. 

