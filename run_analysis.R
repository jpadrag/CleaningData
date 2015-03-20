## Load the dplyr library
library(dplyr)

##Working directory should be set to the top level
##of the UCI HAR Dataset folder as provided

##Read data from folder

    ##Read activity labels into memory
      labels   <- read.table("activity_labels.txt")
    ##Read feature list into memory
      features <- read.table("features.txt")

    ##Read data sets into memory
      ytrain  <- read.table("train/y_train.txt")
      xtrain  <- read.table("train/x_train.txt")
      ytest   <- read.table("test/y_test.txt")
      xtest   <- read.table("test/x_test.txt")
    ##Read subject ID table into memory
      strain   <- read.table("train/subject_train.txt")
      stest   <- read.table("test/subject_test.txt")
  
##Combine the training and test data set tables
  ytable <- rbind(ytrain,ytest)
  xtable <- rbind(xtrain,xtest)
  stable <- rbind(strain,stest)

##Convert tables to tbl_df format for dplyr()
  ytable   <- tbl_df(ytable)
  xtable   <- tbl_df(xtable)
  stable   <- tbl_df(stable)
  labels   <- tbl_df(labels)
  features <- tbl_df(features)

##Prepare data tables for merging

    ##Name the columns of X lists according to features list
      colnames(xtable) <- features$V2
  
    ##Remove columns with duplicated names from X
      xtable <- xtable[,unique(colnames(xtable))]
  
    ##Join the list of activity labels and subjects dropping code
      ytable <- inner_join(ytable,labels)
      ytable$V1 <- NULL
      ytable <- cbind(stable, ytable)

  
    ##Set the variables for Y list
      colnames(ytable) <- c("subject","activity")


##Merge all lists into single table
    
    ##Combine both lists into a single dataframe
      xytable <- cbind(ytable, xtable)
    ##Convert to tbl_df
      xytable <- tbl_df(xytable)

    ##Subset table for mean and STD data
      xytable <- select(xytable, 1:2, contains("mean"), contains("std"))



##Create new table of tidy data with average values
##for each subject and activity

    tidydata <- summarise_each(group_by(xytable,subject,activity), funs(mean))

##Write the new tidy data file for upload

    write.table(tidydata, file = "tidydata.txt", row.name=FALSE)

##Clear variables and garbage collection
rm(xtable,ytable,stable,ytrain,ytest,xtrain,xtest,strain,stest)
rm(features,labels,tidydata,xytable)
gc()
