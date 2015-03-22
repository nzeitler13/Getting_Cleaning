## downlaod and craete the dataset for just means
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## check for presence of needed folder
if (!file.exists("UCI HAR Dataset")){
	setInternet2(use = TRUE)
	download.file(url, "data.zip", method = "internal")
	unzip ("data.zip")
	}
if (file.exists("data.zip")&!file.exists("UCI HAR Dataset")) unzip ("data.zip")
## read in all necessary data sets and return to main folder
setwd("UCI HAR Dataset")
setwd("test")
xtest <- read.table("X_test.txt",header=FALSE)
ytest <- read.table("Y_test.txt",header=FALSE)
setwd("../")
setwd("train")
xtrain <- read.table("X_train.txt",header=FALSE)
ytrain <- read.table("Y_train.txt",header=FALSE)
setwd("../")
## read in label and activity documents
label <- read.table("features.txt",header=FALSE)
label <- label[,2]
label <- as.character(label)
actlabel <- read.table("activity_labels.txt",header=FALSE)
##combine data sets into one set and extract the average and standard deviation data
test <- cbind(ytest,xtest)
train <- cbind(ytrain,xtrain)
TT <- rbind(test,train)
datainterest <- c(1:7,42:47,82:87,122:127,162:167,202,203,215,216,228,229,241,242,254,255,267:272,346:351,374:376,425:430,453:455,504,505,517,518,530,531,543,544,556:562)
TTint <- TT[,datainterest]
## label the data set with labels
labelint <- label[datainterest[2:80]-1]
names(TTint) <- c("ActN",labelint)
## label the activities
activity <- TTint[,1]
for(i in 1:6) {
	activity <- gsub(as.character(i),actlabel[i,2],activity)
}
TTfin <- cbind (activity,TTint)
## TTfin is final non averaged data set, next we will create a new data set taking the averages of 
## each observation for each activity.
fin <- data.frame(matrix(nrow=6,ncol=81))
fin[1:6,1] <- 1:6
fin[1:6,2] <- as.character(actlabel[,2])
for (i in 1:6) {
	temp <- TTfin[TTfin$ActN == as.character(i),]
	store <- colMeans(temp[3:81])
	fin[i,3:81] <- store
}
names(fin) <- c("ActN","Activity",labelint)
str(fin)

	