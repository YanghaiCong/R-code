# ggplot2 learning
# http://r-statistics.co/Complete-Ggplot2-Tutorial-Part1-With-R-Code.html

library(ggplot2)

# Part 1: Introduction To ggplot2
# covers the basic knowledge about constructing simple ggplots and modifying the components and aesthetics.

# 1. Understanding the Ggplot Syntax
## ggplot works with dataframes
## adding more layers

# Setup
options(scipen=999)  # turn off scientific notation like 1e+06

data("midwest", package = "ggplot2")  # load the data

# Init Ggplot
ggplot(midwest, aes(x=area, y=poptotal))  # area and poptotal are columns in 'midwest'
# any information that is part of the source dataframe has to be specified inside the aes() function.

# 2. How to Making a Simple Scatterplot

## make a scatterplot on top of the blank ggplot by adding points using a geom layer called geom_point.
ggplot(midwest, aes(x=area, y=poptotal)) + geom_point()

## add a smoothing layer using geom_smooth(method='lm')

g <- ggplot(midwest, aes(x=area, y=poptotal)) + geom_point() + geom_smooth(method="lm")  # set se=FALSE to turnoff confidence bands
plot(g)

# 3. How to Adjust the X and Y Axis Limits

#   Method 1: By Deleting the Points Outside the Range
## This will change the lines of best fit or smoothing lines as compared to the original data.

g <- ggplot(midwest, aes(x=area, y=poptotal)) + geom_point() + geom_smooth(method="lm")  # set se=FALSE to turnoff confidence bands

# Delete the points outside the limits
g + xlim(c(0, 0.1)) + ylim(c(0, 1000000))   # deletes points
# g + xlim(0, 0.1) + ylim(0, 1000000)   # deletes points

#   Method 2: Zooming In
## The other method is to change the X and Y axis limits by zooming in to the region of interest without deleting the points.
g <- ggplot(midwest, aes(x=area, y=poptotal)) + geom_point() + geom_smooth(method="lm")  # set se=FALSE to turnoff confidence bands

# Zoom in without deleting the points outside the limits. 
# As a result, the line of best fit is the same as the original plot.
g1 <- g + coord_cartesian(xlim=c(0,0.1), ylim=c(0, 1000000))  # zooms in
plot(g1)

# 4. How to Change the Title and Axis Labels
# 5. How to Change the Color and Size of Points
#   Change the Color and Size To Static
#   Change the Color To Reflect Categories in Another Column
# 6. How to Change the X Axis Texts and Ticks Location
#   Change the X and Y Axis Text and its Location?
#   Write Customized Texts for Axis Labels, by Formatting the Original Values?
#   Customize the Entire Theme in One Shot using Pre-Built Themes?



# Part 2: Customizing the Look and Feel
# is about more advanced customization like manipulating legend, annotations, multiplots with faceting and custom layouts

# Part 3: Top 50 Ggplot2 Visualizations 
# The Master List, applies what was learnt in part 1 and 2 to construct other types of ggplots such as bar charts, boxplots etc.





