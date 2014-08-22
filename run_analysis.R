
# This script prepares a tidy dataset from the partialy processed data
# in "getdata-projectfiles-UCS HAD Dataset.zip"

# this script must be run from the same folder 
# as  "getdata-projectfiles-UCS HAD Dataset.zip"
#setwd("C:\\Users\\tommy\\getdata-006\\course_project")
#setwd(".")

####################################

# handle package dependencies
this.deps <- c("data.table", "plyr", "reshape2")
needed <- this.deps[!(this.deps %in% installed.packages()[,"Package"])]
if (length(needed)) install.packages(needed)

library(data.table)
library(plyr)
library(reshape2)

run_analysis <- function(zip_path="getdata-projectfiles-UCI HAR Dataset.zip") {
# unzip the data
unzip(zip_path, overwrite=TRUE)

# extract the common datasets
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt",
				col.names = c("activityID", "activityName"))
features <- read.table("UCI HAR Dataset/features.txt")

# extract the TRAIN datasets
x_train <- read.table("UCI HAR Dataset/train/x_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt",
				col.names = c("activityID"))
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",
				col.names = c("subjectID"))

# extract the TEST datasets
x_test <- read.table("UCI HAR Dataset/test/x_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt",
				col.names = c("activityID"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",
					col.names = c("subjectID"))

# apply the features names as cols for X datasets
colnames(x_train) <- features$V2
colnames(x_test) <- features$V2

# merge activity_lables to y_train and y_test
y_train <- merge(y_train, activity_labels, by="activityID")
y_test <- merge(y_test, activity_labels, by="activityID")

# bind subjects to each X set
x_test <- cbind(subject_test, x_test)
x_train <- cbind(subject_train, x_train)

# cbind x & y
train_dataset <- cbind(x_train, y_train)
test_dataset <- cbind(x_test, y_test)

# rbind train & test
full_dataset <- rbind(train_dataset, test_dataset)

# subset the columns to only mean and std deviation variables
col_split <- full_dataset[, grepl("-(mean|std)\\(\\)", colnames(full_dataset)) ]

# re-add pretty activity names, subjects
col_split <- cbind(activityName = full_dataset$activityName, col_split)
col_split <- cbind(subjectID = full_dataset$subjectID, col_split)

# cleanup the column names (remove ())
colnames(col_split) <- gsub("\\(\\)","", colnames(col_split))
colnames(col_split) <- gsub("-","_", colnames(col_split))

# order by set by subject, activity
col_split <- col_split[ with(col_split, order(subjectID, activityName)), ]

# write it to disk
write.table(col_split, file = "tidy_dataset.txt", quote=FALSE, 
		row.names = FALSE, sep="\t")

df_melt <- melt(col_split, id=colnames(col_split[1:2]))
df_cast <- dcast(df_melt, subjectID+activityName ~ variable, mean)
colnames(df_cast)[3:length(df_cast)] <- paste( colnames(df_cast)[ 3:length(df_cast) ], ".aggMean", sep="" )

# write it to disk
write.table(df_cast, file = "tidy_dataset2.txt", quote=FALSE, 
		row.names = FALSE, sep="\t")

df_cast
}
