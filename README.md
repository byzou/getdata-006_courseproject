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
