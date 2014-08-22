# Data Dictionary
This file will attempt to provide contextual definitions for 
the two datasets presented by the run_analysis.R script.

Each dataset is saved to disk:
  * tidy_dataset.txt - a tidied versoin of the source dataset
  * tidy_dataset2.txt - a tidy dataset that aggregates the means
    of the observations in tidy_dataset.txt by activityName and subjectID

## tidy_dataset.txt
*Note: more information on the source data can be found in the
source dataset's README.md*
### Columns
  subjectID
    *Numeric*
    Denotes the person wearing the devices being measured
  
  activityName
    *Character*
    Denotes the friendly name of the activity taking place
    while the observation was made.
  
The following columns are inherited directly from the measurements in the 
source dataset. The names have been scrubbed of special characters
(replaced with underscores). These variables represent 3 axis measurements
of various devices, and are formatted as <device>_<func>_<axis>.

  tBodyAcc_mean_X
  
  tBodyAcc_mean_Y
  
  tBodyAcc_mean_Z
  
  tBodyAcc_std_X
  
  tBodyAcc_std_Y
  
  tBodyAcc_std_Z
  
  tGravityAcc_mean_X
  
  tGravityAcc_mean_Y
  
  tGravityAcc_mean_Z
  
  tGravityAcc_std_X
  
  tGravityAcc_std_Y
  
  tGravityAcc_std_Z
  
  tBodyAccJerk_mean_X
  
  tBodyAccJerk_mean_Y
  
  tBodyAccJerk_mean_Z
  
  tBodyAccJerk_std_X
  
  tBodyAccJerk_std_Y
  
  tBodyAccJerk_std_Z
  
  tBodyGyro_mean_X
  
  tBodyGyro_mean_Y
  
  tBodyGyro_mean_Z
  
  tBodyGyro_std_X
  
  tBodyGyro_std_Y
  
  tBodyGyro_std_Z
  
  tBodyGyroJerk_mean_X
  
  tBodyGyroJerk_mean_Y
  
  tBodyGyroJerk_mean_Z
  
  tBodyGyroJerk_std_X
  
  tBodyGyroJerk_std_Y
  
  tBodyGyroJerk_std_Z
  
  tBodyAccMag_mean
  
  tBodyAccMag_std
  
  tGravityAccMag_mean
  
  tGravityAccMag_std
  
  tBodyAccJerkMag_mean
  
  tBodyAccJerkMag_std
  
  tBodyGyroMag_mean
  
  tBodyGyroMag_std
  
  tBodyGyroJerkMag_mean
  
  tBodyGyroJerkMag_std
  
  fBodyAcc_mean_X
  
  fBodyAcc_mean_Y
  
  fBodyAcc_mean_Z
  
  fBodyAcc_std_X
  
  fBodyAcc_std_Y
  
  fBodyAcc_std_Z
  
  fBodyAccJerk_mean_X
  
  fBodyAccJerk_mean_Y
  
  fBodyAccJerk_mean_Z
  
  fBodyAccJerk_std_X
  
  fBodyAccJerk_std_Y
  
  fBodyAccJerk_std_Z
  
  fBodyGyro_mean_X
  
  fBodyGyro_mean_Y
  
  fBodyGyro_mean_Z
  
  fBodyGyro_std_X
  
  fBodyGyro_std_Y
  
  fBodyGyro_std_Z
  
  fBodyAccMag_mean
  
  fBodyAccMag_std
  
  fBodyBodyAccJerkMag_mean
  
  fBodyBodyAccJerkMag_std
  
  fBodyBodyGyroMag_mean
  
  fBodyBodyGyroMag_std
  
  fBodyBodyGyroJerkMag_mean
  
  fBodyBodyGyroJerkMag_std
  

## tidy_dataset2.txt
*This dataset aggregates the mean of the variables in tidy_dataset.txt
by subjectID + activityName (Cols 1:2). This reduces the rowcount substantially
(only unique subjectID+activityName combinations are present).*

