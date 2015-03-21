#Readme.txt for run_analysis.R

The script run_analysis.R requries the UCI HAR Dataset located at
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

####Dependencies: 

run_analysis.R requires the dplyr() package

####File requirements:

Working directory for R should be set to the top level of the UCI HAR Dataset folder and it will access files in the test and train subfolders. If the working directory is incorrect or these folders and files are not present, the script will fail.

run_analysis.R requires the files
- features.txt
- activity_labels
- X_train
- Y_train
- subject_train
- X_test
- Y_test
- subject_test

####Process:
run_analysis.R reads the files into working memory and merges the testing and training data for the X, Y and subject files.

The X table columns are labeled from the features list and columns with duplicate names are removed to enable processing by the dplyr select verb. None of the duplicate columns discarded contain data concerning mean() or std() of any measurements.

The Y table and labels tables are joined by the dply inner_join function, correlating observations with activity and the first column, containing now uneccessary activity label codes, is dropped by setting the column to NULL. Finally the subject code file and the y/activity table are column bound into a single unit. Column names are applied directly.

The X and Y tables are then combined into a single data table. 

As per the instruction we are only interest in the mean() and std() data for all observations recorded. These columns are interest are retained by using the dply select() function, keeping the first two columns for subject and activity, and all other columns containing the string "mean" or "std".

The mean value for every observation, grouped by subject and activity, is calculated and stored in a new data table by using the dply summarise_each() function. A txt file named tidydata.txt, without row names, is written to disk.

All variables in memory are deleted and R's garbage collection function called to clear working memory.

The script does not contain file checking, error checking, error messages, or console output.

