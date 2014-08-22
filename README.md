# getdata-006 courseproject
This repo contains the necessary data and scripts to complete 
the course project for https://class.coursera.org/getdata-006.

## Instructions
1. clone this repo
2. in r studio/console load the contents of run_analysis.R
  by executing source("run_analysis.R")
3. optional: setwd for the R console session to the working
  git repo that contains the file: getdata-projectfiles-UCI HAR Dataset.zip
4. execute the funtion run_analysis(zip_path=".")
  This takes an optoinal argument to the zip file from this repo.
  If it is not provided, the zip file needs to be in the current working dir.

## Data Tidying Process Explained
run_analysis.R performs data tidying operations on the source zip. The procedure is as follows:
### tidy_dataset.txt
1. data source train and test sets have been combined
2. data source activitity friendly names have been merged 
3. data source subjects have been combined into dataset
4. all "features" names in data source have been mapped to header names for the observations
5. all variables not matching the patterns containing "mean" or "std" have been removed
6. all feature names (column headings) have been normalized to remove special
  characters and have been replaced with _.
7. resulting set has been written to tab separated text, no quoting

### tidy_dataset2.txt
1. beginning with the dataset described above
2. the variables (all columns except subjectID & activityName) have
  been aggregated and had their mean computed
3. this reduces the rowcount to match distinct subjectID + activityName pairs
4. this was accomplished using reshape2::dclass()
5. each variable has had its heading postfixed with ".aggMean" to indicate that this is an aggergate value.
6. resulting set has been writen to tab separated text, no quoting

## Files
* run_analysis.R
  * usage: run function run_analysis()
  * artifacts: execution produces a tidy dataset file named: tidy_dataset.txt
  * returns: data.frame containing aggregate means for each variable in tidy_dataset.txt
* getdata-projectfiles-UCI HAR Dataset.zip
  * contains all source data that is processed by run_analysis.R
  * contains some data descriptions of raw data in README.txt
* README.md
  * this file
* tidy_dataset.txt
  * a previously produced tidy dataset from run_analysis.R
* tidy_dataset2.txt
  * a tidy dataset that aggregates the measures in tidy_dataset.txt
* DATA_DICTIONARY.md
  * markdown file describing the tidy datasets above, and the 
  values contained within.
