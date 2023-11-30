###############
## Data frame and set operations
############################################

### Data frame
# Create a data.frame

data <- data.frame(nums=1:6)

# add a new column

data$new <- c(4,8,15,16,23,42) # this doesn't work for data frames with zero columns

# transform it

data$new <- log(data$new) *2

# delete a column

data$new <- NULL

# fill the data with random numbers or characters 
# sample (n)  generates a random permutation of the numbers from 1 to n

data$random.nums <- sample(6)

data$random.chars <- letters[sample(6)]




###########################
## Exercises

#1. Decalre a new data.frame called "exam.summer" and a column "ranking" with
# letters "A" "C" "D" "A" "B". 
# DEclare a second data.frame called "exam.winter" with a column "ranking" with
# the letters "A,B,C,D,E"

exam.summer <- data.frame(ranking = c ("A", "C", "D", "A", "B")) # combine values into a vector or list
exam.winter <- data.frame(ranking = LETTERS[1:5])

# 2. Combine them with c() function and check the class() of the new dataset.

exam_complite1 <- c(exam.summer, exam.winter)
class(exam_complite1)
# 3. Combine them with cbind() function and check the class() of the new dataset.

exam_complite2 <- cbind(exam.summer, exam.winter)  # Combine R Objects by Columns
class(exam_complite2)

# 4. Explain the difference between c() and cbind().

# c() -> combine values into a vector or list
# cbind -> Combine R Objects by Columns (if input is data.frame -> output: data.frame)
# rbind -> same as cbind but for Rows

###############################################