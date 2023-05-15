
################################
## Exercise 2
##################################

## Fancy Data Types - The Factor


# Categorial data

my.factor <- factor( c("medium", "rare", "rare"), levels = c("rare", "medium", "well-done"))
my.factor

# We can transform the categories into numeric categories.
unclass(my.factor) 

# We can change levels to another

levels(my.factor)

levels(my.factor) <- c("rare", "not rare", "not rare")
my.factor

my.factor1 <- factor(c("A", "B"), levels = c("A", "B", "C"))
my.factor1

droplevels(my.factor1)


##############
## Matrix
###############

my.matrix <- matrix(
  c(1,2,1,1,2,2),    # the elements
  nrow = 3,         # number of rows
  ncol = 2,         # number of columns
  byrow = TRUE)     # fill the matrix by rows

my.matrix

################
## Vector and factor indexing
###########

# a vector
vector<- c("a", "b", "c")

# numeric index

vector[2]

# vector index
vector[c(2,3)]

# range index
vector[2:3]

# logical index
vector[c(FALSE, TRUE, FALSE)]

# Indexing by name
vector <- c("A", "B", "C")
names(vector) <- c("First", "Medium", "Last")
vector["First"]

matrix <- matrix( c(1,2,3,4), nrow = 2, ncol = 2)
dimnames(matrix) <-list( c("r1", "r2"), c("c1", "c2"))
matrix["r1", "c2"]


###################################
## Tasks
###################################

# Generate the following vector with blood groups: 
# "A", "B", "A", "AB", "0", "0", "0", "AB", "A"

blood <- c("A", "B", "A", "AB", "0", "0", "0", "AB", "A")


# Turn the vector into a factor (categories: "A", "B", "AB" and "0")

blood1 <- factor(blood, levels = c ("A", "B", "AB", "0") )
blood1

blood2 <- unclass(blood1)
blood2

# Generate the following matrix: 
# col1: 1,4,1,5   #col2:2,8,0,9  #col3: 3,3,3,3

my_matrix <- matrix(
  c(1,4,1,5, 2,8,0,9, 3,3,3,3),    # the elements
  nrow = 4,         # number of rows
  ncol = 3,         # number of columns
  byrow = FALSE)     # fill the matrix by rows

my_matrix

# Name rows and columns with their number ("first", "second", "third")

matrix <- matrix( c(1,4,1,5, 2,8,0,9, 3,3,3,3),    
                  nrow = 4,         
                  ncol = 3, byrow = FALSE)

dimnames(matrix) <-list( c("first", "second", "third", "fourth"), # rows
                         c("first", "second", "third"))           # columns

matrix

# Access the entry in row 4 and column 1

matrix[4, 1]

# Access the third row by name indexing

matrix["third",]

# Access all entries which are greater than 3

print(my_matrix>3)

