pollutantmean<-function(directory,pollutant,id=1:332){
  directory<-list.files(path = "/Users/willsong/Desktop/zaizai/R programming in data science/specdata",pattern = NULL)
  y<-data.frame()
  i<-min(id)
  if(pollutant=="sulfate"){
    
    while (i <= max(id)) {
      x<-rbind(read.csv(directory[i]))
      y<-rbind(x,y)
      i=i+1
    }
    z<-mean(y[,2],na.rm = T)
  }
  if(pollutant=="nitrate"){
    
    while (i <= max(id)) {
      x<-rbind(read.csv(directory[i]))
      y<-rbind(x,y)
      i=i+1
    }
    z<-mean(y[,3],na.rm = T)
  }
  print(z)
  print(i)
}
