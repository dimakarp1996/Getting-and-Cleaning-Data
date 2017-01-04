# CodeBook

This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

## The data source

* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## The data

The part of the datacet used in this work includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.


## Transformation details

There are 5 parts:

1. Merging the training sets(names:X_train,Y_train,subject_train) and the test sets(names:X_test,Y_test,subject_test) to create one data set(name: Frame).
2. Using descriptive activity names(name:Features) to name the activities in the data set(name:Frame)
2. Extracting only the measurements on the mean and standard deviation for each measurement(into the dataframe named Frame1).
4. Appropriately labels the data set(name:Frame1) with descriptive activity names.
5. Creates a second, independent tidy data set(name:Frame2) with the average of each variable for each activity and each subject.

## How ```run_analysis.R``` implements the above steps:

* Loads both test and train data
* Loads the features and activity labels.
* Merges datasets, then subsets and labels the merged dataset.
* Extracts the means and standard deviations into the new dataset.

## Instruction

1. Open file ("run_analysis.R")
2. Run '''  source("run_analysis.R")  ''',
3. Type ''' Merge() '''
I will generate a new folder "UCI HAR Dataset" in your working directory and a file ```tidydata.txt``` in this folder

## Dependencies

```run_analysis.R``` file will help you to install the dependencies automatically. 
