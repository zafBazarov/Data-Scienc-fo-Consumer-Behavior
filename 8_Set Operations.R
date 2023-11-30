######################################
## Set Operations

# Join data.frames and Set Operations

# Data

exam.summer <- data.frame(ranking1 = c ("A", "C", "D", "A", "B")) # combine values into a vector or list
exam.winter <- data.frame(ranking2 = LETTERS[1:5])

# The merge() function can be used to perform a join.

merge(exam.summer, exam.winter) #  that does not work because

# data

exam.summer <- data.frame("id" = 1:5,
                          "grades.x" = c("A","C","D","A","B"),
                          "lec.x" = "MACB",
                          stringsAsFactors = FALSE)

exam.winter <- data.frame("id" = 1:5,
                          "grades.y" = LETTERS[1:5], 
                          "lec.y" = "MACB",
                          stringsAsFactors = FALSE)

merge(exam.summer, exam.winter)

# match () computes the common elements between 2 vectors

match(exam.summer$grades.x, exam.winter$grades.y) # compares exam.summer the first

match(exam.winter$grades.y, exam.summer$grades.x ) # compares exam.winter the first and there is NA

# A bit intuitive than match() is %in% operator which determines if a value is on the other set..

exam.summer$grades.x %in% exam.winter$grades.y # all TRUE

exam.winter$grades.y %in% exam.summer$grades.x   # has FALSE

# replace values

exam.winter$grades.y[exam.winter$grades.y %in% "E"] <- "D"

# Compute intersect between x and y (values which are in both sets)
intersect(exam.summer$grades.x, exam.winter$grades.y)

# Compute the union between x and y (values which are in at least one set)
union(exam.summer$grades.x, exam.winter$grades.y)

# Return dupliactes of x as alogical vector

duplicated(exam.summer$grades.x)

# Return the unique values of x
unique(exam.summer$grades.x)


#############################
### Exercises
#####################################

