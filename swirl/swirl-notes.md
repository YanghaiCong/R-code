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
#### 4: Vectors
#### 5: Missing Values
#### 6: Subsetting Vectors
#### 7: Matrices and Data Frames
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


