complete<-function(directory,id=1:332){
  directory<-list.files("/Users/willsong/Desktop/zaizai/R programming in data science/specdata",pattern = NULL)
  b<-c()
  m=1
  for (i in id) {
    
    x<-read.csv(directory[i])
    y<-as.integer(!is.na(x[,2]))
    z<-as.integer(!is.na(x[,3]))
    m=m+1
    if(sum(y)<=sum(z)){
      a<-cbind(i,sum(y))
      b<-rbind(b,a)
    }else{
      a<-cbind(i,sum(z))
      b<-rbind(b,a)
    }
  }
  colnames(b)<-c("id","nobs")
  print(as.data.frame(b))
}
  