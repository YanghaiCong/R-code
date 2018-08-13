# 7 r programming structures

i<-1
while (i<=10) {
      i<-i+4
}
print(i)

i<-1
while (TRUE) {
      i<-i+4
      if (i>10) break
}
print(i)

i<-1
repeat {
      i<-i+4
      if (i>10) break
}
print(i)



sim <- function(nreps) {
      commdata <- list()
      commdata$countabsamecomm <- 0 
      for (rep in 1:nreps) { 
            commdata$whosleft <- 1:20
            commdata$numabchosen <- 0
            
            commdata <- choosecomm(commdata,5)

            if (commdata$numabchosen > 0) next 
 
            commdata <- choosecomm(commdata,4) 
            if (commdata$numabchosen > 0) next 

            commdata <- choosecomm(commdata,3)
      } 
      print(commdata$countabsamecomm/nreps)
      print(commdata)
}


choosecomm <- function(comdat,comsize) {

      committee <- sample(comdat$whosleft,comsize) 

      comdat$numabchosen <- length(intersect(1:2,committee)) 
      if (comdat$numabchosen == 2) 
            comdat$countabsamecomm <- comdat$countabsamecomm + 1 

      comdat$whosleft <- setdiff(comdat$whosleft,committee) 
      return(comdat)
}




# not finished
my_sim<-function(nrep){
      
      mySimList<-list()
      mySimList$sameCount<-0
      
      for (i in 1:nrep){
            mySimList$left<-1:20
            mySimList$flag<-0
            
            mySimList<-chsCom(mySimList,5)
            if(mySimList$flag>0) next

            mySimList<-chsCom(mySimList,4)
            if(mySimList$flag>0) next
            
            mySimList<-chsCom(mySimList,3)
      }
      return(mySimList$sameCount/nrep)
}

chsCom<-function(mySimList,num){
      selected<-sample(mySimList$left,size = num)
      if(length(intersect(x = 1:2, y = selected)) == 0){
            mySimList$sameCount<-mySimList$sameCount+1
            mySimList$left<-setdiff(mySimList$left,selected)
            mySimList$flag<-1
      }
      return(mySimList)
}












