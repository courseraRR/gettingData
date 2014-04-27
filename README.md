This work is done for the coursera course
Getting and Cleaning Data
by Jeff Leek, Roger D. Peng, Brian Caffo, PhD


To run the packages stringr and reshape2 should be installed, then source run_analysis.R.

This will call the run_analysis function which will open the data files (if they exist and 
resided UCI Har dataset directory, otherwise if the directory is missing it will attempt to download and unzip the required files. Once the files are available, the function will save 2 csv files, df_tidy.csv, and combindedData.csv.
The script calls the run_analysis function and assigns the return value as results. results is a named list containg two data frames, df.tidy and df.combined which may be inspected at your leisure.

The results are completely public, free.
