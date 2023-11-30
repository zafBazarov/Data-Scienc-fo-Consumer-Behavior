
###############################
## Data Preprocessing with plyr
############################

## Helpful function split()

# split (x, f) divides the data in x a list of data sets according to a factor f
# This works for vectors as well as for data frames

# Example:
ex <- data.frame(number = 1:10, group=factor(c("A", "B")))

ex.list <- split(ex, ex$group)

## Helpful function tapply()

# tapply(x, f, FUN) divides the data in x in a list of data sets according to a factor 
# f and applies the function FUN to all entries of the list.

# Note: tapply() is like split(), but additionally applies a function.

# Example: 
tapply(ex$number, ex$group, sum)

# In contrast to split(), in apply() the argument x cannot be an entire data frame, 
# so split() is better for converting data frames. 



### ddply function

# Instead of your own functions you can use built in functions or functions from
# other packages. 
# Two functions are predestined for this. 
# transform()  * modifies an existing data.frame.

ddply(cars, "speed", transform, mean.dist = mean(dist))

# summarise()   * creates a new condensed data frame

ddply(cars, "speed", summarise, mean.dist=mean(dist))

# Example

library(plyr)

foot <- read.csv("footsize.csv")
str(dataset)

# split
pieces <- split(foot, foot$gender)

# apply

pieces.transformed <- vector("list", length(pieces)) # declare a temporary list

for (i in 1:length(pieces)) { # iterate over the two sets male and female
  piece <- pieces[[i]]
  plot(piece$length, piece$footsize) # plot each set
  piece <- cbind(piece, rank=rank(piece$length, ties.method = "first"))
  pieces.transformed[[i]] <- piece
}

# combine 
pieces.transformed = do.call("rbind", pieces.transformed)

ddply (foot, "gender", transform, rank = rank(piece$length, ties.method = "first"))


######################################################
### Exercises
############################################################

# We are interested in the differences of our male and female consumer. PLease compute 
# the rank of the foot length for each consumer according to his or her gender.
# You also have to plot the different subsets. (Hint: A scatterplot is appropriate for this purpose)

#1. split() the footsize data into a list pieces containing male and females

foot_split <- split(foot, foot$gender)

#2. Make an empty pieces.transformed list using the input vector ("list", length(pieces)). 
# You will need it later.

foot.transformed <- vector("list", length(foot_split)) # declare a temporary list

#3. Iterate the following steps over each set (male and female) with a for-loop:

# 3.1 Declare a data.frame with piece <- pieces[[i]]. Plot the data

# for male genders
for (i in 1:length(foot_split)) { # iterate over the two sets male and female
  piece_m <- foot_split[[i]]
  plot(piece_m$length, piece_m$footsize) # plot each set
  piece_m <- cbind(piece_m, rank=rank(piece_m$length, ties.method = "first"))
  foot.transformed[[i]] <- piece_m
}

# for female genders
for (i in 2:length(foot_split)) { # iterate over the two sets male and female
  piece_f <- foot_split[[i]]
  plot(piece_f$length, piece_f$footsize) # plot each set
  piece_f <- cbind(piece_f, rank=rank(piece_f$length, ties.method = "first"))
  foot.transformed[[i]] <- piece_f
}

# Recombining everything with do.call() function. 

foot.transformed = do.call("rbind", foot.transformed)
