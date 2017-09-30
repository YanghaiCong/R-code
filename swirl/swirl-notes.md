# swirl

## 1: R Programming: The basics of programming in R
### R Programming
#### 1: Basic Building Blocks

> 1+1

> a <- c(c(1,2,3),4)

#### 2: Workspace and Files

> getwd()

> ls()

> list.files()

> args(list.files)

> old.dir <- getwd()

> dir.create('testdir')

> setwd('testdir')

> file.create('mytest.R')

> file.exists('mytest.R')

> file.info('mytest.R')

> file.rename(from = 'mytest.R', to = 'mttest2.R')

> file.copy(from = 'mytest2.R', to 'mytest3.R')

> file.path('folder1','folder2')

Write the path of folder system

> dir.create(file.path('testdir2','testdir3'), recursive = TRUE)

> dir('testdir2')

setwd(old.dir)

#### 3: Sequences of Numbers

> 1:10

> seq(0,10,b = 2)

> rep(0, times = 10)

> rep(c(0,1,2), times=10)

[1] 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2

> rep(c(0,1,2),each=10)

[1] 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2


#### 4: Vectors

Done!

#### 5: Missing Values

Type 1

> NA == NA

[1] NA (Not Available)

Type 2

> Inf-Inf

or

> Inf/Inf

[1] NaN (Not a Number)


#### 6: Subsetting Vectors

> x[is.na(x)]

> x[!is.na(x)]

> x[which(is.na(x))]

> x[x>0]

> x[c(1,3,5)]

> vect<-c(foo=1,bar=2,norf=3)

> names(vect)

> vect["foo"]

> vect[c("bar","norf")]

#### 7: Matrices and Data Frames

> my_vector<-1:20

> dim(my_vector)<-c(4,5)

> class(my_vector)

> my_matrix<-matrix(data=1:20,nrow=4,ncol=5)

> my_data<-data.frame(Patient=c("Two","Gina","Kelly"),Test=c(0,3,1))

> class(my_data)

#### 8: Logic

> 6 == 7

> !TRUE

> TRUE & c(TRUE, FALSE, FALSE)

> TRUE && c(TRUE, FALSE, FALSE)

> isTRUE(TRUE)

> identical('twins','twins')

> xor(TRUE, FALSE) # TRUE

> xor(TRUE, TRUE) # FASLE

> xor(FALSE, FALSE) # FALSE

> 8 == 8.0 # TRUE

> which(c(TRUE, FALSE, TRUE, FALSE))

> any(c(TRUE, FALSE, TRUE, FALSE))

> all(c(TRUE, FALSE, TRUE, FALSE))

#### 9: Functions

> boring_function <- function(x){
>   x
> }



> remainder <- function(num, divisor=2){
>   num%%divisor
> }

argument "divisor" has a default value, so it can be used as:

> remainder(num = 11)

or as:

> remainder(num = 11, divisor = 3)


> evaluate <- function(func, dat){
>   func(dat)
> }

argument "func" is a function

> evaluate(mean,c(1,2,3,4,5))

paste("Programming", "is", "fun!")


> telegram <- function(...){
>   paste("START", ..., "STOP")
> }

using "..." (ellipses) as argument

> telegram("Hi, there")


> mad_libs <- function(...){

>   args <-list(...)

>   place <- args[["place"]]

>   adjective <- args[["adjective"]]

>   noun <- args[["noun"]]

>   paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")

> }

using "..." as argument, and using list to host the arguments

> mad_libs(place = "Shijiazhuang", adjective = "funny", noun = "dog")


> "%p%" <- function(first, second){
>   paste(first, second)
> }

> "I" %p% "love" %p% "R!"

#### 10: lapply and sapply
#### 11: vapply and tapply
#### 12: looking at Data
#### 13: Simulation
#### 14: Dates and Times
#### 15: Base Graphics



#### Others

> sample(c(1,3,24,12,4),3) # sampling three items from c(1,3,24,12,4)

> paste(arg1,arg2,..., sep=" ", collapse=NULL)

"collapse" tells you if you want to paste all the string into ONE

arg1, arg2, ... will parallelly be pasted together! like this:

arg1 arg2

1    a

2    b

3    c

4    d




