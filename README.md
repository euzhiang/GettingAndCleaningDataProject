#Getting And Cleaning Data Project

There is one script in the directory which is run_analysis.R    
To run the script, simply use:
source("run_analysis.R")

The source data must be extracted to a folder named "Dataset".

The output would be 4 files:     
1. aggData.csv    
2. aggData.txt    
3. completeData.csv   
4. completeData.txt

The first two output data files are used to get the aggregate data while the last two output data files are used for verification.

The script works as described below:   
1. I read the test and training data.   
2. I assign column names to the table.   
3. I combine the test and training data into one data table.   
4. I extract the mean and standard deviation for each measurement.   
5. I use descriptive names for the activities.   
6. I aggregate the data values with the average of each variable for each activity and each subject.   


