## simple R2HTML example
library(R2HTML)

HTMLInitFile(outdir=getwd(), filename="R2htmlExample2")


HTML.title("Simple example of using R2HTML")

HTML.title("Introduction", HR=3)

data(iris)
HTML( sprintf("Consider Fisher's famous iris data set.
   It has sepal and petal length and width of
   a total of %d flowers from %d species.", 
   nrow(iris), nlevels(iris$Species)))

HTML("The first few lines of the data are shown in Table 1.")
HTML(head(iris), caption="Data for the first 6 flowers.")


HTML.title("Analyzing petal widths", HR=3)
HTML("Figure 1 shows a boxplot of petal widths by species -
   there is a large apparent separation of this measurement.")
boxplot(Petal.Width ~ Species, data=iris)
HTMLplot(Caption="Variation of petal width by species", Width=600, Height=400)

HTML("The separation can be formally confirmed via ANOVA:")

aov1 <- aov(Petal.Width ~ Species, data=iris)
HTML(summary(aov1))

HTMLEndFile()


