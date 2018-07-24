
library(ggplot2)
attach(iris)
p <- ggplot(data=iris,aes(x = Sepal.Length,y = Sepal.Width))
p + 
        geom_point(aes(colour = Species)) + 
        stat_smooth() + 
        labs(title = "Iris of Sepal.length \n According to the Sepal.Width") +
        theme_classic() + 
        theme_bw() +
        annotate("text",x=7,y=4,parse = T,label = "x[1]==x[2]",size=6, family="serif",fontface="italic", colour="darkred")


