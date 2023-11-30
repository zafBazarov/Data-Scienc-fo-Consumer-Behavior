
###############################
## Data Preprocessing 
############################

# Sometimes you want to apply something multiple times on a dataset. 
# Fo this purpose we can use apply():

## apply(data, MARGIN, FUN, PARAMETER) 
# Margin - 1 for rows, 2 for columns,
# FUN = choose your function (call function without brackets)

# For instance to calculate the mean of the columns length and footsize (columns 2 and 3)

library(readr)

footsize <- read_csv("footsize.csv")

apply(footsize[,2:3],2,mean)

# or if we want to calculate the sum of the matrix we can use apply()

my_matrix <- matrix(1:30, nrow = 5, ncol = 6)

# Calculate the sum of each column
col_sums <- apply(my_matrix, 2, sum)
print(col_sums)


################################################################### 
### do.call function
##############################################################

# data entry
exam_winter <- data.frame(grades = c("A", "C", "D", "A", "B"), "id"=1:5, 
                          lec = "MACB", stringsAsFactors = FALSE)

exam_summer <- data.frame(grades = c("A", "B", "C", "D", "E"),
                          "id"=1:5, 
                          lec = "MACB", stringsAsFactors = FALSE)

exam_complete <- merge(exam_winter, exam_summer, by="id")

# do.call executes a function call and a list of arguments to be passed to it. 
# You can join data frames together that are stored in a list. 

example <- list(first=exam_complete [1, ],
                second=exam_complete [2, ],
                rest=exam_complete[-c(1:2), ])
do.call(rbind, example)                           # call rbind

# c() will not keep the 2 dimensional structure. 
# do.call(fun, args, quote = FALSE)

##########################################################
#### The way it fits together: Better data reading
##########################################################

# Automate the boring stuff with R.
# Suppose you have a lot of.csv files and you want to read and combine some values from them.
library(readr)

dataset.one = read.csv("1.csv")
dataset.two = read.csv("2.csv")
dataset.three = read.csv("3.csv")
dataset.four = read.csv("4.csv")

big = rbind(dataset.one, dataset.two, dataset.three, dataset.four)

data.list <- lapply(1:4, function(x) read.csv(paste(x, "csv", sep = ".")))

data <- do.call (rbind, data.list)

##########################################
# Additional Info: Sums in Arrays
################################################

# The functions colSums ()  and rowSums() calculate the sums of rows or columns
# in an 2-dimensional array.

A <- matrix(1:9, ncol = 3)

rowSums(A)   # calculate the sums of rows

colSums(A)    # calculate the sums of columns

# The function colMenas() and rowMeans() calculate the arithmetic means of rows 
# or columns in an 2-dimensional array.

rowMeans(A)

colMeans(A)

# Implementatuions rowSums()

my.rowSums <- function(x){apply (x, MARGIN = 1, sum)}


#################################################################
## Exercises 
############################################################

# Make a list with the variables a=1, b=2:5 and c=5:50. Apply the sum function 
# om each element of the list.

list_apply <- list (a=1, b=2:5, c=5:50)

output_supply <- sapply(list_apply, FUN=sum)

output_lapply <- lapply(list_apply, sum)





