
##########################################
## Data Visualization
##############################################

# Libraries

library(ggplot2)

library(help = "datasets")
# How to make better Charts with ggplot2

# To build a graphical object with ggplot2

nice.pic <- ggplot (cars)

# Specify the geometric function

nice.pic+ geom_function(mapping = aes(mappings))

# Alternative

ggplot(cars, aes(x=speed, y=dist)) + geom_point()

## Some basic arguments for geom_points()

ggplot(cars, aes(x=speed, y=dist))  
+ geom_point( 
  shape=2,        # defines the size of the points
  color="red",    # defines the filling color, also relevant for bar plots
  size=3)         # defines the symbol used for plotting points


## Layers
# You can add more than one layer (graphic function) to your ggplot object to plot.
# Some geometric functions to build layers

geom_point()  # Draw values as points

geom_line()  # Draw values as connected lines

geom_abline() # Make a line, add an intercept and a slope

geom_histogram() # Draw a histogram

# Line graph

ggplot(cars, aes(x=speed, y=dist)) + geom_point() + geom_line()

# Histogram

ggplot(cars) + geom_point(aes(x=speed, y=dist)) + geom_histogram( aes(x=speed))


#################################################################
## Exercises 
#################################################################

# 1. Plot with variables length and footsize from footsize.csv dataset. Use the
# symbol for plotting and draw the points in blues. (Hint = shape = 7)

library(readr)
footsize <- read_csv("footsize.csv")
str(footsize)

ggplot(footsize, aes(x=length, y=footsize))  + geom_point( shape=7,        color="blue",    size=3)   

# 2. PLease reload the "students.csv". Use the plyr package to calculate the median age 
# for each survey_time. Save the results in a list. 
# And create a plot with ggplot 2 package (size=2).

library(readr)
students <- read_csv("students.csv")
str(students)

median(students$age)

ggplot(students, aes(x=shoe_size, y=size))  + geom_point( shape='survey_time',        color='gender',    size=3)   
