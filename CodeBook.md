CodeBook
=====
the CodeBook for the data run_analysis.R.

Description
-------
X.train: values of all the variables in the training set.

y.train: activity labels in the training set.

subject.train: subjects in the training set.

X.test: values of all the variables in the test set.

y.test: activity labels in the test set.

subject.test: subjects in the test set.

step 1:
-------
Merge Train data 
Merge test data
Merge both test and train data

variables in wear:

*  subject: refers to each subject.
   
*  activity: WALKING; WALKING_UPSTAIRS; WALKING_DOWNSTAIRS; SITTING; STANDING; LAYING.
   
*  others: kinds of measurements for each activity and each subject.

step 2&3&4:
-------
mean.std.index: indicates whether a variable is a mean/std measurement.


step 5:
-------
subject.activity: Final tiny data asked by step 5

variables in subject.activity:

*   subject: Each subject.
*   activity: WALKING; WALKING_UPSTAIRS; WALKING_DOWNSTAIRS; SITTING; STANDING; LAYING.