### Columns
  subjectID
    *Numeric*
    Denotes the person wearing the devices being measured
  
  activityName
    *Character*
    Denotes the friendly name of the activity taking place
    while the observation was made.
  
The following columns are inherited directly from the variables in 
tidy_dataset.txt. Each variable name has been postfixed with ".aggMean"
to indicate that this is an aggregate mean of the variables in tidy_dataset.txt.

  tBodyAcc_mean_X.aggMean
  
  tBodyAcc_mean_Y.aggMean
  
  tBodyAcc_mean_Z.aggMean
  
  tBodyAcc_std_X.aggMean
  
  tBodyAcc_std_Y.aggMean
  
  tBodyAcc_std_Z.aggMean
  
  tGravityAcc_mean_X.aggMean
  
  tGravityAcc_mean_Y.aggMean
  
  tGravityAcc_mean_Z.aggMean
  
  tGravityAcc_std_X.aggMean
  
  tGravityAcc_std_Y.aggMean
  
  tGravityAcc_std_Z.aggMean
  
  tBodyAccJerk_mean_X.aggMean
  
  tBodyAccJerk_mean_Y.aggMean
  
  tBodyAccJerk_mean_Z.aggMean
  
  tBodyAccJerk_std_X.aggMean
  
  tBodyAccJerk_std_Y.aggMean
  
  tBodyAccJerk_std_Z.aggMean
  
  tBodyGyro_mean_X.aggMean
  
  tBodyGyro_mean_Y.aggMean
  
  tBodyGyro_mean_Z.aggMean
  
  tBodyGyro_std_X.aggMean
  
  tBodyGyro_std_Y.aggMean
  
  tBodyGyro_std_Z.aggMean
  
  tBodyGyroJerk_mean_X.aggMean
  
  tBodyGyroJerk_mean_Y.aggMean
  
  tBodyGyroJerk_mean_Z.aggMean
  
  tBodyGyroJerk_std_X.aggMean
  
  tBodyGyroJerk_std_Y.aggMean
  
  tBodyGyroJerk_std_Z.aggMean
  
  tBodyAccMag_mean.aggMean
  
  tBodyAccMag_std.aggMean
  
  tGravityAccMag_mean.aggMean
  
  tGravityAccMag_std.aggMean
  
  tBodyAccJerkMag_mean.aggMean
  
  tBodyAccJerkMag_std.aggMean
  
  tBodyGyroMag_mean.aggMean
  
  tBodyGyroMag_std.aggMean
  
  tBodyGyroJerkMag_mean.aggMean
  
  tBodyGyroJerkMag_std.aggMean
  
  fBodyAcc_mean_X.aggMean
  
  fBodyAcc_mean_Y.aggMean
  
  fBodyAcc_mean_Z.aggMean
  
  fBodyAcc_std_X.aggMean
  
  fBodyAcc_std_Y.aggMean
  
  fBodyAcc_std_Z.aggMean
  
  fBodyAccJerk_mean_X.aggMean
  
  fBodyAccJerk_mean_Y.aggMean
  
  fBodyAccJerk_mean_Z.aggMean
  
  fBodyAccJerk_std_X.aggMean
  
  fBodyAccJerk_std_Y.aggMean
  
  fBodyAccJerk_std_Z.aggMean
  
  fBodyGyro_mean_X.aggMean
  
  fBodyGyro_mean_Y.aggMean
  
  fBodyGyro_mean_Z.aggMean
  
  fBodyGyro_std_X.aggMean
  
  fBodyGyro_std_Y.aggMean
  
  fBodyGyro_std_Z.aggMean
  
  fBodyAccMag_mean.aggMean
  
  fBodyAccMag_std.aggMean
  
  fBodyBodyAccJerkMag_mean.aggMean
  
  fBodyBodyAccJerkMag_std.aggMean
  
  fBodyBodyGyroMag_mean.aggMean
  
  fBodyBodyGyroMag_std.aggMean
  
  fBodyBodyGyroJerkMag_mean.aggMean
  
  fBodyBodyGyroJerkMag_std.aggMean
  
