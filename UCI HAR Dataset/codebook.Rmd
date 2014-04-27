Code Book
========================================================

Summary
-----------------------

### Orginal Source of Data
The original data for this exercise was obtained from 
"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

### Assumptions about the original data

*Each line in the X\_test.txt file  corresponst to the result in y\_test.txt and form s a single record
*Each column in the X\_test.txt file  corresponds to a feature in the row in the featurs.txt file
*Each number in the y\_test.txt file corresponds to a activity in the activity_labels file, where the first column of the activities file is the key, and the y value corresponding to that key has the activity label given by the second column of the activites file.
*All that was assumed about the testing data also holds for the training data

### Summary of R script
The script will will first check to see if the data is already availabe by checking the
existance of the "./UCI HAR Dataset/" directory, and if not found will attempt download and
unzip the required data. 

This script producs two data sets which are automatically saved to 
"combinedData.csv" and "df_tidy.csv".

CombinedData.csv
-------------------
A csv file consisting of subject id, activity and a collection of derived measurments obtained from the train and test data sets of the original data by extracting those measurement that contain either "std()" or a "mean()" in their names.

### Variables

* **subject** the subject id (numbers from 1-30) of individuals within the experiment. These
are extracted from the data files "subject\_test.txt"" and "object\_train.txt"" 
* **activity** A factor representing the activity. The labels are obtained from the file
"activity\_labels.txt". The activties correspond to those specified in the corresponding 
files "y\_test.txt" and "u_\train.txt", using the numeric to label codes containded in 
"activity\_labels.txt".
* **tBodyAcc\_mean\_X**  corresponds to the variable 'tBodyAcc-mean()-X' from the 'features.txt' file and corresponds to the 1 column of the x\_test.txt/X\_train.txt files 
* **tBodyAcc\_mean\_Y**  corresponds to the variable 'tBodyAcc-mean()-Y' from the 'features.txt' file and corresponds to the 2 column of the x\_test.txt/X\_train.txt files 
* **tBodyAcc\_mean\_Z**  corresponds to the variable 'tBodyAcc-mean()-Z' from the 'features.txt' file and corresponds to the 3 column of the x\_test.txt/X\_train.txt files 
* **tBodyAcc\_std\_X**  corresponds to the variable 'tBodyAcc-std()-X' from the 'features.txt' file and corresponds to the 4 column of the x\_test.txt/X\_train.txt files 
* **tBodyAcc\_std\_Y**  corresponds to the variable 'tBodyAcc-std()-Y' from the 'features.txt' file and corresponds to the 5 column of the x\_test.txt/X\_train.txt files 
* **tBodyAcc\_std\_Z**  corresponds to the variable 'tBodyAcc-std()-Z' from the 'features.txt' file and corresponds to the 6 column of the x\_test.txt/X\_train.txt files 
* **tGravityAcc\_mean\_X**  corresponds to the variable 'tGravityAcc-mean()-X' from the 'features.txt' file and corresponds to the 41 column of the x\_test.txt/X\_train.txt files 
* **tGravityAcc\_mean\_Y**  corresponds to the variable 'tGravityAcc-mean()-Y' from the 'features.txt' file and corresponds to the 42 column of the x\_test.txt/X\_train.txt files 
* **tGravityAcc\_mean\_Z**  corresponds to the variable 'tGravityAcc-mean()-Z' from the 'features.txt' file and corresponds to the 43 column of the x\_test.txt/X\_train.txt files 
* **tGravityAcc\_std\_X**  corresponds to the variable 'tGravityAcc-std()-X' from the 'features.txt' file and corresponds to the 44 column of the x\_test.txt/X\_train.txt files 
* **tGravityAcc\_std\_Y**  corresponds to the variable 'tGravityAcc-std()-Y' from the 'features.txt' file and corresponds to the 45 column of the x\_test.txt/X\_train.txt files 
* **tGravityAcc\_std\_Z**  corresponds to the variable 'tGravityAcc-std()-Z' from the 'features.txt' file and corresponds to the 46 column of the x\_test.txt/X\_train.txt files 
* **tBodyAccJerk\_mean\_X**  corresponds to the variable 'tBodyAccJerk-mean()-X' from the 'features.txt' file and corresponds to the 81 column of the x\_test.txt/X\_train.txt files 
* **tBodyAccJerk\_mean\_Y**  corresponds to the variable 'tBodyAccJerk-mean()-Y' from the 'features.txt' file and corresponds to the 82 column of the x\_test.txt/X\_train.txt files 
* **tBodyAccJerk\_mean\_Z**  corresponds to the variable 'tBodyAccJerk-mean()-Z' from the 'features.txt' file and corresponds to the 83 column of the x\_test.txt/X\_train.txt files 
* **tBodyAccJerk\_std\_X**  corresponds to the variable 'tBodyAccJerk-std()-X' from the 'features.txt' file and corresponds to the 84 column of the x\_test.txt/X\_train.txt files 
* **tBodyAccJerk\_std\_Y**  corresponds to the variable 'tBodyAccJerk-std()-Y' from the 'features.txt' file and corresponds to the 85 column of the x\_test.txt/X\_train.txt files 
* **tBodyAccJerk\_std\_Z**  corresponds to the variable 'tBodyAccJerk-std()-Z' from the 'features.txt' file and corresponds to the 86 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyro\_mean\_X**  corresponds to the variable 'tBodyGyro-mean()-X' from the 'features.txt' file and corresponds to the 121 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyro\_mean\_Y**  corresponds to the variable 'tBodyGyro-mean()-Y' from the 'features.txt' file and corresponds to the 122 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyro\_mean\_Z**  corresponds to the variable 'tBodyGyro-mean()-Z' from the 'features.txt' file and corresponds to the 123 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyro\_std\_X**  corresponds to the variable 'tBodyGyro-std()-X' from the 'features.txt' file and corresponds to the 124 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyro\_std\_Y**  corresponds to the variable 'tBodyGyro-std()-Y' from the 'features.txt' file and corresponds to the 125 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyro\_std\_Z**  corresponds to the variable 'tBodyGyro-std()-Z' from the 'features.txt' file and corresponds to the 126 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyroJerk\_mean\_X**  corresponds to the variable 'tBodyGyroJerk-mean()-X' from the 'features.txt' file and corresponds to the 161 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyroJerk\_mean\_Y**  corresponds to the variable 'tBodyGyroJerk-mean()-Y' from the 'features.txt' file and corresponds to the 162 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyroJerk\_mean\_Z**  corresponds to the variable 'tBodyGyroJerk-mean()-Z' from the 'features.txt' file and corresponds to the 163 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyroJerk\_std\_X**  corresponds to the variable 'tBodyGyroJerk-std()-X' from the 'features.txt' file and corresponds to the 164 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyroJerk\_std\_Y**  corresponds to the variable 'tBodyGyroJerk-std()-Y' from the 'features.txt' file and corresponds to the 165 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyroJerk\_std\_Z**  corresponds to the variable 'tBodyGyroJerk-std()-Z' from the 'features.txt' file and corresponds to the 166 column of the x\_test.txt/X\_train.txt files 
* **tBodyAccMag\_mean**  corresponds to the variable 'tBodyAccMag-mean()' from the 'features.txt' file and corresponds to the 201 column of the x\_test.txt/X\_train.txt files 
* **tBodyAccMag\_std**  corresponds to the variable 'tBodyAccMag-std()' from the 'features.txt' file and corresponds to the 202 column of the x\_test.txt/X\_train.txt files 
* **tGravityAccMag\_mean**  corresponds to the variable 'tGravityAccMag-mean()' from the 'features.txt' file and corresponds to the 214 column of the x\_test.txt/X\_train.txt files 
* **tGravityAccMag\_std**  corresponds to the variable 'tGravityAccMag-std()' from the 'features.txt' file and corresponds to the 215 column of the x\_test.txt/X\_train.txt files 
* **tBodyAccJerkMag\_mean**  corresponds to the variable 'tBodyAccJerkMag-mean()' from the 'features.txt' file and corresponds to the 227 column of the x\_test.txt/X\_train.txt files 
* **tBodyAccJerkMag\_std**  corresponds to the variable 'tBodyAccJerkMag-std()' from the 'features.txt' file and corresponds to the 228 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyroMag\_mean**  corresponds to the variable 'tBodyGyroMag-mean()' from the 'features.txt' file and corresponds to the 240 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyroMag\_std**  corresponds to the variable 'tBodyGyroMag-std()' from the 'features.txt' file and corresponds to the 241 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyroJerkMag\_mean**  corresponds to the variable 'tBodyGyroJerkMag-mean()' from the 'features.txt' file and corresponds to the 253 column of the x\_test.txt/X\_train.txt files 
* **tBodyGyroJerkMag\_std**  corresponds to the variable 'tBodyGyroJerkMag-std()' from the 'features.txt' file and corresponds to the 254 column of the x\_test.txt/X\_train.txt files 
* **fBodyAcc\_mean\_X**  corresponds to the variable 'fBodyAcc-mean()-X' from the 'features.txt' file and corresponds to the 266 column of the x\_test.txt/X\_train.txt files 
* **fBodyAcc\_mean\_Y**  corresponds to the variable 'fBodyAcc-mean()-Y' from the 'features.txt' file and corresponds to the 267 column of the x\_test.txt/X\_train.txt files 
* **fBodyAcc\_mean\_Z**  corresponds to the variable 'fBodyAcc-mean()-Z' from the 'features.txt' file and corresponds to the 268 column of the x\_test.txt/X\_train.txt files 
* **fBodyAcc\_std\_X**  corresponds to the variable 'fBodyAcc-std()-X' from the 'features.txt' file and corresponds to the 269 column of the x\_test.txt/X\_train.txt files 
* **fBodyAcc\_std\_Y**  corresponds to the variable 'fBodyAcc-std()-Y' from the 'features.txt' file and corresponds to the 270 column of the x\_test.txt/X\_train.txt files 
* **fBodyAcc\_std\_Z**  corresponds to the variable 'fBodyAcc-std()-Z' from the 'features.txt' file and corresponds to the 271 column of the x\_test.txt/X\_train.txt files 
* **fBodyAccJerk\_mean\_X**  corresponds to the variable 'fBodyAccJerk-mean()-X' from the 'features.txt' file and corresponds to the 345 column of the x\_test.txt/X\_train.txt files 
* **fBodyAccJerk\_mean\_Y**  corresponds to the variable 'fBodyAccJerk-mean()-Y' from the 'features.txt' file and corresponds to the 346 column of the x\_test.txt/X\_train.txt files 
* **fBodyAccJerk\_mean\_Z**  corresponds to the variable 'fBodyAccJerk-mean()-Z' from the 'features.txt' file and corresponds to the 347 column of the x\_test.txt/X\_train.txt files 
* **fBodyAccJerk\_std\_X**  corresponds to the variable 'fBodyAccJerk-std()-X' from the 'features.txt' file and corresponds to the 348 column of the x\_test.txt/X\_train.txt files 
* **fBodyAccJerk\_std\_Y**  corresponds to the variable 'fBodyAccJerk-std()-Y' from the 'features.txt' file and corresponds to the 349 column of the x\_test.txt/X\_train.txt files 
* **fBodyAccJerk\_std\_Z**  corresponds to the variable 'fBodyAccJerk-std()-Z' from the 'features.txt' file and corresponds to the 350 column of the x\_test.txt/X\_train.txt files 
* **fBodyGyro\_mean\_X**  corresponds to the variable 'fBodyGyro-mean()-X' from the 'features.txt' file and corresponds to the 424 column of the x\_test.txt/X\_train.txt files 
* **fBodyGyro\_mean\_Y**  corresponds to the variable 'fBodyGyro-mean()-Y' from the 'features.txt' file and corresponds to the 425 column of the x\_test.txt/X\_train.txt files 
* **fBodyGyro\_mean\_Z**  corresponds to the variable 'fBodyGyro-mean()-Z' from the 'features.txt' file and corresponds to the 426 column of the x\_test.txt/X\_train.txt files 
* **fBodyGyro\_std\_X**  corresponds to the variable 'fBodyGyro-std()-X' from the 'features.txt' file and corresponds to the 427 column of the x\_test.txt/X\_train.txt files 
* **fBodyGyro\_std\_Y**  corresponds to the variable 'fBodyGyro-std()-Y' from the 'features.txt' file and corresponds to the 428 column of the x\_test.txt/X\_train.txt files 
* **fBodyGyro\_std\_Z**  corresponds to the variable 'fBodyGyro-std()-Z' from the 'features.txt' file and corresponds to the 429 column of the x\_test.txt/X\_train.txt files 
* **fBodyAccMag\_mean**  corresponds to the variable 'fBodyAccMag-mean()' from the 'features.txt' file and corresponds to the 503 column of the x\_test.txt/X\_train.txt files 
* **fBodyAccMag\_std**  corresponds to the variable 'fBodyAccMag-std()' from the 'features.txt' file and corresponds to the 504 column of the x\_test.txt/X\_train.txt files 
* **fBodyBodyAccJerkMag\_mean**  corresponds to the variable 'fBodyBodyAccJerkMag-mean()' from the 'features.txt' file and corresponds to the 516 column of the x\_test.txt/X\_train.txt files 
* **fBodyBodyAccJerkMag\_std**  corresponds to the variable 'fBodyBodyAccJerkMag-std()' from the 'features.txt' file and corresponds to the 517 column of the x\_test.txt/X\_train.txt files 
* **fBodyBodyGyroMag\_mean**  corresponds to the variable 'fBodyBodyGyroMag-mean()' from the 'features.txt' file and corresponds to the 529 column of the x\_test.txt/X\_train.txt files 
* **fBodyBodyGyroMag\_std**  corresponds to the variable 'fBodyBodyGyroMag-std()' from the 'features.txt' file and corresponds to the 530 column of the x\_test.txt/X\_train.txt files 
* **fBodyBodyGyroJerkMag\_mean**  corresponds to the variable 'fBodyBodyGyroJerkMag-mean()' from the 'features.txt' file and corresponds to the 542 column of the x\_test.txt/X\_train.txt files 
* **fBodyBodyGyroJerkMag\_std**  corresponds to the variable 'fBodyBodyGyroJerkMag-std()' from the 'features.txt' file and corresponds to the 543 column of the x\_test.txt/X\_train.txt files 

## Data Transformation

Data was extracted, mapped, merged, and tranformed to get CombinedData.csv. 
* Transformation consisted of mapping y to the corrseponding factor representing the activity, 
* mapping the features.txt row column names of the X tables, 
* tranforming the feature names by replacing - with \_ and removing ()

df_tidy.csv
---------------

Is a csv file with four variables

Variables:
* **subject** The subject id derived from the subject record entry in the X\_train.txt or  X\_test.txt files
* **activity** Represent the activity, one of "LAYING", "SITTING", "STANDING", " WALKING", "WALKING\_DOWNSTAIRS","WALKING\_UPSTAIRS"
* **measurement** Repensenting the same measurents variables as given in "CombinedData.csv"
* **average** The average for each subject, activity, measurement.

## Data Transformation

* Data was melted and then Dcast to get means across each  subject, activity, measurement.
* Data was again melted to put it back into a tidy fomr 



