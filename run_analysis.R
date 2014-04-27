# Read, load and append train data sets, we are not using Inertial Signals
subject_train <- read.table("train/subject_train.txt")
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
train_set <- cbind(subject_train, y_train, X_train)

# Read, load and append test data sets, we are not using Inertial Signals
subject_test <- read.table("test/subject_test.txt")
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
test_set <- cbind(subject_test, y_test, X_test)

# Row append test and train set rows
allData <- rbind(train_set, test_set)


# Load feature names
features <- read.table("features.txt")
names(allData) <- c('subject', 'activityNumber', as.character(features$V2))

# Extracts only the measurements on the mean and standard deviation for each measurement.
filteredData <- allData[, c(1, 2, grep("-mean\\(\\)|-std\\(\\)", names(allData)))]

# Uses descriptive activity names to name the activities in the data set
activity <- read.table("activity_labels.txt")
names(activity) <- c('activityNumber', 'activity')
filteredData <- merge(activity, filteredData, all = TRUE)
filteredData <- filteredData[,rep(2:dim(filteredData)[2])]

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
library(reshape2)
variableAvg <- melt(filteredData, id = c('activity', 'subject'))
variableAvg <- dcast(variableAvg, activity + subject ~ variable, mean)

# Exports the tidy dataset
write.table(variableAvg, "tidyDataSet.txt")