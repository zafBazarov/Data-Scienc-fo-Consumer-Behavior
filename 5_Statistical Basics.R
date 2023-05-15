

###############
## Statistical Basics in R
#####################################


# Average values

# a mean
mean(cars$speed) # The sum divided by the count

# a median
median(cars$speed) # The value that lies exactly in the
                    # middle of a data distribution

# a variance

var(cars$speed) # A variance describes the spread of a dataset

# a covariance

cov(cars) # the coviarance describes how to variables will change together

# a correlation

cor(cars)

#########################################
## Task 1

# Import footsize.csv and compute the mean and median footsize

footsize <- read.csv("footsize.csv")

mean(footsize$footsize) # Mean: 42.22372

median(footsize$footsize) # Median: 41.5253

################################
## Task 2 
# Describe the connection between car speed and car stop distances, footsize and foot length.

data(cars)
footsize <- read.csv("footsize.csv")

cor(cars$speed, cars$dist) # 0.8068949
# Result: High correlation! speed and dist(ance) have a high positive linear dependence.

cor(footsize$length, footsize$footsize) # 0.9633603
# Result: High correlation! length and footsize have a high positive linear dependence.
# It is almost perfectly linear.


################################
## Task 2 
# The mode is not implemented in R. Therefore, compute the mode of the speed from the cars 
# dataset by implementing the following algorithm. 

# Step1. Save the speed values in a vector speed
speed <- cars$speed

#Step 2. Save table of all unique values as tab.spead
tab.speed <- table(speed)

# Step 3. Save the speed names in speed.names
speed.names <- names(tab.speed)

# Step 4. Index the name of tab.speed, where tab.speed equals the max() of tab.speed

speed.names[tab.speed == max(tab.speed)]

# Hint: The mode is the value that appears most often in a set of data values


# Alternative but does not fulfill the task:
install.packages("DescTools")
library("DescTools")
mode(cars$speed)


