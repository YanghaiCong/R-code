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
#### 7:Matrices and Data Frames
#### 8: Logic
#### 9: Functions
#### 10: lapply and sapply
#### 11: vapply and tapply
#### 12: looking at Data
#### 13: Simulation
#### 14: Dates and Times
#### 15: Base Graphics


> 
