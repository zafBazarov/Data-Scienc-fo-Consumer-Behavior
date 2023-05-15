#####################
## Plotting with R

# Scatter plots

# Easy way

plot(cars) # for data frames with two variables


# with x and y 

plot(x=cars$speed, y=cars$dist)

# Specifying labels, a titel and a subtitle

plot(cars, xlab="Speed", ylab="Distance",
     main="Cars", sub="scatterplot",
     col="blue", pch=3)                   # pch means +



######################
## Histograms

# Histograms show how values in a numeric vector are distributed:

hist(cars$speed)

hist(cars$dist)

# we can specify the breaks yourself via
hist(cars$speed, breaks = 2)   # a value (how many breaks)

hist(cars$speed, breaks = c(0,5,10,20,27,30))  # a vector


# A boxplot shows a ll the quartiles (including minimum, maximum and median) and
# potential outliers.

boxplot(cars)

boxplot(cars$speed)

# dotchart

dotchart(cars$speed, col="red", pch=3   )

# barplot
counts = table(cars$speed)
barplot(counts)


# line plot

plot(cars, type="o", col="yellow")

# pie chart

pie(cars$speed)

pie_chart <- tail(cars$speed)

pie_chart

pie(pie_chart)

# density plot

plot(density(mtcars$mpg))

# Saving plots


bmp("awesomegraph.bmp")
jpeg("awesomegraph.jpg")
pdf("awesomegraph.pdf")
png("awesomegraph.png")
possibleExtends("awesomegraph.ps")
win.metafile("awesomegraph.wmf")

###########################################
## Task
#############################################

# Build a histogram (including breaks, title and axis labels) and a scatter plot with red points
# data footsize.csv

library(readr)
footsize <- read_csv("footsize.csv")
View(footsize)

str(footsize)

# a histogram
hist(footsize$length, breaks = c(140, 150, 160, 170, 180, 190, 200, 210, 220),
     xlab = "Footsize length", ylab = "Frequency",
     main="HIstogram of the footsize by gender")

# a scatter plot
plot(x=footsize$length, y=footsize$footsize, col="red", pch=20)


## Install these libraries
install.packages(c("ggplot2","plyr","markovchain","ggmap",
                   "arules","arulesViz","c50","Bayesm",
                   "NMF","gtrendsR","dplyr","ggmap","Grid",
                   "streamR","stringr","Rcurl","ROAuth"))

#  Import the dataset "students.csv" and check the levels that occur in the 
# variable "survey_time"

students <- read_csv("students.csv")

str(students)

# try to convert the data frame into a matrix:

students[,"survey_time"] <- as.factor(students[,"survey_time"])

levels(students$survey_time)

as.matrix(students)
# Converting to a matrix transforms all data into characters, 
# because a matrix can only hold one data type at once.
students_2 <- students[,c("age","gender")]
as.matrix(students_2)

#Retrieving different values

students$size # the column with size

students[51,] # student number 51 (complete row)

students[10:15,"gender"] # the gender of the students 10 to 15

students[students$age>25,]  # all students who are older than 25


## Draw a histogram for the ages and a scatter plot for shoe_sizes and sizes.

hist(students$age, breaks=c(10, 15, 20, 25, 30, 35, 40)) # a histogram

plot(x=students$shoe_size, y=students$size, col="green", pch=19) # a scatter plot
