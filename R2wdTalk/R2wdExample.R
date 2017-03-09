## simple R2wd example

library(R2wd)

wdGet()
wdTitle("Simple example of using R2wd")

wdSection("Introduction")

data(iris)
wdBody(c("Consider Fisher's famous iris data set.",
   "It has sepal and petal length and width of",
   sprintf("a total of %d flowers from %d species.", nrow(iris), nlevels(iris$Species))))

wdBody("The first few lines of the data are shown in Table 1.")
wdTable(head(iris), caption="Data for the first 6 flowers.")


wdSection("Analyzing petal widths")
wdBody(c("Figure 1 shows a boxplot of petal widths by species",
         " - there is a large apparent separation of this measurement."))
wdPlot(Petal.Width ~ Species, data=iris, plotfun=boxplot, width=6, height=4)

wdBody("The separation can be formally confirmed via ANOVA:")

aov1 <- aov(Petal.Width ~ Species, data=iris)
wdVerbatim(capture.output(summary(aov1)))

wdSave(file.path(getwd(),"R2wdExample.docx"))


