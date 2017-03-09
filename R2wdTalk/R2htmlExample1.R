#using R2HTML for console output
library(R2HTML)

HTMLStart(outdir=getwd(),file="R2htmlExample1",echo=TRUE)
 data(iris)
 head(iris)
 
 bp <- boxplot(Petal.Width ~ Species, data=iris)
 HTMLplot()
 
 aov1 <- aov(Petal.Width ~ Species, data=iris)
 summary(aov1)
HTMLStop()