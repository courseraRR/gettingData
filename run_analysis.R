
#get the essential libs
library(stringr)
library(reshape2)

run_analysis<-function(){
  if(!file.exists("./UCI HAR Dataset/")){
    #0. download and unzip the data
    url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    zip.name<-"dataSet.zip"
    download.file(url,zip.name,method="curl")
    unzip(zip.name)   
  }
  
  #Get the list of activities (as factors :) )
  df.activities<-read.table("./UCI HAR Dataset/activity_labels.txt")
  
  #2 Get the list of the featuers and extract the indices of those containing mean() or std()
  df.features<-read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=F)
  names.with.mean<-str_detect(df.features[[2]],"mean\\(\\)") 
  names.with.std<-str_detect(df.features[[2]],"std\\(\\)")
  col.indices<-which(names.with.mean | names.with.std )
  
  #prepare vector to designate the colClassess for those indices, (and omit the all other columns)
  col.classes<-rep("NULL", nrow(df.features))
  col.classes[col.indices]<-"numeric"
  
  #also prepare the corresponding names and make them slightly more readable
  col.names<-df.features[col.indices, 2]
  col.names<-str_replace_all(col.names,"-","_") # replace - with _
  col.names<-str_replace(col.names, "\\(\\)", "") #remove ugly ()
  
  #create a small helper function to read in the dataSets for both train and test
  #helper function for grabbing data
  get.Data.Set<-function(tt="train"){
    X.txt<-paste0("./UCI HAR Dataset/",tt,"/X_",tt,".txt")
    df.X<-read.table(X.txt, colClasses=col.classes)
    names(df.X)<-col.names
    Y.txt<-paste0("./UCI HAR Dataset/",tt,"/y_",tt,".txt")
    df.Y<-read.table(Y.txt)
    #3 set and label descriptive activity
    df.X$activity<-df.activities[df.Y[[1]],2] #note: df.X$activity has class factor
    subject.txt<-paste0("./UCI HAR Dataset/",tt,"/subject_",tt,".txt")
    df.subject<-read.table(subject.txt)
    df.X$subject<-df.subject[[1]]
    df.X  
  }
  
  #read in test and train and combine and save the result
  df.train<-get.Data.Set("train")
  df.test<-get.Data.Set("test")
  
  #1 "merge" row-wise the two datasets r
  df.combined<-rbind(df.train, df.test)
  write.csv(df.combined, file="combinedData.csv")
  
  #5 average
  df.m<-melt(df.combined, id=c("subject", "activity") )
  df.ave<-dcast(df.m, subject + activity ~ variable, mean)
  #and tidy up
  df.tidy<-df.tidy<-melt(df.ave, id=c("subject", "activity"))
  names(df.tidy)<-c("subject", "activity", "measurement", "average")
  #and save for upload
  write.csv(df.tidy, "df_tidy.csv")
  
  #return data.frames
  list(df.combined=df.combined, df.tidy=df.tidy) 
}

#execute the function
results<-run_analysis()
