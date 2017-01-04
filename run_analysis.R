
  Merge<-function()#проблема - массивы с ускорением при таком считывании становятся разной размерности 
  {
    X_train<-read.table( ".\\train\\X_train.txt",  sep = "", fill=TRUE)
    X_test<-read.table( ".\\test\\X_test.txt",  sep = "", fill=TRUE)
    Y_train<-read.table( ".\\train\\Y_train.txt",  sep = " ", fill=TRUE)
    Y_test<-read.table( ".\\test\\Y_test.txt",  sep = " ", fill=TRUE)
    subject_train<-read.table( ".\\train\\subject_train.txt",  sep = " ", fill=TRUE)
    subject_test<-read.table( ".\\test\\subject_test.txt",  sep = " ", fill=TRUE)
    activity_labels<-read.table( ".\\activity_labels.txt",  sep = " ", fill=TRUE) 
  features<-read.table( ".\\features.txt",  sep = " ", fill=TRUE)  #reading datasets
  Frame<-rbind(cbind(X_test,Y_test,subject_test),cbind(X_train,Y_train,subject_train))
  #Merging training and testing datasets to create one dataframe
  names(Frame)<-c(as.character(features$V2),"Activity","Subject")
  #labelling the data set with descriptive variable names
  Frame1<-Frame[,c(grep ("mean()",names(Frame)),grep ("std()",names(Frame)),562,563)] 
  #extracting only the measurements of mean and standard deviation
  for(i in 1:6)
  {
 Frame1$Activity<-gsub(activity_labels$V1[i],activity_labels$V2[i],Frame1$Activity)
  #assigning names of activities to the columns of dataset
  }
  Frame2<-Frame1[1:180,]
  Frame3<-split(Frame1,list(Frame1$Subject,Frame1$Activity))
  
  for(j in 1:180)
  {
   Frame2[j,]<-c(colMeans(Frame3[[j]][,1:79]),Frame3[[j]]$Activity[1],Frame3[[j]]$Subject[1])
  }
  #making a new dataset Frame2 with variable means split by activity and subject
  write.table(Frame2,"tidydata.txt",sep="\t",row.names = FALSE)
  }