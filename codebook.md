---
title: "Codebook.md"
author: "John Adragna"
date: "Friday, March 20, 2015"
output: html_document
---

Tidydata.txt is processed output from raw data available at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original codebook has been reproduced here and edited to reflect changes performed during processing:

Original description of variables:
-------------------------------------------------------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ 
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
----------------------------------------------------------------

DATA SELECTION:
===============

Only the variables  mean(): Mean value
                    std():  Standard deviation
          
Were selected for measurements:
----------------------------------
tBodyAcc-XYZ 
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
-------------------------------------


Discarding all data for:
----------------------------------
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.
-----------------------------------

MODIFICATION OF DATA:
=====================

Identifying fields added for:  

subject  - Unique integer. Values: 1 - 30
activity - Text description of acivity. Values: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
          
The observations were grouped by subject and activity. A single value for each activity, for each subject, was obtained by taking the mean. 


FORMAT OF DATA FILE:
====================

The resulting data consists of:

Thirty subjects
Six activities per subject
One mean value for each variable

Plain text file, values separated by space.
All measurement units are in Hz.
The first row is a header.


Example of data file:
========================================================================================================
 subject           activity tBodyAcc.mean...X tBodyAcc.mean...Y tBodyAcc.mean...Z tGravityAcc.mean...X
1        1             LAYING         0.2215982      -0.040513953       -0.11320355           -0.2488818
2        1            SITTING         0.2612376      -0.001308288       -0.10454418            0.8315099
3        1           STANDING         0.2789176      -0.016137590       -0.11060182            0.9429520
4        1            WALKING         0.2773308      -0.017383819       -0.11114810            0.9352232
5        1 WALKING_DOWNSTAIRS         0.2891883      -0.009918505       -0.10756619            0.9318744
6        1   WALKING_UPSTAIRS         0.2554617      -0.023953149       -0.09730200            0.8933511
7        2             LAYING         0.2813734      -0.018158740       -0.10724561           -0.5097542
8        2            SITTING         0.2770874      -0.015687994       -0.10921827            0.9404773
9        2           STANDING         0.2779115      -0.018420827       -0.10590854            0.8969286
10       2            WALKING         0.2764266      -0.018594920       -0.10550036            0.9130173
11       2 WALKING_DOWNSTAIRS         0.2776153      -0.022661416       -0.11681294            0.8618313
12       2   WALKING_UPSTAIRS         0.2471648      -0.021412113       -0.15251390            0.7907174
========================================================================================================




