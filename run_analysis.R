# run_analysis.R is a utility to summarize data from smartphones 
# it combines the test and training datasets 
# and creates tidy dataset of means for each subject by activity 

# training data
train <- read.table("X_train.txt", header=F)

# training subjects 
subject <- read.table("subject_train.txt", header=F)
colnames(subject) <- "subject"
train <- cbind(train, subject)

# training activities 
activity <- read.table("y_train.txt", header=F)
colnames(activity) <- "activity"
train <- cbind(train, activity)

# test data
test <- read.table("X_test.txt", header=F)

# test subjects 
subject <- read.table("subject_test.txt", header=F)
colnames(subject) <- "subject"
test <- cbind(test, subject)

# test activities 
activity <- read.table("y_test.txt", header=F)
colnames(activity) <- "activity"
test <- cbind(test, activity)

# merge training and test data
data <- rbind(train, test)

# extract mean & stdDev for each measurement
features <- read.table("features.txt", stringsAsFactors=F, header=F)
myfeatures <- features[grep("std|mean",features$V2),]
myfeatures <- rbind(myfeatures, data.frame(V1=562, V2="subject") )
myfeatures <- rbind(myfeatures, data.frame(V1=563, V2="activity") )
mydata <- data[,myfeatures$V1]

# Use descriptive VARIABLE names
changeName <- function(xarg){tolower(gsub(pattern="\\(|\\)|-", replacement="", x=xarg))}
colnames(mydata) <- changeName(myfeatures$V2)

# label the dataset with activity names
mydata$actlab[mydata$activity == 1] <- "walk"
mydata$actlab[mydata$activity == 2] <- "walkup"
mydata$actlab[mydata$activity == 3] <- "walkdown"
mydata$actlab[mydata$activity == 4] <- "sitting"
mydata$actlab[mydata$activity == 5] <- "standing"
mydata$actlab[mydata$activity == 6] <- "laying"

### Aggegate and calc means
agg <- aggregate(mydata[,c(-80,-81,-82)],list(activity=mydata$activity, subject=mydata$subject), mean)

# write tiday data file
write.csv(agg,file="tidydata.txt")
