
################################
## Lists in R

# A list is a generic object containing other objects (like a "more flexible" vector)
funny.dog.names <- c("Winnie, the Poodle", "Bark Twain", "Ozzy Pawsborne")
random.numbers <- c(4,2,15,16,23,42)
coin.flips = c(TRUE, FALSE, FALSE, TRUE, TRUE)

stuff <- list(funny.dog.names, random.numbers, coin.flips, 7)
print(stuff)


# indexing the elements

stuff[3]

# indexing the elements of an element

stuff[[1]][3]

##################################
## Data Frames

# A data frame is a list of vectors of equal length
# As an example,  we load a built-in dataset from R into our workspace.

data(cars)
cars    # the cars data set is the example  of R.

# To check the contents of the data frame, we use the str() function

str(cars)

# the value retrieving ways 

cars[[1]]

cars["speed"]

cars$speed

# R has the head() and the tail|() functions to look at the data set at a glance

head(cars) # first few rows

tail(cars) # last few rows

# Nam,e the elements of a list, when you initialize the list, then you can access 
# the elements later by name.

beauty.contest <- list("dogs"=funny.dog.names, "rating"=coin.flips)

beauty.contest$dogs

# also it is possible to combine different index methods

cars[1:10, "speed"]

cars$dist[1:10]
