# stop R using exponential notation and keep 4 valid digits
options("scipen"=100, "digits"=4)

# a fast package to read xlsx file
install.packages("readxl")

# for error like "Error in plot.new() : figure margins too large", change the following parameter
par(mar=c(1,1,1,1))
# default par(mar=c(5.1,4.1,4.1,2.1))
