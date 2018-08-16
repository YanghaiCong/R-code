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

# repeat
i<-1
repeat {
    i<-i+4
    if (i>10) break
}
print(i)

# choose 5 people for committe A from 20 people
# see which happens:
## if 1&2, then add one to the total, start over
## if 1|2, then start over
## else, then
### choose 4 people from the remaining 15 people
### see which happens:
#### if 1&2, then add one to the total, start over
#### if 1|2, then start over
#### else, then
##### choose 3 people from the remaining 11 people
##### see which happens:
###### if 1&2, then add one to the total, start over
###### if 1|2, then start over
###### else, start over

sim<-function(nreps){
    committeeData<-list()
    committeeData$countABSameCommittee<-0
    
    for(i in 1:nreps){
        committeeData$whoIsLeft<-1:20
        committeeData$numberOfAB<-0 
        
        committeeData<-formCommittee(committeeData,5)
        if(committeeData$numberOfAB>0) next
        
        committeeData<-formCommittee(committeeData,4)
        if(committeeData$numberOfAB>0) next
        
        committeeData<-formCommittee(committeeData,3)
    }
    print(committeeData$countABSameCommittee/nreps)
}


formCommittee<-function(committeeData,numberOfCommitteeMembersToChoose){
    chosen<-sample(committeeData$whoIsLeft,numberOfCommitteeMembersToChoose)
    committeeData$numberOfAB<-length(intersect(1:2,chosen))
    if(committeeData$numberOfAB==2)
        committeeData$countABSameCommittee<-committeeData$countABSameCommittee+1
    committeeData$whoIsLeft<-setdiff(committeeData$whoIsLeft,chosen)
    return(committeeData)
}













