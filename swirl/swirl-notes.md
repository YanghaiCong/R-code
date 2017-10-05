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

Each of the Xapply functions will SPLIT up some data into smaller pieces, APPLY a function to each piece, then COMBINE the results.

| The lapply() function takes a list as input, applies a function to each
| element of the list, then returns a list of the same length as the original
| one. Since a data frame is really just a list of vectors (you can see this
| with as.list(flags)), we can use lapply() to apply the class() function to
| each column of the flags dataset.

> cls_list <- lapply(flags,class)

The above command will reture a list containing the classes of each column in dataframe flags

> as.character(cls_list)

The above command will transform the list into a vector

> cls_vect<-sapply(flags,class)

The above command will return a "s"implied version the lapply function, in this case, it will be a vector

> lapply(flag_colors,sum)

> lapply(flag_colors,mean)

The above two lines return lists

> sapply(flag_colors,sum)

> sapply(flag_colors,mean)

The above two lines return vectors

> shape_mat<-lapply(flag_shapes, range)

The above line returns a list

> shape_mat<-sapply(flag_shapes, range)

The above line returns a matrix

> unique_vals<-lapply(flags,unique)

The above line returns a list

> unique_vals<-sapply(flags,unique)

The above line returns a matrix (the result cannot be further simplied)

> lapply(unique_vals,function(elem) elem[2])

The above line returns the second element in each row (the function is a self-defined function)

#### 11: vapply and tapply

> vapply(flags,unique,numeric(1))

for the above command, if the numbers of items in each vector a1re the same, then 

> vapply(flags,class,character(1))

the above command will return a vector for sure

vapply needs you to specify the returned value: vapply is similar to sapply, but has a pre-specified type of return value, so it can be safer (and sometimes faster) to use.

> tapply(my_dataframe$x,my_dataframe$group,mean)

tapply: apply a function to each cell of a grouped array, that is to each group of values given by a unique combination of the levels of certain factors.

Usage: tapply(X, grouping factor, FUN = NULL)

Apply a function to each cell of a ragged array, that is to each (non-empty) group of values given by a unique combination of the levels of certain factors.

#### 12: looking at Data

> ls()

list all the objects in the working environment

> class(plants)

show class of object "plants"

> dim(plants)

show dimension of object "plants"

> nrow(plants)

show number of rows of object "plants"

> ncol(plants)

show number of columns of object "plants"

> object.size(plants)

show how much space the plants is occupying in memory

> names(plants)

show the column names

> head(plants)

> head(plants, 10)

show the top 6 or 10 lines of the object "plants"

> tail(plants)

> tail(plants)

show the bottom 6 or 10 lines of the object "plants"

> summary(plants)

summarize each columns

> table(plants$column_1)

show the distribution of the charactor/factor vector column "column"

> str(plants)

show the structure of ...

#### 13: Simulation (random number generation)

> sample(1:6,4,replace=TRUE) 

roll a dice for 4 times

> sample(LETTERS)

rearrange the order of letters in LETTERS

> rbinom(n=1, size=100, prob=0.7) 

Binomial Distribution: the above command will return one value
A binomial random variable represents the number of 'successes' (heads) in a given number of independent 'trials' (coin flips).

> rbinom(n=100, size=1, prob=0.7)

Binomail Distribution: the above command will return a vector with 100 numbers

> rnorm(10)

gets 10 normal distributed numbers with mean = 0,  deviation =1

> rnorm(n=10, mean=100,sd=25)

> rpois(n=5, lambda=10)

gets 5 random poison distributed number with mean = 10

> my_pois<-replicate(100,rpois(5,10))

> cm<-colMeans(my_pois)

> hist(cm)

"cm" follows a normal distribution: it is because of CLT
In probability theory, the central limit theorem (CLT) establishes that, in most situations, when independent random variables are added, their properly normalized sum tends toward a normal distribution (a bell curve) even if the original variables themselves are not normally distributed. 

#### 14: Dates and Times

| Dates are represented by the 'Date' class and times are
| represented by the 'POSIXct' and 'POSIXlt' classes.
| Internally, dates are stored as the number of days since
| 1970-01-01 and times are stored as either the number of
| seconds since 1970-01-01 (for 'POSIXct') or a list of
| seconds, minutes, hours, etc. (for 'POSIXlt').

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




